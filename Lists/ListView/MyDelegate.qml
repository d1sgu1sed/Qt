import QtQuick 2.15

Item {
    id:deleg
    property string name: "?"
    property string surname: "?"
    property string message: "?"
    property string time: "?"
    Rectangle{
        id:rect
        border.color:"darkgrey"
        radius:5
        anchors.fill:parent
        gradient:Gradient{
            GradientStop{position:0;color:"lightgray"}
            GradientStop{position:1;color:"white"}
        }
    }
    Row{
        id:row
        anchors.left:parent.left
        anchors.right: parent.right
        height:parent.height
        anchors.margins: 16
        spacing:6
        Column{
            Text{text: (name + " " + surname) == "Ivan Kichigin" ? "You" : name + " " + surname;
                color: "blue"
                anchors.verticalCenter:
                    row.verticalCenter}
            Text{ text:message;
                anchors.verticalCenter:
                    row.verticalCenter
                wrapMode: text.wrap
                }
        }
        Text{ text:time;
            anchors.right: row.right;
            anchors.verticalCenter: row.verticalCenter;
        }
    }
}
