import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.0

Rectangle{
    id: temperature
    property bool hover : false

    Layout.fillHeight: true
    Layout.fillWidth: true

    radius: 10
    color: "white"

    Text {
        id: temperatureText
        text: "Temperature"
        color: "#23446b"
        font.bold: true
        font.pixelSize: 15
        anchors.left : parent.left
        anchors.top: parent.top
        anchors.leftMargin: 20
        anchors.topMargin: 20
    }

    Image{
        id: frostImage
        anchors{
            top: temperatureText.bottom
            left: parent.left
            topMargin: 20
            leftMargin: 30
        }
        fillMode: Image.PreserveAspectFit
        width: parent.width * 1/5
        source: systemHandler.highTemperature() ? "qrc:/ui/assets/heatwave.png" : "qrc:/ui/assets/frost.png"
    }

    Text{
        id: currentTemperature
        anchors.bottom: frostImage.bottom
        anchors.left: frostImage.right
        anchors.leftMargin: parent.width*1/25

        text: systemHandler.currentTemp + "° C"
        font.pixelSize: 50
        color: systemHandler.highTemperature() ? "#fe2d2d" : "#a3b5b2"
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
        id: temperatureMousearea
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

    Image {
        id: upwardArrow
        anchors{
            right: parent.right
            top: currentTemperature.top
            rightMargin: parent.width * 1/20
        }
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/upward-arrow.png"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                root.checked ? systemHandler.incrementTemperature(0) : systemHandler.incrementTemperature(1)
                currentTemperature.color = systemHandler.highTemperature() ? "#fe2d2d" : "#a3b5b2"
                frostImage.source = systemHandler.highTemperature() ? "qrc:/ui/assets/heatwave.png" : "qrc:/ui/assets/frost.png"
            }
        }
    }

    Image {
        id: downwardArrow
        anchors{
            right: parent.right
            bottom: currentTemperature.bottom
            rightMargin: parent.width* 1/20
        }
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/downward-arrow.png"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                root.checked ? systemHandler.incrementTemperature(0) : systemHandler.incrementTemperature(-1)
                currentTemperature.color = systemHandler.highTemperature() ? "#fe2d2d" : "#a3b5b2"
                frostImage.source = systemHandler.highTemperature() ? "qrc:/ui/assets/heatwave.png" : "qrc:/ui/assets/frost.png"
            }
        }
    }

 // Auto Room temperature component
    Text{
        id: autoRoomTemperature
        property color checkedColor : "#23446b"
        color: "#657C97"
        text: "Auto Room Temperature System"
        anchors.top: frostImage.bottom
        anchors.left: parent.left
        anchors.leftMargin: parent.width * 1/20
        anchors.topMargin: 10
        font.pixelSize: parent.width * 1/20
    }

    Switch {
        id: root
        anchors{
            bottom: parent.bottom
            right: parent.right
            // bottomMargin: 5
            rightMargin: parent.width * 1/30
        }

        hoverEnabled: true
        indicator: Rectangle {


            width: 33
            height: 20
            radius: height / 2
            color: root.checked ? checkedColor : "#AAB7C6"
            border.width: 2
            border.color: root.checked ? checkedColor : "#E5E5E5"


            Rectangle {

                x: root.checked ? parent.width - width - 2 : 1
                width: root.checked ? parent.height - 4 : parent.height - 2
                height: width
                radius: width / 2
                anchors.verticalCenter: parent.verticalCenter
                color: "white"
                border.color: "#D5D5D5"


                Behavior on x {
                    NumberAnimation { duration: 200 }
                }
            }
        }
    }
}
