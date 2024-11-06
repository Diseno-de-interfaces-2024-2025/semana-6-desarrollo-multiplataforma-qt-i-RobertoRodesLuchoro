import QtQuick

//roberto: componente de la vista que es utilizado en el Main
Rectangle {
    id: view
    anchors.fill: parent
    anchors.horizontalCenter: parent.horizontalCenter
    property alias titleText: title.text

    color: "#eeeeee"

    //roberto: es el texto que es el titulo de las vistas que va dentro
    //roberto: del stack panel
    Text {
        id: title
        font.pixelSize: 36
        text: qsTr("Title")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20
    }
}
