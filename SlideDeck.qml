import Presentation 1.0
import Qt.labs.presentation 1.0
import QtQuick 2.13
import QtQuick.Controls 2.13
import "qrc:///"

Presentation {
    id: presentation

    anchors.fill: parent

    SlideCounter {
        visible: presentation.currentSlide != 0
        anchors {  left: introSlide.left; right: introSlide.right }

        Label {
            font.family: parent.font.family
            font.pixelSize: parent.font.pixelSize
            anchors { baseline: parent.baseline; horizontalCenter: parent.horizontalCenter }
            text: "%1 - Jesús Fernández".arg(new Date().toLocaleDateString(Qt.locale()))
        }
    }

    Clock {
        anchors {  left: undefined; right: introSlide.right }
    }

    Slide {
        id: introSlide
        Label {
            anchors.fill: parent
            textFormat: Text.PlainText
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            text: Constants.title
            font.pixelSize: introSlide.baseFontSize * 2
        }

        Label {
            text: "Jesús Fernández"
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: introSlide.baseFontSize
        }

        Label {
            text: new Date().toLocaleDateString(Qt.locale())
            anchors.bottom: parent.bottom
            font.pixelSize: introSlide.baseFontSize
        }
    }

    Slide {
        title: "Agenda"
        content: [
            " Estudios",
            " Trayectoria profesional",
            " ¿Preguntas?",
        ]
    }

    Slide {
        title: "Estudios"
        content: [
            "ITI Electrónica Industrial",
            "DAI (FP2)",
            "ITI Informática - Especialidad Sistemas",
        ]
        delayPoints: true
    }

    Slide {
        title: "Trayectoria Profesional - Inicios"
        content: [
            "Trabajos menores en Asturias"
        ]
    }

    WebSlide {
        title: "Panda Security"
        url: "https://www.pandasecurity.com/"
        delayPoints: true
    }

    YoutubeSlide {
        title: "Hewlett-Packard"
        video: "z3RkVkHBPBU"
    }

    Slide {
        title: "Gameloft"
        content: [
            "Equipo de Engine - Jet Engine 1 & 2:",
            " Minion Rush",
            " Asphalt 8",
            " Asphalt 9/Unite",
            " ...",
        ]
        delayPoints: true
    }


    YoutubeSlide {
        title: "Gameloft - Minion Rush"
        video: "E4HclOqb4D4"
    }

    YoutubeSlide {
        title: "Gameloft - Asphalt 8"
        video: "S1q7ItE--8s"
    }

    YoutubeSlide {
        title: "Gameloft - Asphalt 9/Unite"
        video: "ot63S91Ihwk"
    }

    WebSlide {
        title: "The Qt Company"
        url: "https://www.qt.io/"
    }

    YoutubeSlide {
        title: "Pix4D - Pix4Dscan"
        video: "dFKOC4gO50U"
    }

    YoutubeSlide {
        title: "EA - Madden 21 Stadia Port"
        video: "id1g0ixUuAQ"
    }

    YoutubeSlide {
        title: "EA - Madden 22"
        video: "99pKCOZ3vE0"
    }

    YoutubeSlide {
        title: "EA - Madden 23"
        video: "Qv6G_w8RUOo"
    }

    YoutubeSlide {
        title: "EA - Madden 24"
        video: "sVa0dMCGD7k"
    }

    YoutubeSlide {
        title: "Forgotten Empires - Age of Empires II: Definitive Edition"
        video: "ZOgBVR21pWg"
    }

    Slide {
        title: "¿Preguntas?"
        content: [
            "IRC 💬 jefernan @ #qt-labs (freenode)",
            "Twitter 🐦 @jsfdez",
            "E-Mail 📧 jesus.fernandez@qt.io",
        ]

        Label {
            font.pixelSize: introSlide.baseFontSize / 2
            anchors { bottom: parent.bottom; horizontalCenter: parent.horizontalCenter }
            text: "<a href=\"%1\">%1</a>".arg(Constants.url)
        }
    }
}
