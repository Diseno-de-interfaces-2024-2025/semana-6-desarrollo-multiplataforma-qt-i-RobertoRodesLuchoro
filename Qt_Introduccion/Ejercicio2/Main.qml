import QtQuick
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Ventana")

    MyInput {
        id: myInput
        x: 270
        y: 103
        width: 95
        height: 22
        placeholderText: "Usuario"
        placeHolder: "Usuario"
    }

    MyInput {
        id: myInput1
        x: 270
        y: 177
        width: 95
        height: 22
        placeholderText: "Contrseña"
        placeHolder: "Contraseña"
        echoMode: TextInput.Password
    }

    Button {
        id: button
        x: 270
        y: 244
        text: "Aceptar"
        background: Rectangle {
            color: "#caffce"
            implicitWidth: 100
            implicitHeight: 30
            border.color: "#26282a"
            border.width: 1
            radius: 12
        }
    }

        Connections {
            target: button
            onClicked: {
            if (myInput.text === "admin" && myInput1.text === "1234") {
                myNewText.state = "State1"
            } else if (myInput.text !== "admin" && myInput1.text !== "1234") {
                myNewText.state = "State3"
            } else {
                myNewText.state = "State2"
            }
        }
    }

    MyNewText {
        id: myNewText
        x: 270
        y: 216
    }
}
