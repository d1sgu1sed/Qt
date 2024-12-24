import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 360
    height: 640
    color: "white"

    Image {
        id: logo
        source: "assets/images/logo.png"
        width: 50
        height: 50
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 15
    }

    Button {
        text: "≡"
        onClicked: sideMenu.open()
        background: Rectangle { color: "white" }
        font.pixelSize: 45
        anchors.right: parent.right
        anchors.top: parent.top
    }

    Drawer {
        id: sideMenu
        width: parent.width * 0.75
        height: parent.height
        edge: Qt.RightEdge

        Column {
            spacing: 20
            anchors.margins: 20

            Rectangle {
                height: 60
                width: 50
                color: "#EFEFEF"
            }

            Button {
                text: "Profile"
                onClicked: {
                    pageLoader.source = "ProfileScreen.qml"
                    sideMenu.close()
                }
                background: Rectangle { color: "#EFEFEF" }
                font.pixelSize: 25
            }

            Button {
                text: "Home"
                onClicked: {
                    pageLoader.source = "MainScreen.qml"
                    sideMenu.close()
                }
                background: Rectangle { color: "#EFEFEF" }
                font.pixelSize: 25
            }
            Button {
                text: "Folders"
                onClicked: {
                    pageLoader.source = "FoldersScreen.qml"
                    sideMenu.close()
                }
                background: Rectangle { color: "#EFEFEF" }
                font.pixelSize: 25
            }
            Button {
                text: "Settings"
                onClicked: {
                    pageLoader.source = "SettingsScreen.qml"
                    sideMenu.close()
                }
                background: Rectangle { color: "#EFEFEF" }
                font.pixelSize: 25
            }

            Rectangle {
                height: 60
                width: 50
                color: "#EFEFEF"
            }

            Button {
                text: "Log out"
                onClicked: {
                    pageLoader.source = "LoginScreen.qml"
                }
                background: Rectangle { color: "#EFEFEF" }
                font.pixelSize: 25
            }
        }
    }

    Column {
        spacing: 20
        anchors.fill: parent
        anchors.margins: 20
        anchors.topMargin: 70

        Item {
            width: parent.width - 40
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                width: parent.width
                height: parent.height
                radius: 10
                color: "#F8A644"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        pageLoader.source = "NoteScreen.qml"
                    }
                }

                Text {
                    text: "Надо купить грибы и сыр на ужин,
            сделаю запеканку..."
                    anchors.centerIn: parent
                    color: "white"
                    font.pixelSize: 16
                }
            }
        }

        Item {
            width: parent.width - 40
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                width: parent.width
                height: parent.height
                radius: 10
                color: "#F8A644"
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        pageLoader.source = "NoteScreen.qml"
                    }
                }

                Text {
                    text: "Сделать дз!"
                    anchors.centerIn: parent
                    color: "white"
                    font.pixelSize: 16
                }
            }
        }
    }

    Item {
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20

        Rectangle {
            width: parent.width
            height: parent.height
            radius: parent.width / 2
            color: "#F8A644"
            border.color: "white"
            border.width: 2

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    pageLoader.source = "NoteScreen.qml"
                }
            }

            Text {
                text: "+"
                anchors.centerIn: parent
                color: "white"
                font.pixelSize: 40
                font.bold: true
            }
        }
    }
}
