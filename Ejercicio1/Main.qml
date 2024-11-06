import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Task 6")

    //roberto: dos formas de hacer el ejercicio o con RowLayout o con Anchors
    //roberto: yo lo he ehcho con anchors
    ColumnLayout {
        id: column
        width: 120
        height: parent.maximumHeight
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        spacing: 40

        //roberto: en vez de hacer una clase qml los he hecho a piñon porque no tienen estilo los botones sino pondria estilo
        //roberto: el current index es para saber que boton has pulsado
        Button {
            id: b1
            text: qsTr("Elementos")
            onClicked: stackLayout.currentIndex = 0
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle {
                color: "lightgray"
                radius: 10
                border.color: "black"
                width: 110
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }


        Button {
            id: b2
            text: qsTr("Edición")
            onClicked: stackLayout.currentIndex = 1
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle {
                color: "lightgray"
                radius: 10
                border.color: "black"
                width: 110
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Button {
            id: b3
            text: qsTr("Usuarios")
            onClicked: stackLayout.currentIndex = 2
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle {
                color: "lightgray"
                radius: 10
                border.color: "black"
                width: 110
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Button {
            id: b4
            text: qsTr("Configuración")
            onClicked: stackLayout.currentIndex = 3
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle {
                color: "lightgray"
                radius: 10
                border.color: "black"
                width: 110
                anchors.horizontalCenter: parent.horizontalCenter

            }
        }
    }
    //roberto: es como un stack panel que va paseandose por las vistas segun donde
    //roberto: hagas click por las vistas
    StackLayout {
        id: stackLayout
        anchors.verticalCenter: column.verticalCenter
        anchors.left: column.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 6
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        currentIndex: 3
        Layout.fillWidth: true
        Layout.fillHeight: true

        //roberto: va a navegar entre los diferentes items pero podria
        //roberto: rectangle tambien podria ser o VBox
        Item {
            //roberto: esta es la vista que tiene todos los elementos posicionados
            MyView {
                titleText: b1.text
                anchors.verticalCenter: column.verticalCenter

                //roberto: para poner todos los elementos dentro del
                //roberto: dentro del stack panel
                GridLayout {
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    anchors.verticalCenter: column.verticalCenter
                    anchors.fill: parent
                    rowSpacing: 25
                    columnSpacing: 15
                    anchors.top: parent.top
                    anchors.topMargin: 81
                    anchors.bottomMargin: 81
                    columns: 3
                    rows: 3

                    //roberto: esto lo que hace es como un for que crea 7 cards
                    Repeater {
                        model: 7
                        MyCard {

                        }
                    }
                }
                //roberto: lo he anclado a la derecha y abajo y le he dado
                //roberto: espacio de 10 para que sea parecido al del ejericico
                RoundButton {
                    id: roundButton
                    x: 474
                    y: 440
                    text: "+"
                    anchors.bottomMargin: 10
                    anchors.rightMargin: 10
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                }
            }
        }


        Item {
            MyView {
                titleText: b2.text
            }
        }

        Item {
            MyView {
                titleText: b3.text
            }
        }

        Item {
            MyView {
                titleText: b4.text
            }
        }
    }
}
