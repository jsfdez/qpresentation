#include <QtCore/qdebug.h>
#include <QtCore/qfile.h>
#include <QtCore/qcoreapplication.h>
#include <QtQuick/qquickwindow.h>
#include <QtCore/qlocale.h>
#include <QtCore/qstring.h>
#include <QtGui/qguiapplication.h>
#include <QtQml/qjsvalue.h>
#include <QtQml/qqmlapplicationengine.h>
#include <QtWebEngineQuick/qtwebenginequickglobal.h>

int main(int argc, char **argv)
{
    QLocale::setDefault(QLocale::Spanish);
    QCoreApplication::setAttribute(Qt::AA_ShareOpenGLContexts);
    QQuickWindow::setGraphicsApi(QSGRendererInterface::OpenGLRhi);
    QtWebEngineQuick::initialize();
    QGuiApplication app(argc, argv);
    app.setApplicationName("");
    app.setOrganizationName("jsfdez");

    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:///imports");

    if (QFile::exists(":/imports/Qt.labs.presentation/qmldir"))
        qDebug() << "File exists";

    qmlRegisterSingletonType("Presentation", 1, 0, "Constants",
                             [](QQmlEngine *engine, QJSEngine *scriptEngine)
    {
        Q_UNUSED(engine)
        auto singleton = scriptEngine->newObject();

        auto url = QStringLiteral("https://github.com/jsfdez/qpresentation/tree/%1").arg(BRANCH);

        singleton.setProperty(QStringLiteral("title"), qGuiApp->applicationName());
        singleton.setProperty(QStringLiteral("url"), url);
        return singleton;
    });
    engine.load(QUrl("qrc:///qml/main.qml"));
    return app.exec();
}
