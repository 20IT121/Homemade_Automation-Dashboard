import QtQuick 2.15
import QtQuick.Controls 2.15
// import QtQuickStyle
import QtQuick.Layouts

Rectangle{

    id: lightComponent
    anchors{
        top: deviceComponent.bottom
        left: parent.left
        right: parent.right
        // topMargin: 50
    }
    height: parent.height * 1/14
    color: "white"
    radius: 10

    Image{
        id: lightImage
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 75
        }
        height: parent.height * 0.40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/lightsIcon.png"
    }

    Text{
        id: lightText
        text: "Lights"
        anchors{
            left: lightImage.left
            leftMargin: 35
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: parent.width/20
        color: "#23446b"
    }

    MouseArea{
        id: lightMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            // stackView.push(Qt.resolvedUrl("../../pages/LightsPage.qml"))
            loader.setSource(Qt.resolvedUrl("../../pages/LightsPage.qml"))
        }

        onEntered: {
            lightText.color = "white"
            lightImage.source = "qrc:/ui/assets/lightsIcon_w.png"
            parent.color = "#23446b"
        }
        onExited: {
            lightText.color = "#23446b"
            lightImage.source = "qrc:/ui/assets/lightsIcon.png"
            parent.color = "#D3D3D3"
        }
    }

}

