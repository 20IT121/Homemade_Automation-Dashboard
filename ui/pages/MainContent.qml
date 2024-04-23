import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15
import "../Notification"
import "../QuickPanel"
import "../Suggestion"
import "../Weather"
import "../Temperature"
import "../Wifi"
import "../Electricity"
import "../TopNavbar"

Item {
    property color checkedColor: "#23446b"
    Rectangle{
        id: maincontent
        // implicitHeight: mainWindow.height * 11/12
        implicitHeight: mainWindow.height
        implicitWidth: mainWindow.width * 4/5

        Image{
            anchors.fill: parent
            source: "qrc:/ui/assets/Background.jpg"
        }

        TopNavbar{
                    id: topNavbar
                    color: "transparent"

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
                        } // switch

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



        Notification{
            id: notification
        }

        QuickPanel{
            id: quickpanel
        }

        Suggestion{
            id: suggestion
        }

        GridLayout{
            Layout.fillHeight: true
            Layout.fillWidth: true
            columns: 2
            rows: 2
            columnSpacing: 25
            rowSpacing: 25

            anchors{
                left: parent.left
                right: notification.left
                bottom: suggestion.top
                top: topNavbar.bottom

                topMargin: 45
                leftMargin: 25
                rightMargin: 25
                bottomMargin: 25

            }

            Weather{

            }

            Temperature{

            }

            Wifi{

            }

            Electricity{

            }
        }
    }
}
