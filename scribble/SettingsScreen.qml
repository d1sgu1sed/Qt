import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 360
    height: 640
    color: "white"

    Column {
        spacing: 20
        anchors.fill: parent
        anchors.margins: 20

        Text {
            text: "Settings"
            font.pixelSize: 24
            font.bold: true
            color: "#F8A644"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            spacing: 10
            Text {
                text: "Enable Notifications:"
                font.pixelSize: 16
            }
            Switch {
                id: notificationsSwitch
            }
        }

        Row {
            spacing: 10
            Text {
                text: "Dark Mode:"
                font.pixelSize: 16
            }
            Switch {
                id: darkModeSwitch
            }
        }

        Button {
            text: "Log out"
            onClicked: {
                pageLoader.source = "LoginScreen.qml"
            }
            background: Rectangle { color: "white" }
            font.pixelSize: 18
        }

        Button {
            text: "Back"
            onClicked: pageLoader.source = "MainScreen.qml"
            background: Rectangle { color: "#F8A644" }
            font.pixelSize: 16
            width: 100
            height: 40
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
