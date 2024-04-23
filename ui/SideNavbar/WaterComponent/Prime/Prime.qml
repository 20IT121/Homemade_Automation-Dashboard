import QtQuick 2.15
import QtQuick.Layouts 1.0

Rectangle{
    property bool hover : false

    Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

    width: 300
    height: 150

    color: "#00A8E1"
    radius: 10

    Image {
        id: prime
        source: "qrc:/ui/assets/prime.png"
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }

    // Scale up effect onHover
    Timer {
        id: hoverTimer
        interval: 250 // Adjust the delay time in milliseconds
        repeat: false
        onTriggered: {
            parent.scale = hover ? 1.2 : 1.0
            color = "#00A8E1"
        }
    }

    MouseArea{
        id: primeMousearea
        hoverEnabled: true
        anchors.fill: parent
        onEntered: {
            hover = true
            hoverTimer.start()
        }
        onExited: {
            hover = false
            hoverTimer.stop()
            parent.scale =  1.0
        }
    }
}
