import QtQuick

Rectangle {
    id: rectangle
    x: 220
    y: 140
    width: 200
    height: 200
    color: "#ff0000"

    states: [
        State {
            name: "activado"
            when: rectangle.activado
            PropertyChanges {
                target: rectangle
                color: "#0011ff"
            }
        }
    ]

    transitions: [
        Transition {
            id: transition

            PropertyAnimation {
                target: rectangle
                property: "color"
                duration: 1000
            }

            from: "*"
            to: "activado"

        }
    ]

    property bool activado: false
}

