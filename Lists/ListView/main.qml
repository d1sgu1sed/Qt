import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    id: wndw
    visible: true
    title: qsTr("Hello World")

    ListModel{
        id:my_model
        ListElement{ name:"Sasha"; surname:"Sanzhitova";message:"allo-allo"; time:"12:30"}
        ListElement{ name:"Platon"; surname:"Palochkin";message:"ale-ale"; time:"12:30"}
        ListElement{ name:"Matvey"; surname:"Shaferuk";message:"lele-lele"; time:"12:30"}
    }
    Page{
        id: page
        anchors.fill:parent
        Component{
            id:my_delegate
            MyDelegate{
                name:model.name
                surname:model.surname
                message: model.message
                time: model.time
                width:parent.width
                height:40
            }
        }

        ListView{
            id:my_list
            height: wndw.height / 1.2
            width: wndw.width / 1.2
            topMargin: 30
            spacing: 12
            anchors.horizontalCenter: parent.horizontalCenter
            model:my_model
            delegate:my_delegate
        }


        footer: PageFooter {
            onNewMessage: {
                var newMsg = {};
                newMsg.message = msg;
                newMsg.name = "Ivan";
                newMsg.surname = "Kichigin";
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }


    }

}
