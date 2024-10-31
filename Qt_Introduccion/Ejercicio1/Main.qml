import QtQuick
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyRectangle {
        id: myRectangle
        x: 332
        y: 155
        activado: _switch.checked
    }

    Switch {
        id: _switch
        x: 131
        y: 252
        text: qsTr("Switch")
    }
}
