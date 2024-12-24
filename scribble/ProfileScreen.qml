import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 360
    height: 640
    color: "white"

    Column {
        spacing: 20
        anchors.centerIn: parent

        Image {
            id: avatar
            source: "assets/images/user_icon.png"
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextField {
            id: usernameField
            placeholderText: "Change your name"
            text: "User Name"
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
            height: 50
            font.pixelSize: 20
        }

        TextField {
            id: emailField
            placeholderText: "Change your email"
            text: "user@example.com"
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
            height: 50
            font.pixelSize: 20
        }

        TextField {
            id: passwordField
            placeholderText: "Change your password"
            text: "Hard password"
            echoMode: TextInput.Password
            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
            height: 50
            font.pixelSize: 20
        }

        Button {
            text: "Save"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                console.log("Username: " + usernameField.text)
                console.log("Email: " + emailField.text)
                pageLoader.source = "MainScreen.qml"
            }
        }
    }
}
