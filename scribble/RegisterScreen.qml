import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 360
    height: 640
    color: "white"

    Rectangle {
        id: avatarCircle
        width: 100
        height: 100
        radius: 50
        color: "white"
        border.color: "#F8A644"
        border.width: 3
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 50

        Image {
            id: avatarIcon
            source: "assets/images/user_icon.png"
            anchors.centerIn: parent
            width: 70
            height: 70
            fillMode: Image.PreserveAspectFit
        }
    }

    Column {
        spacing: 20
        width: parent.width * 0.9
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: avatarCircle.bottom
        anchors.topMargin: 30

        TextField {
            id: emailField
            placeholderText: "Email"
            font.pixelSize: 16
            width: 310
        }

        TextField {
            id: loginField
            placeholderText: "Login"
            font.pixelSize: 16
            width: 310
        }

        TextField {
            id: passwordField
            placeholderText: "Password"
            echoMode: TextInput.Password
            font.pixelSize: 16
            width: 310
        }

        TextField {
            id: dobField
            placeholderText: "Date of Birth (YYYY-MM-DD)"
            font.pixelSize: 16
            inputMethodHints: Qt.ImhDate
            width: 310
        }

        Button {
            text: "Register"
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width * 0.6
            height: 30
            background: Rectangle { color: "#F8A644" }

            onClicked: {
                console.log("Email: " + emailField.text)
                console.log("Login: " + loginField.text)
                console.log("Password: " + passwordField.text)
                console.log("Date of Birth: " + dobField.text)
                pageLoader.source = "MainScreen.qml"
            }
        }
    }
}
