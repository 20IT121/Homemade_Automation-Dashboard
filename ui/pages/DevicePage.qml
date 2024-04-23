import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15
import "../SideNavbar/DeviceComponent/ACComponent"
import "../SideNavbar/DeviceComponent/LampComponent"
import "../SideNavbar/DeviceComponent/PrinterComponent"
import "../SideNavbar/DeviceComponent/TVComponent"
import "../SideNavbar/DeviceComponent/WifiComponent"

Item {
    property double deviceOpacity : 0.6
    property string deviceColor : "black"
    property int number: 0
    Rectangle{
        id: devicePage

        implicitHeight: mainWindow.height
        implicitWidth: mainWindow.width * 4/5

        Image{
            anchors.fill: parent
            source: "qrc:/ui/assets/Background.jpg"
        }

        Text{
            text: "Bedroom-1"
            anchors{
                top: parent.top
                left: parent.left
                leftMargin: 60
                topMargin: 20
            }
            font.pixelSize: 18
            color: "white"
        }

        Text{
            text: "Living Room"
            anchors{
                top: parent.top
                left: parent.left
                leftMargin: 660
                topMargin: 20
            }
            font.pixelSize: 18
            color: "white"
        }

        Text{
            text: "Study Room"
            anchors{
                top: parent.top
                left: parent.left
                leftMargin: 990
                topMargin: 20
            }
            font.pixelSize: 18
            color: "white"
        }

        Text{
            text: "Bedroom-2"
            anchors{
                top: parent.top
                left: parent.left
                leftMargin: 60
                topMargin: 370
            }
            font.pixelSize: 18
            color: "white"
        }

        Text{
            text: "Kitchen"
            anchors{
                top: parent.top
                left: parent.left
                leftMargin: 660
                topMargin: 370
            }
            font.pixelSize: 18
            color: "white"
        }

        Text{
            text: "Camera"
            anchors{
                top: parent.top
                left: parent.left
                leftMargin: 990
                topMargin: 370
            }
            font.pixelSize: 18
            color: "white"
        }

        Text{
            text: "Others"
            anchors{
                top: parent.top
                left: parent.left
                leftMargin: 60
                topMargin: 570
            }
            font.pixelSize: 18
            color: "white"
        }

        GridLayout{
            anchors.fill: parent
            anchors.margins: 30
            // Layout.fillHeight: true
            // Layout.fillWidth: true
            columns: 3
            rows: 2
            columnSpacing: 10

            Flow{
                Layout.fillHeight: true
                Layout.fillWidth: true
                padding: 20
                spacing: 15
                // flow: Flow.TopToBottom

                Rectangle{
                    id: smartac2
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image {
                        id: ac2
                        source: "qrc:/ui/assets/ac_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartac2.opacity === deviceOpacity){
                                smartac2.color = "white"
                                ac2.source = "qrc:/ui/assets/ac_on.png"
                                smartac2.opacity = 1
                            }
                            else{
                                smartac2.color = "black"
                                ac2.source = "qrc:/ui/assets/ac_off.png"
                                smartac2.opacity = deviceOpacity
                            }
                        }
                    }
                } // ac

                Rectangle{
                    id: smartfan2
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image{
                        id:fan2
                        source: "qrc:/ui/assets/fan_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartfan2.opacity === deviceOpacity){
                                smartfan2.color = "white"
                                fan2.source = "qrc:/ui/assets/fan_on.png"
                                smartfan2.opacity = 1
                            }
                            else{
                                smartfan2.color = "black"
                                fan2.source = "qrc:/ui/assets/fan_off.png"
                                smartfan2.opacity = deviceOpacity
                            }
                        }
                    }
                } // fan

                Rectangle{
                    id: smartspeaker
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image{
                        id:speaker
                        source: "qrc:/ui/assets/speaker_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartspeaker.opacity === deviceOpacity){
                                smartspeaker.color = "white"
                                speaker.source = "qrc:/ui/assets/speaker_on.png"
                                smartspeaker.opacity = 1
                            }
                            else{
                                smartspeaker.color = "black"
                                speaker.source = "qrc:/ui/assets/speaker_off.png"
                                smartspeaker.opacity = deviceOpacity
                            }
                        }
                    }
                } // speaker

            } // bedroom 1

            Flow{
                Layout.fillHeight: true
                Layout.fillWidth: true
                padding: 20
                spacing: 15
                // flow: Flow.TopToBottom

                Rectangle{
                    id: smartac
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image {
                        id: ac
                        source: "qrc:/ui/assets/ac_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartac.opacity === deviceOpacity){
                                smartac.color = "white"
                                ac.source = "qrc:/ui/assets/ac_on.png"
                                smartac.opacity = 1
                            }
                            else{
                                smartac.color = "black"
                                ac.source = "qrc:/ui/assets/ac_off.png"
                                smartac.opacity = deviceOpacity
                            }
                        }
                    }
                } // ac

                Rectangle{
                    id: smartfan
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image{
                        id:fan
                        source: "qrc:/ui/assets/fan_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartfan.opacity === deviceOpacity){
                                smartfan.color = "white"
                                fan.source = "qrc:/ui/assets/fan_on.png"
                                smartfan.opacity = 1
                            }
                            else{
                                smartfan.color = "black"
                                fan.source = "qrc:/ui/assets/fan_off.png"
                                smartfan.opacity = deviceOpacity
                            }
                        }
                    }
                } // fan-1

                Rectangle{
                    id: smartfan1
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image{
                        id:fan1
                        source: "qrc:/ui/assets/fan_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartfan1.opacity === deviceOpacity){
                                smartfan1.color = "white"
                                fan1.source = "qrc:/ui/assets/fan_on.png"
                                smartfan1.opacity = 1
                            }
                            else{
                                smartfan1.color = "black"
                                fan1.source = "qrc:/ui/assets/fan_off.png"
                                smartfan1.opacity = deviceOpacity
                            }
                        }
                    }
                } // fan-2

                Rectangle{
                    id: smarttv
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image{
                        id:tv
                        source: "qrc:/ui/assets/tv_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smarttv.opacity === deviceOpacity){
                                smarttv.color = "white"
                                tv.source = "qrc:/ui/assets/tv_on.png"
                                smarttv.opacity = 1
                            }
                            else{
                                smarttv.color = "black"
                                tv.source = "qrc:/ui/assets/tv_off.png"
                                smarttv.opacity = deviceOpacity
                            }
                        }
                    }
                } // TV

            } // livingroom

            // STUDY ROOM
            Flow{
                Layout.fillHeight: true
                Layout.fillWidth: true
                padding: 20
                spacing: 15
                // flow: Flow.TopToBottom

                Rectangle{
                    id: smartac3
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image {
                        id: ac3
                        source: "qrc:/ui/assets/ac_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartac3.opacity === deviceOpacity){
                                smartac3.color = "white"
                                ac3.source = "qrc:/ui/assets/ac_on.png"
                                smartac3.opacity = 1
                            }
                            else{
                                smartac3.color = "black"
                                ac3.source = "qrc:/ui/assets/ac_off.png"
                                smartac3.opacity = deviceOpacity
                            }
                        }
                    }
                } // ac

                Rectangle{
                    id: smartprinter
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image{
                        id:printer
                        source: "qrc:/ui/assets/printer_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartprinter.opacity === deviceOpacity){
                                smartprinter.color = "white"
                                printer.source = "qrc:/ui/assets/printer_on.png"
                                smartprinter.opacity = 1
                            }
                            else{
                                smartprinter.color = "black"
                                printer.source = "qrc:/ui/assets/printer_off.png"
                                smartprinter.opacity = deviceOpacity
                            }
                        }
                    }
                } // printer

            } // study room

            // BEDROOM-2
            Flow{
                Layout.fillHeight: true
                Layout.fillWidth: true
                padding: 20
                spacing: 15
                // flow: Flow.TopToBottom

                Rectangle{
                    id: smartac1
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image {
                        id: ac1
                        source: "qrc:/ui/assets/ac_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartac1.opacity === deviceOpacity){
                                smartac1.color = "white"
                                ac1.source = "qrc:/ui/assets/ac_on.png"
                                smartac1.opacity = 1
                            }
                            else{
                                smartac1.color = "black"
                                ac1.source = "qrc:/ui/assets/ac_off.png"
                                smartac1.opacity = deviceOpacity
                            }
                        }
                    }
                } // ac

                Rectangle{
                    id: smartfan3
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image{
                        id:fan3
                        source: "qrc:/ui/assets/fan_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartfan3.opacity === deviceOpacity){
                                smartfan3.color = "white"
                                fan3.source = "qrc:/ui/assets/fan_on.png"
                                smartfan3.opacity = 1
                            }
                            else{
                                smartfan3.color = "black"
                                fan3.source = "qrc:/ui/assets/fan_off.png"
                                smartfan3.opacity = deviceOpacity
                            }
                        }
                    }
                } // fan

                Rectangle{
                    id: smartspeaker1
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image{
                        id:speaker1
                        source: "qrc:/ui/assets/speaker_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartspeaker1.opacity === deviceOpacity){
                                smartspeaker1.color = "white"
                                speaker1.source = "qrc:/ui/assets/speaker_on.png"
                                smartspeaker1.opacity = 1
                            }
                            else{
                                smartspeaker1.color = "black"
                                speaker1.source = "qrc:/ui/assets/speaker_off.png"
                                smartspeaker1.opacity = deviceOpacity
                            }
                        }
                    }
                } // speaker

            } // bedroom 2

            // kitchen
            Flow{
                Layout.fillHeight: true
                Layout.fillWidth: true
                padding: 20
                spacing: 15
                // flow: Flow.TopToBottom

                Rectangle{
                    id: smartfan4
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image{
                        id:fan4
                        source: "qrc:/ui/assets/fan_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartfan4.opacity === deviceOpacity){
                                smartfan4.color = "white"
                                fan4.source = "qrc:/ui/assets/fan_on.png"
                                smartfan4.opacity = 1
                            }
                            else{
                                smartfan4.color = "black"
                                fan4.source = "qrc:/ui/assets/fan_off.png"
                                smartfan4.opacity = deviceOpacity
                            }
                        }
                    }
                } // fan

                Rectangle{
                    // id: smartlamp
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor
                }
            } // kitchen

            Flow{
                Layout.fillHeight: true
                Layout.fillWidth: true
                padding: 20
                spacing: 15
                // flow: Flow.TopToBottom

                Rectangle{
                    id: smartcamera
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor

                    Image{
                        id:camera
                        source: "qrc:/ui/assets/camera_off.png"
                        anchors{
                            top: parent.top
                            left: parent.left
                            leftMargin: 20
                            topMargin: 17
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            number += 1

                            if(smartcamera.opacity === deviceOpacity){
                                smartcamera.color = "white"
                                camera.source = "qrc:/ui/assets/camera_on.png"
                                smartcamera.opacity = 1
                            }
                            else{
                                smartcamera.color = "black"
                                camera.source = "qrc:/ui/assets/camera_off.png"
                                smartcamera.opacity = deviceOpacity
                            }
                        }
                    }
                }
            } // camera

            Flow{
                Layout.fillHeight: true
                Layout.fillWidth: true
                padding: 20
                spacing: 15
                flow: Flow.TopToBottom

                Rectangle{
                    // id: smartcamera
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor
                }

                Rectangle{
                    // id: smartcamera
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor
                }

                Rectangle{
                    // id: smartcamera
                    width: 120
                    height: 120
                    radius: 10

                    opacity: deviceOpacity
                    color: deviceColor
                }
            } // flow-7

        } // gridlayout
    }
}
