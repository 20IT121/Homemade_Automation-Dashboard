import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    id: temperatureComponent
    anchors{
        top: lightComponent.bottom
        left: parent.left
        right: parent.right
        // topMargin: 50
    }
    height: parent.height * 1/14

    color: "white"
    radius: 10

    Image{
        id: temperatureImage
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 75
        }
        height: parent.height * 0.40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/temperatureIcon.png"
    }

    Text{
        id: temperatureText
        text: "Temperature"
        anchors{
            left: temperatureImage.left
            leftMargin: 35
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: parent.width/20
        color: "#23446b"
    }

    MouseArea{
        id: temperatureMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            temperatureText.color = "white"
            temperatureImage.source = "qrc:/ui/assets/temperatureIcon_w.png"
            parent.color = "#23446b"
        }
        onExited: {
            temperatureText.color = "#23446b"
            temperatureImage.source = "qrc:/ui/assets/temperatureIcon.png"
            parent.color = "#D3D3D3"
        }
    }
}
