import QtQuick 2.15
import QtQuick.Layouts
import "../SideNavbar/DeviceComponent/ACComponent"
import "../SideNavbar/DeviceComponent/LampComponent"
import "../SideNavbar/DeviceComponent/PrinterComponent"
import "../SideNavbar/DeviceComponent/TVComponent"
import "../SideNavbar/DeviceComponent/WifiComponent"

Item {
    Rectangle{
        id: devicePage

        implicitHeight: mainWindow.height * 11/12
        implicitWidth: mainWindow.width * 3/4

        color: "#463E3F"

        GridLayout{
            anchors.fill: parent

            Layout.fillHeight: true
            Layout.fillWidth: true

            columns: 3
            columnSpacing: 20
            rowSpacing: 20

            anchors.margins: 20

            TVComponent{
                id: tvdevice
            }

            PrinterComponent{
                id: acdevice
            }

            WifiComponent{
                id: wifidevice
            }

            ACComponent{
                id: printerdevice
                Layout.columnSpan: 2
            }

            LampComponent{
                id: lampdevice
            }

        } // Grid Layout
    }
}
