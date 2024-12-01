import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    width: 640; height: 480; visible: true; title: qsTr("Hello World")
    id: win

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        // Header Section
        Rectangle {
            id: header
            color: "grey"
            Layout.fillWidth: true
            Layout.preferredHeight: 100
            Text {
                text: "Header"
                font.pixelSize: 35
                anchors.centerIn: parent
            }
        }

        // Main Section with GridLayout
        GridLayout {
            id: mainGrid
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height - header.height - 120
            columns: 2
            rowSpacing: 10
            columnSpacing: 10

            Rectangle {
                color: "red"
                Layout.row: 0
                Layout.column: 0
                Layout.fillWidth: true
                Layout.fillHeight: true
                Text {
                    text: "1"
                    font.pixelSize: 25
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                color: "green"
                Layout.row: 0
                Layout.column: 1
                Layout.fillWidth: true
                Layout.fillHeight: true
                Text {
                    text: "2"
                    font.pixelSize: 25
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                color: "blue"
                Layout.row: 1
                Layout.column: 0
                Layout.fillWidth: true
                Layout.fillHeight: true
                Text {
                    text: "3"
                    font.pixelSize: 25
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                color: "yellow"
                Layout.row: 1
                Layout.column: 1
                Layout.fillWidth: true
                Layout.fillHeight: true
                Text {
                    text: "4"
                    font.pixelSize: 25
                    anchors.centerIn: parent
                }
            }
        }

        RowLayout {
            // Layout.fillWidth: true
            Layout.preferredHeight: 100
            spacing: 10

            Rectangle {
                id: footer_el1
                color: "grey"
                Layout.fillWidth: true
                Text {
                    text: "1"
                    font.pixelSize: 25
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id: footer_el2
                color: "grey"
                Layout.fillWidth: true
                Text {
                    text: "2"
                    font.pixelSize: 25
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id: footer_el3
                color: "grey"
                Layout.fillWidth: true
                Text {
                    text: "3"
                    font.pixelSize: 25
                    anchors.centerIn: parent
                }
            }
        }
    }
}
