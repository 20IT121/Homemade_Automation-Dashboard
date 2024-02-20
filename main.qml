import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Window 2.15
import QtQuick.Layouts
import "ui/TopNavbar"
import "ui/SideNavbar"
import "ui/Notification"
import "ui/QuickPanel"
import "ui/Suggestion"
import "ui/Weather"
import "ui/Temperature"
import "ui/Wifi"
import "ui/Electricity"
import "ui/pages"

Window {

    id: mainWindow
    property color checkedColor: "#23446b"

    width: 1380
    height: 768
    // minimumHeight: 768
    // minimumWidth: 1360
    // maximumHeight: 1080
    // maximumWidth: 1920
    visible: true
    flags: Qt.Window | Qt.FramelessWindowHint
    title: qsTr("Homemade Automation - Dashboard")
    color: root.checked ? "#7e7e7e" : "#D3D3D3"

    SideNavbar{
        id: sideNavbar
        color: "#D3D3D3"
    }

    TopNavbar{
        id: topNavbar
        color: "#D3D3D3"

        Switch {
            id: root
            anchors{
                horizontalCenter: topNavbar.horizontalCenter
                verticalCenter: topNavbar.verticalCenter
            }
            hoverEnabled: true

            indicator: Rectangle {

                width: 248
                height: 24
                radius: height / 2
                color: root.checked ? checkedColor : "#AAB7C6"
                border.width: 2
                border.color: "#D5D5D5"

                Rectangle {
                    id: randomID
                    x: root.checked ? parent.width - width - 2 : 1
                    width: parent.width/2
                    height: parent.height
                    radius: height / 2
                    anchors.verticalCenter: parent.verticalCenter
                    color: "white"
                    border.color: "#D5D5D5"


                    Behavior on x {
                        NumberAnimation { duration: 200 }
                    }
                }
            }

            Text{
                id: lightmodeText
                text: "Light"
                anchors{
                    right: root.right
                    rightMargin: root.width/4
                }
                font.pixelSize: 15
                color: root.checked ? "white" : "#23446b"
            }

            Text{
                id: darkmodeText
                text: "Dark"
                anchors{
                    left: root.left
                    leftMargin: root.width/4
                }
                font.pixelSize: 15
                color: root.checked ? "#D3D3D3" : "white"
            }
       }
    }

    Rectangle{
        id: contentPages
        implicitHeight: mainWindow.height * 11/12
        implicitWidth: mainWindow.width * 3/4
        anchors.left: sideNavbar.right
        anchors.top: topNavbar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        color: "#000000"

        // StackView{
        //     id: stackView
        //     anchors.fill: parent
        //     // anchors.left: sideNavbar.right
        //     // anchors.top: topNavbar.bottom

        //     initialItem: Qt.resolvedUrl(":/ui/pages/MainContent.qml")
        // }

        Loader{
            id: loader
            anchors.fill: parent
            source: Qt.resolvedUrl("qrc:/ui/pages/MainContent.qml")
        }
    }

}
