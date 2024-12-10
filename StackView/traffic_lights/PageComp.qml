import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Page {
    id: root
    property alias backgroundColor: back_fon.color
    property alias buttonTextRight: button_nav_right.text
    property alias buttonTextLeft: button_nav_left.text
    property string headerTitle: ""

    signal buttonClickedLeft()
    signal buttonClickedRight()

    background: Rectangle {
        id: back_fon
    }

    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            spacing: 10

            Button {
                id: backButton
                visible: root !== stack_view.initialItem
                text: "←"
                onClicked: stack_view.pop()
            }

            Label {
                text: root.headerTitle
                Layout.alignment: Qt.AlignCenter
            }
        }
    }

    Button {
        id: button_nav_left
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        onClicked: root.buttonClickedLeft()
    }

    Button {
        id: button_nav_right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        onClicked: root.buttonClickedRight()
    }
}
