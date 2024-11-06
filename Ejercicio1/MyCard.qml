import QtQuick
import QtQuick.Layouts 2.15

//roberto: componente de la tarjeta que va dentro de la primera vista
ColumnLayout {
    width: parent.width
    height: parent.height

    //roberto: el texto que va arriba del recatangulo
    Text {
        text: "Elemento"
        color: "black"
        font.pixelSize: 18
        anchors.horizontalCenter: card.horizontalCenter
    }

    //roberto: el rectangulo que va debajo del texto
    Rectangle {
        id: card;
        radius: 20
        color: "#d7d7d7";
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.maximumHeight: 250
        Layout.maximumWidth: 350
        Layout.minimumHeight: 50
        Layout.minimumWidth: 100
        Layout.preferredHeight: 100
        Layout.preferredWidth: 150
    }
}

