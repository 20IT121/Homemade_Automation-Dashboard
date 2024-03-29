import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle{
    id: electricityComponent

    anchors{
        top: temperatureComponent.bottom
        left: parent.left
        right: parent.right
        // topMargin: 50
    }
    height: parent.height * 1/14

    radius: 10

    Image{
        id: electricityImage
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 75
        }
        height: parent.height * 0.40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/electricityIcon.png"
    }

    Text{
        id: electricityText
        text: "Electricity"
        anchors{
            left: electricityImage.left
            leftMargin: 35
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: parent.width/20
        color: "#23446b"
    }

    MouseArea{
        id: electricityMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            electricityText.color = "white"
            electricityImage.source = "qrc:/ui/assets/electricityIcon_w.png"
            parent.color = "#23446b"
        }
        onExited: {
            electricityText.color = "#23446b"
            electricityImage.source = "qrc:/ui/assets/electricityIcon.png"
            parent.color = "#D3D3D3"
        }
    }
}
