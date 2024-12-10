import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")

    property int defMargin: 10

    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: startPage
    }

    Page {
        id: startPage
        background: Rectangle {
            color: "lightblue"
        }
        Column {
            anchors.centerIn: parent
            spacing: 20

            Image {
                source: "logo.png" // Укажите путь к логотипу задачи
                width: 100
                height: 100
                fillMode: Image.PreserveAspectFit
            }

            Button {
                text: "Start"
                onClicked: stack_view.push(page1)
            }
        }
    }

    PageComp {
        id: page1
        backgroundColor: "red"
        headerTitle: "Page 1"
        buttonTextLeft: "To Green"
        buttonTextRight: "To Yellow"
        onButtonClickedLeft: {
            stack_view.push(page3)
        }
        onButtonClickedRight: {
            stack_view.push(page2)
        }
    }

    PageComp {
        id: page2
        visible: false
        backgroundColor: "yellow"
        headerTitle: "Page 2"
        buttonTextLeft: "To Red"
        buttonTextRight: "To Green"
        onButtonClickedLeft: {
            stack_view.pop()
        }
        onButtonClickedRight: {
            stack_view.push(page3)
        }
    }

    PageComp {
        id: page3
        visible: false
        backgroundColor: "green"
        headerTitle: "Page 3"
        buttonTextLeft: "To Yellow"
        buttonTextRight: "To Red"
        onButtonClickedLeft: {
            stack_view.push(page2)
        }
        onButtonClickedRight: {
            stack_view.pop()
        }
    }
}
