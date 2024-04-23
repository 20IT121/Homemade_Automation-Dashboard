import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: wifiComponent
    anchors{
        top: waterComponent.bottom
        left: parent.left
        right: parent.right
        // topMargin: 50
    }
    height: parent.height * 1/14

    color: "white"
    radius: 10

    Image{
        id: wifiImage
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 75
        }
        height: parent.height * 0.40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/wiFiIcon_w.png"
    }

    Text{
        id: wifiText
        text: "Wi-Fi"
        anchors{
            left: wifiImage.left
            leftMargin: 35
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: parent.width/20
        // color: "#23446b"
        color: "white"
    }

    MouseArea{
        id: wifiMouseArea
        anchors.fill: parent
        hoverEnabled: true
        // onEntered: {
        //     wifiText.color = "white"
        //     wifiImage.source = "qrc:/ui/assets/wiFiIcon_w.png"
        //     parent.color = "#23446b"
        // }
        // onExited: {
        //     wifiText.color = "#23446b"
        //     wifiImage.source = "qrc:/ui/assets/wiFiIcon.png"
        //     parent.color = "#D3D3D3"
        // }
    }
}
