import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    id: securityComponent
    anchors{
        top: wifiComponent.bottom
        left: parent.left
        right: parent.right
        // topMargin: 50
    }
    height: parent.height * 1/14

    color: "white"
    radius: 10

    Image{
        id: securityImage
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 75
        }
        height: parent.height * 0.40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/securityIcon.png"
    }

    Text{
        id: securityText
        text: "Security"
        anchors{
            left: securityImage.left
            leftMargin: 35
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: parent.width/20
        color: "#23446b"
    }

    MouseArea{
        id: securityMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            securityText.color = "white"
            securityImage.source = "qrc:/ui/assets/securityIcon_w.png"
            parent.color = "#23446b"
        }
        onExited: {
            securityText.color = "#23446b"
            securityImage.source = "qrc:/ui/assets/securityIcon.png"
            parent.color = "#D3D3D3"
        }
    }
}
