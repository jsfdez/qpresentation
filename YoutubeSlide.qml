import Presentation 1.0
import Qt.labs.presentation 1.0
import QtQuick 2.0

Slide {
    id: slide
    property string video: "";
    property alias url: web.url
    Web {
        id: web
        property string youtubeUrl: "https://www.youtube.com/embed/" + video + "?rel=0&modestbranding=1&autohide=1&mute=1&showinfo=0&controls=1&autoplay=1&loop=1&playlist=" + video
        url: slide.parent.slides[slide.parent.currentSlide] === slide ? youtubeUrl : ""
    }
}
