import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtWebChannel 1.0
// import QtGraphicalEffects 2.15
import "../SideNavbar/WaterComponent/Netflix"
import "../SideNavbar/WaterComponent/Hotstar"
import "../SideNavbar/WaterComponent/Prime"
import "../SideNavbar/WaterComponent/Youtube"
import "../SideNavbar/WaterComponent/Erosnow"
import "../SideNavbar/WaterComponent/Aaonxt"

Item {
    Rectangle{

        id: ottplatformPage

        implicitHeight: mainWindow.height * 11/12
        implicitWidth: mainWindow.width * 4/5

        color: "#D3D3D3"

        Image {
            id: bgImage
            source: "qrc:/ui/assets/netflix_BG.webp"
            // anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: title
            text: qsTr("OTT Platforms")
            font.bold: true
            font.pixelSize: parent.height / 21
            font.family: "Helvetica"
            anchors{
                bottom : parent.bottom
                bottomMargin: parent.height/20
                right: parent.right
                rightMargin: parent.height/20
            }
            color: "white"
        }

        GridLayout{
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.fill: ottplatformPage

            columns: 3
            rows: 2
            columnSpacing: 15
            rowSpacing: 15

            Netflix{
                 Layout.alignment: Qt.AlignHCenter
                 Layout.topMargin: 60
            }

            Hotstar{
                Layout.alignment: Qt.AlignHCenter
                Layout.topMargin: 60
            }

            Prime{
                Layout.alignment: Qt.AlignHCenter
                Layout.topMargin: 60
            }

            Youtube{
                Layout.alignment: Qt.AlignHCenter
                Layout.bottomMargin: 60
            }

            Erosnow{
                Layout.alignment: Qt.AlignHCenter
                Layout.bottomMargin: 60
            }

            Aaonxt{
                Layout.alignment: Qt.AlignHCenter
                Layout.bottomMargin: 60
            }
        }
    }
}
