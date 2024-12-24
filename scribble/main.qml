import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Scribble"

    Loader {
        id: pageLoader
        anchors.fill: parent
        source: "SplashScreen.qml"
    }
}
