import QtQuick 2.15
import QtQuick.Layouts 1.1
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 400
    height: 750
    title: 'Login_Page'
    background: Rectangle {
        color: 'white'
    }
    Item{
        anchors.fill: parent
        ColumnLayout{
            spacing: 20
            anchors.centerIn: parent
            TextField {
                id: username
                placeholderText: "Username"
                font.pixelSize: 16
                background: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 35
                    border.color: '#ababab'
                }
            }

            TextField {
                id: pass
                placeholderText: "Password"
                font.pixelSize: 16
                echoMode: TextInput.Password
                background: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 35
                    border.color: '#ababab'
                }
            }
            RowLayout{
                spacing: 10
                Button {
                    text: "Log In"
                    Layout.preferredWidth: username.width/2-5
                    font.pixelSize: 14
                }
                Button {
                    text: "Clear"
                    Layout.preferredWidth: username.width/2-5
                    font.pixelSize: 14
                    onClicked: {
                        pass.text = ""
                        username.text = ""
                    }
                }
            }
        }
    }

}
