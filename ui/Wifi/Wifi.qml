import QtQuick 2.15
import QtQuick.Layouts 1.0

Rectangle{
    id: wifi
    property bool hover : false

    Layout.fillHeight: true
    Layout.fillWidth: true

    radius: 10
    color: "white"

    Text {
        id: wifiText
        text: "Wi-Fi"
        color: "#23446b"
        font.bold: true
        font.pixelSize: 15
        anchors.left : parent.left
        anchors.top: parent.top
        anchors.leftMargin: 20
        anchors.topMargin: 20
    }


    Text {
        id: wifiStatus
        text: "Connected"
        anchors{
            top: wifiText.bottom
            left: parent.left
            topMargin: 10
            leftMargin: 20
        }
        color: "#23446b"
        font.bold: true
    }

    Text{
        id: connectedDevices
        text: "4 Connected Devices"
        anchors.top: wifiStatus.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
        color: "#23446b"
    }

    Timer {
        id: hoverTimer
        interval: 250 // Adjust the delay time in milliseconds
        repeat: false
        onTriggered: {
            parent.scale = hover ? 1.2 : 1.0
            color = "#efefef"
        }
    }

    MouseArea{
        id: wifiMousearea
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
            color = "white"
        }
    }

}
