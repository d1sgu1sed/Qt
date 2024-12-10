import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: win
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        id: root
        anchors.fill: parent

        // Указание состояния на уровне Item
        state: "default"

        Rect {
            id: header
            rectColor: "grey"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.margins: 10
            rectHeight: 100
            rectWidth: parent.width - 20
            Txt {
                id: headerText
                customText: "Header"
                fontSize: 35
            }
            Rectangle {
                id: backButton
                color: "lightgrey"
                width: 80
                height: 40
                radius: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                visible: root.state !== "default"
                Txt {
                    customText: "← Back"
                    fontSize: 20
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        root.state = "default";
                    }
                }
            }
        }

        Rect {
            id: main
            border.width: 1
            anchors.centerIn: parent
            rectHeight: parent.height - header.height - footer_el1.height - 50
            rectWidth: parent.width - 20
            Txt {
                id: mainText
                customText: "Main"
                fontSize: 35
            }
        }

        Rect {
            id: footer_el1
            rectColor: "grey"
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.margins: 10
            rectHeight: 100
            rectWidth: parent.width / 3 - 20
            Txt {
                id: footerText1
                customText: "1"
                fontSize: 25
                opacity: root.state === "footer1" ? 1 : 0.3
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    root.state = "footer1";
                }
            }
        }

        Rect {
            id: footer_el2
            rectColor: "grey"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.margins: 10
            rectHeight: 100
            rectWidth: parent.width / 3 - 20
            Txt {
                id: footerText2
                customText: "2"
                fontSize: 25
                opacity: root.state === "footer2" ? 1 : 0.3
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    root.state = "footer2";
                }
            }
        }

        Rect {
            id: footer_el3
            rectColor: "grey"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.margins: 10
            rectHeight: 100
            rectWidth: parent.width / 3 - 20
            Txt {
                id: footerText3
                customText: "3"
                fontSize: 25
                opacity: root.state === "footer3" ? 1 : 0.3
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    root.state = "footer3";
                }
            }
        }

        states: [
            State {
                name: "default"
                PropertyChanges { target: headerText; customText: "Header" }
                PropertyChanges { target: mainText; customText: "Main" }
                PropertyChanges { target: footerText1; opacity: 0.3 }
                PropertyChanges { target: footerText2; opacity: 0.3 }
                PropertyChanges { target: footerText3; opacity: 0.3 }
            },
            State {
                name: "footer1"
                PropertyChanges { target: headerText; customText: "Footer 1 Clicked" }
                PropertyChanges { target: mainText; customText: "Content for Footer 1" }
                PropertyChanges { target: footerText1; opacity: 1 }
                PropertyChanges { target: footerText2; opacity: 0.3 }
                PropertyChanges { target: footerText3; opacity: 0.3 }
            },
            State {
                name: "footer2"
                PropertyChanges { target: headerText; customText: "Footer 2 Clicked" }
                PropertyChanges { target: mainText; customText: "Content for Footer 2" }
                PropertyChanges { target: footerText1; opacity: 0.3 }
                PropertyChanges { target: footerText2; opacity: 1 }
                PropertyChanges { target: footerText3; opacity: 0.3 }
            },
            State {
                name: "footer3"
                PropertyChanges { target: headerText; customText: "Footer 3 Clicked" }
                PropertyChanges { target: mainText; customText: "Content for Footer 3" }
                PropertyChanges { target: footerText1; opacity: 0.3 }
                PropertyChanges { target: footerText2; opacity: 0.3 }
                PropertyChanges { target: footerText3; opacity: 1 }
            }
        ]

        transitions: [
            Transition {
                from: "*"
                to: "*"
                reversible: true
                NumberAnimation { properties: "opacity"; duration: 300 }
                NumberAnimation { target: headerText; properties: "customText"; duration: 300 }
                NumberAnimation { target: mainText; properties: "customText"; duration: 300 }
            }
        ]
    }
}
