import QtQuick 2.15

Rectangle {
    width: 360
    height: 640
    color: "white"

    Image {
        id: logo
        source: "assets/images/logo.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        opacity: 0.5

        SequentialAnimation on opacity {
            loops: Animation.Infinite
            NumberAnimation { from: 0.5; to: 1.0; duration: 1000 }
            NumberAnimation { from: 1.0; to: 0.5; duration: 1000 }
        }
    }

    Timer {
        interval: 3000
        running: true
        repeat: false
        onTriggered: {
            pageLoader.source = "LoginScreen.qml"
        }
    }
}
