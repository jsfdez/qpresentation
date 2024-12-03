import Presentation 1.0
import Qt.labs.presentation 1.0
import QtQuick 2.0

Slide {
    id: slide
    property alias url: web.url
    Web {
        id: web
    }
}
