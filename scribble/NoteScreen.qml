import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 360
    height: 640
    color: "white"

    Column {
        spacing: 10
        anchors.fill: parent
        anchors.margins: 10
        anchors.verticalCenter: parent.verticalCenter

        TextArea {
            id: textNote
            placeholderText: "Введите текст заметки..."
            width: parent.width
            height: 200
        }

        Canvas {
            id: drawingCanvas
            width: parent.width
            height: 200
            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "gray"
                border.width: 1
            }

            onPaint: {
                var ctx = getContext("2d")
                ctx.clearRect(0, 0, width, height)
                ctx.fillStyle = "white"
                ctx.fillRect(0, 0, width, height)
            }

            MouseArea {
                anchors.fill: parent
                onPressed: {
                    var ctx = drawingCanvas.getContext("2d")
                    ctx.beginPath()
                    ctx.moveTo(mouse.x, mouse.y)
                }
                onPositionChanged: {
                    var ctx = drawingCanvas.getContext("2d")
                    ctx.lineTo(mouse.x, mouse.y)
                    ctx.stroke()
                }
            }
        }

        Row {
            spacing: 20
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                text: "📷"
                onClicked: console.log("Камера нажата")
                background: Rectangle { color: "#F8A644"
                    width: 45
                    height: 45}
                font.pixelSize: 30
            }

            Button {
                text: "🖌"
                onClicked: console.log("Карандаш выбран")
                background: Rectangle { color: "#F8A644"
                    width: 45
                    height: 45}
                font.pixelSize: 30
            }

            Button {
                text: "📊"
                onClicked: console.log("Таблица выбрана")
                background: Rectangle { color: "#F8A644"
                    width: 45
                    height: 45}
                font.pixelSize: 30
            }
        }

        Button {
            text: "Save and exit"
            onClicked: {
                pageLoader.source = "MainScreen.qml"
            }
            background: Rectangle { color: "#F8A644"
                width: 100
                height: 30}
        }
    }
}
