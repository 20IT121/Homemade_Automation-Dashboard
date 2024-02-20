import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    id: settingsComponent
    anchors{
        top: securityComponent.bottom
        left: parent.left
        right: parent.right
    }
    height: parent.height * 1/14

    color: "white"
    radius: 10

    Image{
        id: settingsImage
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 75
        }
        height: parent.height * 0.40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/settingIcon.png"
    }

    Text{
        id: settingsText
        text: "Settings"
        anchors{
            left: settingsImage.left
            leftMargin: 35
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: parent.width/20
        color: "#23446b"
    }

    MouseArea{
        id: settingsMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            // stackView.push(Qt.resolvedUrl("../../pages/SettingsComponent.qml"))
            loader.setSource(Qt.resolvedUrl("../../pages/SettingsComponent.qml"))
        }

        onEntered: {
            settingsText.color = "white"
            settingsImage.source = "qrc:/ui/assets/settingIcon_w.png"
            parent.color = "#23446b"
        }
        onExited: {
            settingsText.color = "#23446b"
            settingsImage.source = "qrc:/ui/assets/settingIcon.png"
            parent.color = "#D3D3D3"
        }
    }
}
