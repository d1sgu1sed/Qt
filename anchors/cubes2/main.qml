import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640; height: 480; visible: true; title: qsTr("Face Figure")
    id: win

    Item {
        id: root
        anchors.fill: parent

        Rectangle_comp {
            id: head
            rectColor: "lightgrey"
            anchors.top: parent.top
            anchors.centerIn: parent
            anchors.margins: 10
            rectHeight: 200
            rectWidth: 200
        }

        Rectangle_comp {
            id: leftEye
            rectColor: "black"
            anchors.top: head.top
            anchors.left: head.left
            anchors.leftMargin: 40
            anchors.topMargin: 50
            rectHeight: 20
            rectWidth: 20
        }

        Rectangle_comp {
            id: rightEye
            rectColor: "black"
            anchors.top: head.top
            anchors.right: head.right
            anchors.rightMargin: 40
            anchors.topMargin: 50
            rectHeight: 20
            rectWidth: 20
        }

        Rectangle_comp {
            id: mouth
            rectColor: "red"
            anchors.top: head.top
            anchors.horizontalCenter: head.horizontalCenter
            anchors.topMargin: 120
            rectHeight: 20
            rectWidth: 100
        }
    }
}
