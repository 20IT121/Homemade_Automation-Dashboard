import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: dashboardComponent
    anchors{
        top: parent.top
        left: parent.left
        right: parent.right
        topMargin: parent.height/3
    }
    height: parent.height * 1/14
    radius: 10
    color: "transparent"

    Image{
        id: dashboardImage
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 75
        }
        height: parent.height * 0.40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/dashboardIcon_w.png"
    }

    Text{
        id: dashboardText
        text: "Dashboard"
        anchors{
            left: dashboardImage.right
            leftMargin: 15
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: parent.width/20
        // color: "#23446b"
        color: "white"
    }

    MouseArea{
        id: dashboardMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            // stackView.push(Qt.resolvedUrl("../../pages/MainContent.qml"))
            loader.setSource(Qt.resolvedUrl("../../pages/MainContent.qml"))
        }
    }
}
