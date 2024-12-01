import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640; height: 480; visible: true; title: qsTr("Hello World")
    id: win

    Item {
        id: root
        anchors.fill: parent

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
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    headerText.customText = "Footer 1 Clicked";
                    mainText.customText = "Content for Footer 1";
                    setFooterTextOpacity(footer_el1);
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
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    headerText.customText = "Footer 2 Clicked";
                    mainText.customText = "Content for Footer 2";
                    setFooterTextOpacity(footer_el2);
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
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    headerText.customText = "Footer 3 Clicked";
                    mainText.customText = "Content for Footer 3";
                    setFooterTextOpacity(footer_el3);
                }
            }
        }
    }

    function setFooterTextOpacity(activeFooter) {
        footerText1.opacity = activeFooter === footer_el1 ? 1 : 0.3;
        footerText2.opacity = activeFooter === footer_el2 ? 1 : 0.3;
        footerText3.opacity = activeFooter === footer_el3 ? 1 : 0.3;
    }
}
