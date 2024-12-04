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
            " Inicios",
            " Formación",
            "  Estudios",
            "  Habilidades",
            " Trayectoria profesional",
            " Consejos",
            "  ¿Cómo empezar?",
            "  Entrevista",
            "  Trabajar",
            "  Consejos Generales",
            " ¿Preguntas?",
        ]
    }

    WebSlide {
        title: "Inicios"
        url: "https://es.wikipedia.org/wiki/Sinclair_ZX_Spectrum#Sinclair_ZX_Spectrum_+128"
    }

//#region Formación
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
        title: "Habilidades"
        content: [
            "Experto en C++ (20+ años)",
            "Experto en C (5+ años)",
            "Colaborador y experto en Qt",
        ]
        delayPoints: true
    }
//#endregion

//#region Trayectoria Profesional
    Slide {
        title: "Trayectoria Profesional - Inicios"
        content: [
            "Trabajos menores en Asturias"
        ]
    }

    WebSlide {
        title: "Panda Security"
        url: "https://www.pandasecurity.com/"
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
// #endregion

// #region Consejos
    Slide {
        title: "Consejos - ¿Cómo empezar?"
        content: [
            " Disfrutar de lo que haces",
            " Colaborar",
            " Intentar siempre mejorar",
            "  ¿He escrito el código más limpio que he podido?",
            "   Intenta no repetirte",
            "   Intenta no usar StackOverflow",
            "  ¿He usado las mejores prácticas que conozco?",
            "  ¿He usado funciones que desconocia?",
            " Escribe siempre en Inglés",
        ]
        delayPoints: true
    }

    Slide {
        title: "Consejos - Entrevista"
        content: [
            " ¿Qué se de la empresa?",
            " ¿Qué se de la tecnología?",
            " ¿Qué se de la persona que me va a entrevistar?",
            " Analiza a tu entrevistador",
            "  ¿Va a dejarme preguntar? Aprovéchate",
            " No te pongas nerviosos",
        ]
        delayPoints: true
    }

    Slide {
        title: "Consejos - Trabajar"
        content: [
            " Intenta aprender lo máximo posible en cada trabajo",
            " Si tienes tareas repetitivas, intenta automatizarlas",
            " Si identificas a un compañero que sabe mucho, intenta aprender de él",
            " Si identificas a un compañero que no sae mucho, intenta ayudarle",
            " Vas a tener que trabajar 8 horas, saca el máximo rendimiento de ellas",
            " Si no te gusta lo que haces, cambia",
            "  Intenta quedar bien con todos tus compañeros, es posible que os volvais a encontrar",
        ]
        delayPoints: true
    }

    Slide {
        title: "Consejos Generales"
        content: [
            " APRENDE INGLÉS",
            " Guarda todo lo que hagas (aprende a usar Git correctamente)",
            " Graba todo lo que hagas",
            "  Si no lo grabas, no lo has hecho",
            " Toma nota de todo lo que hagas (usa ObsidianMD, Notion, ...)",
            " Haz trampas siempre que no te las hagas a tí mismo",
            " Haz conexiones con la gente",
            " Pásalo bien",
        ]
        delayPoints: true
    }

// #endregion

    Slide {
        title: "Fin"
        centeredText: "Gracias por escucharme"
    }

    ImageSlide {
        title: "¿Preguntas?"
        imageSource: "qrc:///linkedin.png"

        Label {
            font.pixelSize: introSlide.baseFontSize / 2
            anchors { bottom: parent.bottom; horizontalCenter: parent.horizontalCenter }
            text: "<a href=\"%1\">%1</a>".arg(Constants.url)
        }
    }
}
