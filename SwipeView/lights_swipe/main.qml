import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    SwipeView {
        id: view
        currentIndex: 0
        anchors.fill: parent
        Item {
            id: firstPage
            Rectangle {
                id: rect1
                width: parent.width
                height: parent.height
                color: "red"
                border.width: 1
                border.color: "black"
            }
        }

        Item {
            id: secondPage
            Rectangle {
                id: rect2
                width: parent.width
                height: parent.height
                color: "yellow"
                border.width: 1
                border.color: "black"
            }
        }

        Item {
            id: thirdPage
            Rectangle {
                id: rect3
                width: parent.width
                height: parent.height
                color: "green"
                border.width: 1
                border.color: "black"
            }
        }

    }

    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
