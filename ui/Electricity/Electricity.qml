import QtQuick 2.15
import QtQuick.Layouts
import "ToggleSwitch"

Rectangle{
    id: electricity
    property bool hover : false

    Layout.fillHeight: true
    Layout.fillWidth: true

    radius: 10
    color: "white"

    Text {
        id: electricityText
        text: "Electricity"
        color: "#23446b"
        font.bold: true
        font.pixelSize: 15
        anchors.left : parent.left
        anchors.top: parent.top
        anchors.leftMargin: 20
        anchors.topMargin: 20
    }

    Image {
        id: statsImage
        anchors.top: toggleSwitch.bottom
        anchors.left: parent.left
        fillMode: Image.PreserveAspectFit
        width: parent.width-40
        anchors.leftMargin: 20
        anchors.topMargin: 20
        source: "qrc:/ui/assets/Stats.png"
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
        id: electricityMousearea
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


    ToggleSwitch{
        id: toggleSwitch
        anchors{
            top: electricityText.bottom
            left: parent.left
            topMargin: 10
            leftMargin: 20
        }
    }
}
