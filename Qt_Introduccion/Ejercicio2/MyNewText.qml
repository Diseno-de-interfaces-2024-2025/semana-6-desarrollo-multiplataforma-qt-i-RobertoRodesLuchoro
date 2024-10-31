import QtQuick

Text {
    id: _text
    text: qsTr("")
    font.pixelSize: 12

    states: [
        State {
            name: "State1"
            PropertyChanges {
                target: _text
                color: "#1cff00"
                text: qsTr("Credenciales válidas")
            }
        },
        State {
            name: "State2"
            PropertyChanges {
                target: _text
                color: "#ff4f00"
                text: qsTr("Contraseña incorrecta")
            }
        },
        State {
            name: "State3"
            PropertyChanges {
                target: _text
                color: "#ff0000"
                text: qsTr("Credenciales erróneas")
            }
        }
    ]
}

