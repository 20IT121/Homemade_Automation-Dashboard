import QtQuick 2.15
import QtQuick.Layouts 1.0
import Qt5Compat.GraphicalEffects

Rectangle{
    id: weather
    property bool hover : false
    color: "transparent"

    Layout.fillHeight: true
    Layout.fillWidth: true

    //radius: 10

    // color: "white"
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
        id: weatherText
        text: "Weather"
        color: "white"
        font.bold: true
        font.pixelSize: 15
        anchors.left : parent.left
        anchors.top: parent.top
        anchors.leftMargin: 30
        anchors.topMargin: 20
    }

    Image {
        id: weatherImage
        source: "qrc:/ui/assets/weather.png"
        anchors.top: weatherText.bottom
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.topMargin: 5
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: cityName
        text: "Ahmedabad"
        anchors.top: weatherText.bottom
        anchors.left: parent.left
        anchors.topMargin: 10
        anchors.leftMargin: 30
        color: "#E2DFD2"
        font.bold: true
    }
    Text {
        id: temperature
        text: systemHandler.roomTemp + "° C"
        anchors{
            top: cityName.bottom
            left: parent.left
            topMargin: 10
            leftMargin: 30
        }
        color: "white"
        font.pixelSize: 25
    }
    Text {
        id: weatherStatus
        text: "Partly cloudy"
        anchors{
            top: temperature.bottom
            left: parent.left
            leftMargin: 30
            topMargin: 10
        }
        color: "#E2DFD2"
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
        id: weatherMousearea
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

    // opacity: 0.
}
