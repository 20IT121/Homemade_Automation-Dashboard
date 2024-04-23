import QtQuick 2.15
import QtQuick.Layouts 2.15
import QtQuick.Controls 2.15

Item {
    // brightness window
    property color checkedColor: "#FFEA00"
    Window{
        id: brightnessWindow
        title: "Brightness Control"
        visible: false
        width: 300
        height: 450
        color: "#D3D3D3"
        flags: Qt.Window | Qt.WindowTitleHint | Qt.WindowCloseButtonHint | Qt.WindowSystemMenuHint | Qt.WindowStaysOnTopHint


        Rectangle{
            id: brightnessBar
            anchors.margins: 10
            anchors.fill: parent
            // anchors.bottom: parent.bottom
            radius: 30
            border.color: "#D3D3D3"
            // border.width: 2


            Slider{
                id: lightSlider
                visible: true
                anchors.fill: parent
                pressed: true
                value: 25
                from: 1
                to: 100
                height: parent.height
                orientation: "Vertical"

                // handle: Rectangle{
                //     property int handleY: lightSlider.topPadding + lightSlider.availableHeight / 2 - height / 2
                //     y: lightSlider.leftPadding + lightSlider.visualPosition * (lightSlider.availableWidth - width)
                //     x: Math.max(lightSlider.topPadding, Math.min(handleY, lightSlider.availableHeight - height + lightSlider.topPadding))
                //     width: 30
                //     height: 10
                //     radius: 5
                //     color: 'green'
                // }
            }

            Image {
                id: image
                source: "qrc:/ui/assets/brightness.png"
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit

            }

            MouseArea{
                id: brightnessBarMouseArea
                onClicked: {
                    // brightnessBar.border = "transparent"
                }
            }
        }
    }

    Rectangle{
        id: lightsPage

        implicitHeight: mainWindow.height
        implicitWidth: mainWindow.width * 4/5

        Image{
            anchors.fill: parent
            source: "qrc:/ui/assets/Background.jpg"
        }

        Flow{
            anchors.fill: parent
            padding: 100
            spacing: 45
            flow: Flow.TopToBottom

            Rectangle{
                id: smartlamp
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: parent.left
                //     top: parent.top
                //     leftMargin: 100
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_1
                    anchors{
                        right: smartlamp.right
                        // rightMargin: -3
                        top: smartlamp.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_1.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID
                            x: root_1.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb
                    source: root_1.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp1
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_2
                    anchors{
                        right: smartlamp1.right
                        // rightMargin: -3
                        top: smartlamp1.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_2.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID1
                            x: root_2.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb1
                    source: root_2.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp2
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp1.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_3
                    anchors{
                        right: smartlamp2.right
                        // rightMargin: -3
                        top: smartlamp2.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_3.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID2
                            x: root_3.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb2
                    source: root_3.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp3
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp2.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_4
                    anchors{
                        right: smartlamp3.right
                        // rightMargin: -3
                        top: smartlamp3.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_4.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID3
                            x: root_4.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb3
                    source: root_4.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp4
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp3.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_5
                    anchors{
                        right: smartlamp4.right
                        // rightMargin: -3
                        top: smartlamp4.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_5.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID4
                            x: root_5.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb4
                    source: root_5.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp5
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp4.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_6
                    anchors{
                        right: smartlamp5.right
                        // rightMargin: -3
                        top: smartlamp5.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_6.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID5
                            x: root_6.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb5
                    source: root_6.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp6
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp5.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_7
                    anchors{
                        right: smartlamp6.right
                        // rightMargin: -3
                        top: smartlamp6.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_7.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID6
                            x: root_7.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb6
                    source: root_7.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp7
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp6.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_8
                    anchors{
                        right: smartlamp7.right
                        // rightMargin: -3
                        top: smartlamp7.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_8.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID7
                            x: root_8.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb7
                    source: root_8.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp8
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: parent.left
                //     top: parent.top
                //     leftMargin: 100
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_9
                    anchors{
                        right: smartlamp8.right
                        // rightMargin: -3
                        top: smartlamp8.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_9.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID8
                            x: root_9.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb8
                    source: root_9.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp9
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_10
                    anchors{
                        right: smartlamp9.right
                        // rightMargin: -3
                        top: smartlamp9.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_10.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID9
                            x: root_10.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb9
                    source: root_10.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp10
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp1.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_11
                    anchors{
                        right: smartlamp10.right
                        // rightMargin: -3
                        top: smartlamp10.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_11.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID10
                            x: root_11.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb10
                    source: root_11.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp11
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp2.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_12
                    anchors{
                        right: smartlamp11.right
                        // rightMargin: -3
                        top: smartlamp11.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_12.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID11
                            x: root_12.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb11
                    source: root_12.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp12
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp3.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_13
                    anchors{
                        right: smartlamp12.right
                        // rightMargin: -3
                        top: smartlamp12.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_13.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID12
                            x: root_13.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb12
                    source: root_13.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp13
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp4.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_14
                    anchors{
                        right: smartlamp13.right
                        // rightMargin: -3
                        top: smartlamp13.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_14.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID13
                            x: root_14.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb13
                    source: root_14.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp14
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp5.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_15
                    anchors{
                        right: smartlamp14.right
                        // rightMargin: -3
                        top: smartlamp14.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_15.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID14
                            x: root_15.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb14
                    source: root_15.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp15
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp6.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_16
                    anchors{
                        right: smartlamp15.right
                        // rightMargin: -3
                        top: smartlamp15.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_16.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID15
                            x: root_16.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb15
                    source: root_16.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }

            Rectangle{
                id: smartlamp16
                width: 120
                height: 120
                radius: 10
                // anchors{
                //     left: smartlamp6.right
                //     top: parent.top
                //     leftMargin: 30
                //     topMargin: 100
                // }
                opacity: 0.6
                color: "black"

                Switch {
                    id: root_17
                    anchors{
                        right: smartlamp16.right
                        // rightMargin: -3
                        top: smartlamp16.top
                        topMargin: 10
                    }

                    indicator: Rectangle {

                        width: 40
                        height: 20
                        radius: height / 2
                        color: root_17.checked ? checkedColor : "#AAB7C6"
                        border.width: 2
                        border.color: "black"

                        Rectangle {
                            id: randomID16
                            x: root_17.checked ? parent.width - width - 2 : 1
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
                }

                Image {
                    id: bulb16
                    source: root_17.checked ? "qrc:/ui/assets/lightbulb_on.png" : "qrc:/ui/assets/lightbulb_off.png"
                    anchors{
                        top: parent.top
                        topMargin: 10
                        left: parent.left
                        leftMargin: 10
                    }
                }
            }
        }



        // GridLayout{
        //     id: gridLayout
        //     columns: 2
        //     columnSpacing: 20
        //     rowSpacing: 20
        //     anchors.fill: parent
        //     anchors.margins: 50

        //     Rectangle{
        //         id: frontRoom

        //         radius: 25
        //         color: "#073763"
        //         Layout.fillHeight: true
        //         Layout.fillWidth: true
        //         border.color: "black"
        //         border.width: 2

        //         RowLayout{
        //             anchors.fill: parent
        //             Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        //             ColumnLayout{
        //                 Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        //                 spacing: 20

        //                 Image {
        //                     id: frontRoomImg
        //                     source: "qrc:/ui/assets/smarthome_f.png"
        //                     fillMode: Image.PreserveAspectFit
        //                     Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        //                     Layout.leftMargin: 10
        //                     Layout.topMargin: 20
        //                 }

        //                 Text{
        //                     text: "Front Room"
        //                     color: "white"
        //                     Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
        //                     Layout.leftMargin: 10
        //                     Layout.topMargin: 10
        //                     font.pixelSize: 15
        //                 }
        //             }
        //             Text{
        //                 text: "..."
        //                 color: "white"
        //                 Layout.alignment: Qt.AlignRight | Qt.AlignTop
        //                 Layout.topMargin: 30
        //                 Layout.rightMargin: 20
        //                 font.pixelSize: 25
        //             }
        //         }

        //         Timer {
        //             id: hoverTimer1
        //             interval: 250 // Adjust the delay time in milliseconds
        //             repeat: false
        //             onTriggered: {
        //                 parent.scale = hover1 ? 1.15 : 1.0
        //                 color = "#1c1c84"
        //             }
        //         }

        //         MouseArea{
        //             id: frontRoomMousearea
        //             hoverEnabled: true
        //             anchors.fill: parent
        //             onClicked:{
        //                brightnessWindow.visible = true
        //             }

        //             onEntered: {
        //                 frontRoom.color = "#92da06"
        //                 frontRoomImg.source = "qrc:/ui/assets/smarthome_b.png"
        //                 // hover1 = true
        //                 // hoverTimer1.start()
        //             }
        //             onExited: {
        //                 // hover1 = false
        //                 // hoverTimer1.stop()
        //                 frontRoomImg.source = "qrc:/ui/assets/smarthome_f.png"
        //                 frontRoom.color = "#073763"
        //             }
        //         }

        //     } // front room rectangle

        //     Rectangle{
        //         id: backyard

        //         radius: 25
        //         color: "#073763"
        //         Layout.fillHeight: true
        //         Layout.fillWidth: true
        //         border.color: "black"
        //         border.width: 2

        //         RowLayout{
        //             anchors.fill: parent
        //             Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        //             ColumnLayout{
        //                 Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        //                 spacing: 20

        //                 Image {
        //                     id: backYardImg
        //                     source: "qrc:/ui/assets/smarthome_f.png"
        //                     fillMode: Image.PreserveAspectFit
        //                     Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        //                     Layout.leftMargin: 10
        //                     Layout.topMargin: 20
        //                 }

        //                 Text{
        //                     text: "Backyard"
        //                     color: "white"
        //                     Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
        //                     Layout.leftMargin: 10
        //                     Layout.topMargin: 10
        //                     font.pixelSize: 15
        //                 }

        //             }

        //             Text{
        //                 text: "..."
        //                 color: "white"
        //                 Layout.alignment: Qt.AlignRight | Qt.AlignTop
        //                 Layout.topMargin: 30
        //                 Layout.rightMargin: 20
        //                 font.pixelSize: 25
        //             }

        //         }

        //         Timer {
        //                 id: hoverTimer2
        //                 interval: 250 // Adjust the delay time in milliseconds
        //                 repeat: false
        //                 onTriggered: {
        //                     parent.scale = hover2 ? 1.15 : 1.0
        //                     color = "#1c1c84"
        //                 }
        //             }

        //             MouseArea{
        //                 id: backyardMousearea
        //                 hoverEnabled: true
        //                 anchors.fill: parent
        //                 onClicked:{
        //                    brightnessWindow.visible = true
        //                 }
        //                 onEntered: {
        //                     backyard.color = "#92da06"
        //                     backYardImg.source = "qrc:/ui/assets/smarthome_b.png"
        //                     // hover2 = true
        //                     // hoverTimer2.start()
        //                 }
        //                 onExited: {
        //                     // hover2 = false
        //                     // hoverTimer2.stop()
        //                     backYardImg.source = "qrc:/ui/assets/smarthome_f.png"
        //                     backyard.color = "#073763"
        //                 }
        //             }
        //     } // backyard rectangle

        //     Rectangle{
        //         id: entrance

        //         radius: 25
        //         color: "#073763"
        //         Layout.fillHeight: true
        //         Layout.fillWidth: true
        //         border.color: "black"
        //         border.width: 2

        //         RowLayout{
        //             anchors.fill: parent
        //             Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        //             ColumnLayout{
        //                 Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        //                 spacing: 20

        //                 Image {
        //                     id: entranceImg
        //                     source: "qrc:/ui/assets/smarthome_f.png"
        //                     fillMode: Image.PreserveAspectFit
        //                     Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        //                     Layout.leftMargin: 10
        //                     Layout.topMargin: 20
        //                 }

        //                 Text{
        //                     text: "Entrance"
        //                     color: "white"
        //                     Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
        //                     Layout.leftMargin: 10
        //                     Layout.topMargin: 10
        //                     font.pixelSize: 15
        //                 }
        //             }
        //             Text{
        //                 text: "..."
        //                 color: "white"
        //                 Layout.alignment: Qt.AlignRight | Qt.AlignTop
        //                 Layout.topMargin: 30
        //                 Layout.rightMargin: 20
        //                 font.pixelSize: 25
        //             }
        //         }

        //         Timer {
        //             id: hoverTimer3
        //             interval: 250 // Adjust the delay time in milliseconds
        //             repeat: false
        //             onTriggered: {
        //                 parent.scale = hover3 ? 1.15 : 1.0
        //                 color = "#1c1c84"
        //             }
        //         }

        //         MouseArea{
        //             id: entranceMousearea
        //             hoverEnabled: true
        //             anchors.fill: parent
        //             onClicked:{
        //                brightnessWindow.visible = true
        //             }
        //             onEntered: {
        //                 entrance.color = "#92da06"
        //                 entranceImg.source = "qrc:/ui/assets/smarthome_b.png"
        //                 // hover3 = true
        //                 // hoverTimer3.start()
        //             }
        //             onExited: {
        //                 // hover3 = false
        //                 // hoverTimer3.stop()
        //                 entranceImg.source = "qrc:/ui/assets/smarthome_f.png"
        //                 entrance.color = "#073763"
        //             }
        //         }

        //     } // entrance rectangle

        //     Rectangle{
        //         id: livingRoom

        //         radius: 25
        //         color: "#073763"
        //         Layout.fillHeight: true
        //         Layout.fillWidth: true
        //         border.color: "black"
        //         border.width: 2

        //         RowLayout{
        //             anchors.fill: parent
        //             Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        //             ColumnLayout{
        //                 Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        //                 spacing: 20

        //                 Image {
        //                     id: livingRoomImg
        //                     source: "qrc:/ui/assets/smarthome_f.png"
        //                     fillMode: Image.PreserveAspectFit
        //                     Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        //                     Layout.leftMargin: 10
        //                     Layout.topMargin: 20
        //                 }

        //                 Text{
        //                     text: "Living Room"
        //                     color: "white"
        //                     Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
        //                     Layout.leftMargin: 10
        //                     Layout.topMargin: 10
        //                     font.pixelSize: 15
        //                 }

        //             }
        //             Text{
        //                 text: "..."
        //                 color: "white"
        //                 Layout.alignment: Qt.AlignRight | Qt.AlignTop
        //                 Layout.topMargin: 30
        //                 Layout.rightMargin: 20
        //                 font.pixelSize: 25
        //             }
        //         }

        //         Timer {
        //             id: hoverTimer4
        //             interval: 250 // Adjust the delay time in milliseconds
        //             repeat: false
        //             onTriggered: {
        //                 parent.scale = hover4 ? 1.15 : 1.0
        //                 color = "#1c1c84"
        //             }
        //         }

        //         MouseArea{
        //             id: livingRoomMousearea
        //             hoverEnabled: true
        //             anchors.fill: parent
        //             onClicked:{
        //                brightnessWindow.visible = true
        //             }
        //             onEntered: {
        //                 livingRoom.color = "#92da06"
        //                 livingRoomImg.source = "qrc:/ui/assets/smarthome_b.png"
        //                 // hover4 = true
        //                 // hoverTimer4.start()
        //             }
        //             onExited: {
        //                 // hover4 = false
        //                 // hoverTimer4.stop()
        //                 livingRoomImg.source = "qrc:/ui/assets/smarthome_f.png"
        //                 livingRoom.color = "#073763"
        //             }
        //         }

        //     } // livingRoom rectangle

        //     Rectangle{
        //         id: workstation

        //         radius: 25
        //         color: "#073763"
        //         Layout.fillHeight: true
        //         Layout.fillWidth: true
        //         border.color: "black"
        //         border.width: 2

        //         RowLayout{
        //             anchors.fill: parent
        //             Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        //             ColumnLayout{
        //                 Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        //                 spacing: 20

        //                 Image {
        //                     id: workstationImg
        //                     source: "qrc:/ui/assets/smarthome_f.png"
        //                     fillMode: Image.PreserveAspectFit
        //                     Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        //                     Layout.leftMargin: 10
        //                     Layout.topMargin: 20
        //                 }

        //                 Text{
        //                     text: "Work Station"
        //                     color: "white"
        //                     Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
        //                     Layout.leftMargin: 20
        //                     Layout.topMargin: 10
        //                     font.pixelSize: 15
        //                 }

        //             }
        //             Text{
        //                 text: "..."
        //                 color: "white"
        //                 Layout.alignment: Qt.AlignRight | Qt.AlignTop
        //                 Layout.topMargin: 30
        //                 Layout.rightMargin: 20
        //                 font.pixelSize: 25
        //             }
        //         }

        //         Timer {
        //             id: hoverTimer5
        //             interval: 250 // Adjust the delay time in milliseconds
        //             repeat: false
        //             onTriggered: {
        //                 parent.scale = hover5 ? 1.15 : 1.0
        //                 color = "#1c1c84"
        //             }
        //         }

        //         MouseArea{
        //             id: workstationMousearea
        //             hoverEnabled: true
        //             anchors.fill: parent
        //             onClicked:{
        //                brightnessWindow.visible = true
        //             }
        //             onEntered: {
        //                 workstation.color = "#92da06"
        //                 workstationImg.source = "qrc:/ui/assets/smarthome_b.png"
        //                 // hover5 = true
        //                 // hoverTimer5.start()
        //             }
        //             onExited: {
        //                 // hover5 = false
        //                 // hoverTimer5.stop()
        //                 workstationImg.source = "qrc:/ui/assets/smarthome_f.png"
        //                 workstation.color = "#073763"
        //             }
        //         }

        //     } // My workstation rectangle

        //     Rectangle{
        //         id: addNew

        //         radius: 25
        //         color: "#073763"
        //         Layout.fillHeight: true
        //         Layout.fillWidth: true
        //         border.color: "orange"
        //         border.width: 2

        //         RowLayout{
        //             anchors.fill: parent
        //             Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

        //             ColumnLayout{
        //                 Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        //                 spacing: 20

        //                 Text{
        //                     id: addnewText
        //                     text: "Add New +"
        //                     color: "orange"
        //                     Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        //                     Layout.leftMargin: 40
        //                     font.pixelSize: 15
        //                 }

        //             }
        //             Text{
        //                 text: "..."
        //                 color: "white"
        //                 Layout.alignment: Qt.AlignRight | Qt.AlignTop
        //                 Layout.topMargin: 20
        //                 Layout.rightMargin: 20
        //                 font.pixelSize: 25
        //             }
        //         }

        //         Timer {
        //             id: hoverTimer6
        //             interval: 250 // Adjust the delay time in milliseconds
        //             repeat: false
        //             onTriggered: {
        //                 parent.scale = hover6 ? 1.15 : 1.0
        //                 color = "#1c1c84"
        //             }
        //         }

        //         MouseArea{
        //             id: addNewMousearea
        //             hoverEnabled: true
        //             anchors.fill: parent

        //             onEntered: {
        //                 // hover6 = true
        //                 // hoverTimer6.start()
        //                 addNew.color = "orange"
        //                 addnewText.color = "black"
        //             }
        //             onExited: {
        //                 // hover6 = false
        //                 // hoverTimer6.stop()
        //                 parent.scale =  1.0
        //                 addNew.color = "#073763"
        //                 addnewText.color = "orange"
        //             }
        //         }

        //     } // Add New rectangle

        // } // Grid Layout

    }
}
