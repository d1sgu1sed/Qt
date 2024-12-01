import QtQuick 2.15

Text {
    id: my_text
    property alias customText: my_text.text
    property alias fontSize: my_text.font.pointSize
    // anchors.centerIn: parent
    // text: customText
    // font.pointSize: fontSize
}
