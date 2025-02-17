import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Page with Folders"

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

                Rectangle { height: 60
                    width: 50
                    color: "#EFEFEF" }

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
                Rectangle { height: 60
                    width: 50
                    color: "#EFEFEF" }

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
                            pageLoader.source = "MainScreen.qml"
                        }
                    }

                    Text {
                        text: "Учеба"
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
                            pageLoader.source = "MainScreen.qml"
                        }
                    }

                    Text {
                        text: "Дом"
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
                            pageLoader.source = "MainScreen.qml"
                        }
                    }

                    Text {
                        text: "Проекты"
                        anchors.centerIn: parent
                        color: "white"
                        font.pixelSize: 16
                    }
                }
            }
        }
    }
}
