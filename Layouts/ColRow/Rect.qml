import QtQuick 2.15

Rectangle {
    id: rect
    width: 300
    height: 100
    color: Qt.rgba(Math.random(), Math.random(), Math.random(), 0.7)
    border.width: 1
    border.color: "black" // Укажите цвет границы

    Text {
        text: "My color: " + rect.color.toString()
        anchors.centerIn: parent
        font.pixelSize: 24
    }

    property alias rectColor: rect.color
    property alias rectWidth: rect.width
    property alias rectHeight: rect.height
    property alias rectBorderColor: rect.border.color
}
