import QtQuick 2.15
import QtQuick.Layouts 2.15
import Qt5Compat.GraphicalEffects
import "ToggleSwitch"

Rectangle{
    id: electricity
    property bool hover : false

    Layout.fillHeight: true
    Layout.fillWidth: true

    radius: 10
    color: "transparent"
    Image {
        id: bg
        source: "qrc:/ui/assets/bg_img.png"
        anchors.fill: parent
        // fillMode: Image.PreserveAspectFit
    }

    DropShadow {
        anchors.fill: bg
        horizontalOffset: 0
        verticalOffset: 8
        radius: 8
        spread: 0
        samples: 10
        color: "#000000"
        source: bg
    }

    // border.width: 2
    // border.color: "white"

    Text {
        id: electricityText
        text: "Electricity"
        color: "white"
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

    ColorOverlay {
               anchors.fill: statsImage
               source: statsImage
               color: "#581845"
        }

    Timer {
        id: hoverTimer
        interval: 250 // Adjust the delay time in milliseconds
        repeat: false
        onTriggered: {
            parent.scale = hover ? 1.2 : 1.0
            // color = "#efefef"
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
            // color = "white"
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

    // opacity: 0.9
}
