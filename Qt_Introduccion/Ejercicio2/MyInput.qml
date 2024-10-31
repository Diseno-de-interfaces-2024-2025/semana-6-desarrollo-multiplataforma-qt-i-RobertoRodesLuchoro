import QtQuick
import QtQuick.Controls



TextField
{
    id: textField
    property bool type: false
    echoMode: type ? TextInput.Password : TextInput.Normal
        background: Rectangle{
             width: 100
             height: 25
             radius: 8
             border.width: 1
        }
    property string placeHolder: ""
}

