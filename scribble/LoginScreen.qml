import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 360
    height: 640
    color: "white"

    Column {
        spacing: 20
        anchors.centerIn: parent
        Row {
            Text {
                text: "Scribble!"
                font.pointSize: 30
                font.family: "Arial"
                font.styleName: "Bold"
                color: "#F8A644"
            }

            Image {
                id: logo
                source: "assets/images/logo.png"
                width: 50
                height: 50
            }
        }

        TextField {
            id: loginField
            placeholderText: "Login"
            width: 220
        }

        TextField {
            id: passwordField
            placeholderText: "Password"
            echoMode: TextInput.Password
            width: 220
        }

        Row {
            spacing: 20
            Button {
                text: "Log in"
                width: 100
                height: 40
                background: Rectangle { color: "#F8A644" }
                font.pixelSize: 14
                onClicked: {
                    pageLoader.source = "MainScreen.qml"
                }
            }
            Button {
                text: "Register"
                width: 100
                height: 40
                background: Rectangle { color: "#F8A644" }
                font.pixelSize: 14
                onClicked: {
                    pageLoader.source = "RegisterScreen.qml"
                }
            }
        }
    }
}
