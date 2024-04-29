import QtQuick 2.15
import QtQuick.Controls
import "../SideNavbar/DashBoardComponent"
import "../SideNavbar/DeviceComponent"
import "../SideNavbar/LightComponent"
import "../SideNavbar/TemperatureComponent"
import "../SideNavbar/ElectricityComponent"
import "../SideNavbar/WaterComponent"
import "../SideNavbar/WifiComponent"
import "../SideNavbar/SecurityComponent"
import "../SideNavbar/SettingsComponent"

Rectangle{
    id: sideNavbarComponent
    border.width: 2
    border.color: "white"
    anchors{
        top: parent.top
        bottom: parent.bottom
        left: parent.left
    }
    width: parent.width * 0.2
    color: "#D3D3D3"

    Image {
        source: "qrc:/ui/assets/grey_blur.jpg"
        anchors.fill: parent
    }
    // radius: 10

    Text{
        id: time
        anchors{
            top: parent.top
            left: parent.left
            right: parent.right

            topMargin:  55
            leftMargin: 40
            rightMargin: 70

        }
        text: systemHandler.currentTime
        font.pixelSize: 90
        // color: "#23446b"
        color: "white"
        font.bold: true
    }

    Text{
        id: date
        anchors{
            top: time.bottom
            bottom: dashboardComponent.top
            horizontalCenter: parent.horizontalCenter
        }
        text: systemHandler.currentDate
        // color: "#23446b"
        color: "white"
        font.pixelSize: 15
    }

    DashBoardComponent{
        id: dashboardComponent
        color: "transparent"
    }

    DeviceComponent{
        id: deviceComponent
        color: "transparent"
    }

    LightComponent{
        id: lightComponent
        color: "transparent"
    }

    TemperatureComponent{
        id: temperatureComponent
        color: "transparent"
    }

    ElectricityComponent{
        id: electricityComponent
        color: "transparent"
    }
    WaterComponent{
        id: waterComponent
        color: "transparent"
    }
    WifiComponent{
        id: wifiComponent
        color: "transparent"
    }
    SecurityComponent{
        id: securityComponent
        color: "transparent"
    }
    SettingsComponent{
        id: settingsComponent
        color: "transparent"
    }

    // color: "orange"
}
