import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle{
    id: deviceComponent
    anchors{
        top: dashboardComponent.bottom
        left: parent.left
        right: parent.right
        // topMargin: 50
    }
    height: parent.height * 1/14
    radius: 10

    Image{
        id: deviceImage
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 75
        }
        height: parent.height * 0.40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/devicesIcon.png"
    }

    Text{
        id: deviceText
        text: "Devices"
        anchors{
            left: deviceImage.left
            leftMargin: 35
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: parent.width/20
        color: "#23446b"
    }

    MouseArea{
        id: deviceMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            // stackView.push(Qt.resolvedUrl("../../pages/DevicePage.qml"))
            loader.setSource(Qt.resolvedUrl("../../pages/DevicePage.qml"))
        }

        onEntered: {
            deviceText.color = "white"
            deviceImage.source = "qrc:/ui/assets/devicesIcon_w.png"
            parent.color = "#23446b"
        }
        onExited: {
            deviceText.color = "#23446b"
            deviceImage.source = "qrc:/ui/assets/devicesIcon.png"
            parent.color = "#D3D3D3"
        }
    }
}
