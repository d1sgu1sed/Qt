import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640; height: 480; visible: true; title: qsTr("Hello World")
    id:win
    Item{
        id: root
        anchors.fill: parent
        Rectangle_comp{
            id: header
            rectColor: "grey"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.margins:10
            rectHeight: 100
            rectWidth: parent.width - 20
            Text_comp{
                customText: "Header"
                fontSize: 35
            }
        }

        Rectangle_comp{
            id: main
            border.width: 1
            anchors.centerIn: parent
            rectHeight: parent.height - header.height - footer_el1.height - 50
            rectWidth: parent.width - 20
            Text_comp{
                customText: "Main"
                fontSize: 35
            }
        }

        Rectangle_comp{
            id: footer_el1
            rectColor: "grey"
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.margins:10
            rectHeight: 100
            rectWidth: parent.width / 3 - 20
            Text_comp{
                customText: "1"
                fontSize: 25
            }
        }

        Rectangle_comp{
            id: footer_el2
            rectColor: "grey"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.margins:10
            rectHeight: 100
            rectWidth: parent.width / 3 - 20
            Text_comp{
                customText: "2"
                fontSize: 25
            }
        }

        Rectangle_comp{
            id: footer_el3
            rectColor: "grey"
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.margins:10
            rectHeight: 100
            rectWidth: parent.width / 3 - 20
            Text_comp{
                customText: "3"
                fontSize: 25
            }
        }
    }
}
