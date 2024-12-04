import Presentation 1.0
import Qt.labs.presentation 1.0
import QtQuick 2.0

Slide {
    id: slide
    property alias imageSource: image.source
    Image {
        id: image
        fillMode: Image.PreserveAspectFit
        anchors.fill: parent
    }
}
