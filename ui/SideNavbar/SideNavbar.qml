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
    anchors{
        top: parent.top
        bottom: parent.bottom
        left: parent.left
    }
    width: parent.width * 0.25
    // radius: 10

    Text{
        id: time
        anchors{
            top: parent.top
            left: parent.left
            right: parent.right

            topMargin:  55
            leftMargin: 55
            rightMargin: 55

        }
        text: systemHandler.currentTime
        font.pixelSize: 90
        color: "#23446b"
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
        color: "#23446b"
        font.pixelSize: 15
    }

    DashBoardComponent{
        id: dashboardComponent
        color: "#D3D3D3"
    }

    DeviceComponent{
        id: deviceComponent
        color: "#D3D3D3"
    }

    LightComponent{
        id: lightComponent
        color: "#D3D3D3"
    }

    TemperatureComponent{
        id: temperatureComponent
        color: "#D3D3D3"
    }

    ElectricityComponent{
        id: electricityComponent
        color: "#D3D3D3"
    }
    WaterComponent{
        id: waterComponent
        color: "#D3D3D3"
    }
    WifiComponent{
        id: wifiComponent
        color: "#D3D3D3"
    }
    SecurityComponent{
        id: securityComponent
        color: "#D3D3D3"
    }
    SettingsComponent{
        id: settingsComponent
        color: "#D3D3D3"
    }

    // color: "orange"
}
