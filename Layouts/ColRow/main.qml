import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 900
    height: 320

    Column {
        spacing: 10
        Row {
            spacing: 10

            Rect {
                id: rectangleComponent_1
            }

            Rect {
                id: rectangleComponent_4
            }
            Rect {
                id: rectangleComponent_5
            }
        }
        Rect {
            id: rectangleComponent_2
        }
        Rect {
            id: rectangleComponent_3
        }

    }
}
