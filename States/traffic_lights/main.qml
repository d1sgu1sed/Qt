import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 200
    height: 600
    title: "Светофор"

    Rectangle {
        id: trafficLight
        width: 100
        height: 300
        anchors.centerIn: parent
        color: "black"
        radius: 10
        state: "stop"

        Rectangle {
            id: rect_red
            width: parent.width - 20
            height: parent.width - 20
            radius: width / 2
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 10
            color: "grey"
        }

        Rectangle {
            id: rect_yellow
            width: parent.width - 20
            height: parent.width - 20
            radius: width / 2
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "grey"
        }

        Rectangle {
            id: rect_green
            width: parent.width - 20
            height: parent.width - 20
            radius: width / 2
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            color: "grey"
        }

        // Состояния
        states: [
            State {
                name: "stop"
                PropertyChanges { target: rect_red; color: "red" }
                PropertyChanges { target: rect_yellow; color: "grey" }
                PropertyChanges { target: rect_green; color: "grey" }
            },
            State {
                name: "caution"
                PropertyChanges { target: rect_red; color: "grey" }
                PropertyChanges { target: rect_yellow; color: "yellow" }
                PropertyChanges { target: rect_green; color: "grey" }
            },
            State {
                name: "go"
                PropertyChanges { target: rect_red; color: "grey" }
                PropertyChanges { target: rect_yellow; color: "grey" }
                PropertyChanges { target: rect_green; color: "green" }
            }
        ]
        transitions: [
            Transition {
                from: "stop"
                to: "caution"
                SequentialAnimation {
                    NumberAnimation { target: rect_red; property: "opacity"; to: 0; duration: 500 }
                    NumberAnimation { target: rect_yellow; property: "opacity"; from: 0; to: 1; duration: 500 }
                }
            },
            Transition {
                from: "caution"
                to: "go"
                SequentialAnimation {
                    NumberAnimation { target: rect_yellow; property: "opacity"; to: 0; duration: 500 }
                    NumberAnimation { target: rect_green; property: "opacity"; from: 0; to: 1; duration: 500 }
                }
            },
            Transition {
                from: "go"
                to: "stop"
                SequentialAnimation {
                    NumberAnimation { target: rect_green; property: "opacity"; to: 0; duration: 500 }
                    NumberAnimation { target: rect_red; property: "opacity"; from: 0; to: 1; duration: 500 }
                }
            }
        ]

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (parent.state === "stop") {
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }
    }
}
