import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle{
    property bool hover1 : false
    property bool hover2 : false
    property bool hover3 : false
    property bool hover4 : false
    property bool hover5 : false
    property bool hover6 : false

    id: lightComponent
    anchors{
        top: deviceComponent.bottom
        left: parent.left
        right: parent.right
        // topMargin: 50
    }
    height: parent.height * 1/14
    color: "white"
    radius: 10

    Image{
        id: lightImage
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 75
        }
        height: parent.height * 0.40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/lightsIcon.png"
    }

    Text{
        id: lightText
        text: "Lights"
        anchors{
            left: lightImage.left
            leftMargin: 35
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: parent.width/20
        color: "#23446b"
    }

    MouseArea{
        id: lightMouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            lightsWindow.visible = true
        }

        onEntered: {
            lightText.color = "white"
            lightImage.source = "qrc:/ui/assets/lightsIcon_w.png"
            parent.color = "#23446b"
        }
        onExited: {
            lightText.color = "#23446b"
            lightImage.source = "qrc:/ui/assets/lightsIcon.png"
            parent.color = "#D3D3D3"
        }
    }

    Window{
        id: lightsWindow
        visible: false
        width: 450
        // maximumWidth: 450
        height: 600
        // maximumHeight: 800
        color: "#000042"
        flags: Qt.Window | Qt.WindowTitleHint | Qt.WindowCloseButtonHint | Qt.CustomizeWindowHint | Qt.WindowStaysOnTopHint

        GridLayout{
            id: gridLayout
            columns: 2
            columnSpacing: 20
            rowSpacing: 20
            anchors.fill: parent
            anchors.margins: 50

            Rectangle{
                id: frontRoom

                radius: 25
                color: "#073763"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.color: "black"
                border.width: 2

                RowLayout{
                    anchors.fill: parent
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    ColumnLayout{
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        spacing: 20

                        Text{
                            text: "Front Room"
                            color: "white"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
                            Layout.leftMargin: 10
                            Layout.topMargin: 45
                            font.pixelSize: 15
                        }
                    }
                    Text{
                        text: "..."
                        color: "white"
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                        Layout.topMargin: 30
                        Layout.rightMargin: 20
                        font.pixelSize: 25
                    }
                }

                Timer {
                    id: hoverTimer1
                    interval: 250 // Adjust the delay time in milliseconds
                    repeat: false
                    onTriggered: {
                        parent.scale = hover1 ? 1.15 : 1.0
                        color = "#1c1c84"
                    }
                }

                MouseArea{
                    id: frontRoomMousearea
                    hoverEnabled: true
                    anchors.fill: parent
                    onEntered: {
                        frontRoom.color = "#92da06"
                        hover1 = true
                        hoverTimer1.start()
                    }
                    onExited: {
                        hover1 = false
                        hoverTimer1.stop()
                        parent.scale =  1.0
                        frontRoom.color = "#073763"
                    }
                }

            } // front room rectangle

            Rectangle{
                id: backyard

                radius: 25
                color: "#073763"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.color: "black"
                border.width: 2

                RowLayout{
                    anchors.fill: parent
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    ColumnLayout{
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        spacing: 20
                        Text{
                            text: "Backyard"
                            color: "white"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
                            Layout.leftMargin: 10
                            Layout.topMargin: 45
                            font.pixelSize: 15
                        }

                    }

                    Text{
                        text: "..."
                        color: "white"
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                        Layout.topMargin: 30
                        Layout.rightMargin: 20
                        font.pixelSize: 25
                    }

                }

                Timer {
                        id: hoverTimer2
                        interval: 250 // Adjust the delay time in milliseconds
                        repeat: false
                        onTriggered: {
                            parent.scale = hover2 ? 1.15 : 1.0
                            color = "#1c1c84"
                        }
                    }

                    MouseArea{
                        id: backyardMousearea
                        hoverEnabled: true
                        anchors.fill: parent
                        onEntered: {
                            hover2 = true
                            hoverTimer2.start()
                        }
                        onExited: {
                            hover2 = false
                            hoverTimer2.stop()
                            parent.scale =  1.0
                            color = "#073763"
                        }
                    }
            } // backyard rectangle

            Rectangle{
                id: entrance

                radius: 25
                color: "#073763"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.color: "black"
                border.width: 2

                RowLayout{
                    anchors.fill: parent
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    ColumnLayout{
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        spacing: 20

                        Text{
                            text: "Entrance"
                            color: "white"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
                            Layout.leftMargin: 10
                            Layout.topMargin: 45
                            font.pixelSize: 15
                        }
                    }
                    Text{
                        text: "..."
                        color: "white"
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                        Layout.topMargin: 30
                        Layout.rightMargin: 20
                        font.pixelSize: 25
                    }
                }

                Timer {
                    id: hoverTimer3
                    interval: 250 // Adjust the delay time in milliseconds
                    repeat: false
                    onTriggered: {
                        parent.scale = hover3 ? 1.15 : 1.0
                        color = "#1c1c84"
                    }
                }

                MouseArea{
                    id: entranceMousearea
                    hoverEnabled: true
                    anchors.fill: parent
                    onEntered: {
                        entrance.color = "#92da06"
                        hover3 = true
                        hoverTimer3.start()
                    }
                    onExited: {
                        hover3 = false
                        hoverTimer3.stop()
                        parent.scale =  1.0
                        entrance.color = "#073763"
                    }
                }

            } // entrance rectangle

            Rectangle{
                id: livingRoom

                radius: 25
                color: "#073763"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.color: "black"
                border.width: 2

                RowLayout{
                    anchors.fill: parent
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    ColumnLayout{
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        spacing: 20

                        Text{
                            text: "Living Room"
                            color: "white"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
                            Layout.leftMargin: 10
                            Layout.topMargin: 45
                            font.pixelSize: 15
                        }

                    }
                    Text{
                        text: "..."
                        color: "white"
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                        Layout.topMargin: 30
                        Layout.rightMargin: 20
                        font.pixelSize: 25
                    }
                }

                Timer {
                    id: hoverTimer4
                    interval: 250 // Adjust the delay time in milliseconds
                    repeat: false
                    onTriggered: {
                        parent.scale = hover4 ? 1.15 : 1.0
                        color = "#1c1c84"
                    }
                }

                MouseArea{
                    id: livingRoomMousearea
                    hoverEnabled: true
                    anchors.fill: parent
                    onEntered: {
                        livingRoom.color = "#92da06"
                        hover4 = true
                        hoverTimer4.start()
                    }
                    onExited: {
                        hover4 = false
                        hoverTimer4.stop()
                        parent.scale =  1.0
                        livingRoom.color = "#073763"
                    }
                }

            } // livingRoom rectangle

            Rectangle{
                id: workstation

                radius: 25
                color: "#073763"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.color: "black"
                border.width: 2

                RowLayout{
                    anchors.fill: parent
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    ColumnLayout{
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        spacing: 20

                        Text{
                            text: "My Work Station"
                            color: "white"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
                            Layout.leftMargin: 10
                            Layout.topMargin: 45
                            font.pixelSize: 15
                        }

                    }
                    Text{
                        text: "..."
                        color: "white"
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                        Layout.topMargin: 30
                        Layout.rightMargin: 20
                        font.pixelSize: 25
                    }
                }

                Timer {
                    id: hoverTimer5
                    interval: 250 // Adjust the delay time in milliseconds
                    repeat: false
                    onTriggered: {
                        parent.scale = hover5 ? 1.15 : 1.0
                        color = "#1c1c84"
                    }
                }

                MouseArea{
                    id: workstationMousearea
                    hoverEnabled: true
                    anchors.fill: parent
                    onEntered: {
                        workstation.color = "#92da06"
                        hover5 = true
                        hoverTimer5.start()
                    }
                    onExited: {
                        hover5 = false
                        hoverTimer5.stop()
                        parent.scale =  1.0
                        workstation.color = "#073763"
                    }
                }

            } // My workstation rectangle

            Rectangle{
                id: addNew

                radius: 25
                color: "#073763"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.color: "orange"
                border.width: 2

                RowLayout{
                    anchors.fill: parent
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

                    ColumnLayout{
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        spacing: 20

                        Text{
                            text: "Add New +"
                            color: "orange"
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.leftMargin: 25
                            Layout.bottomMargin: 30
                            font.pixelSize: 15
                        }
                        Text{
                            text: "..."
                            color: "white"
                            Layout.alignment: Qt.AlignRight | Qt.AlignTop
                            Layout.topMargin: 30
                            Layout.rightMargin: 30
                            font.pixelSize: 15
                        }
                    }
                }

                Timer {
                    id: hoverTimer6
                    interval: 250 // Adjust the delay time in milliseconds
                    repeat: false
                    onTriggered: {
                        parent.scale = hover6 ? 1.15 : 1.0
                        color = "#1c1c84"
                    }
                }

                MouseArea{
                    id: addNewMousearea
                    hoverEnabled: true
                    anchors.fill: parent
                    onEntered: {
                        hover6 = true
                        hoverTimer6.start()
                    }
                    onExited: {
                        hover6 = false
                        hoverTimer6.stop()
                        parent.scale =  1.0
                        color = "#073763"
                    }
                }

            } // front room rectangle

        } // Grid Layout

    } // Light Window

    // Slider{
    //     id: lightSlider
    //     visible: false
    //     anchors.fill: parent
    //     pressed: true
    //     value: 25
    //     from: 1
    //     to: 100
    //     height: parent.height
    // }
}
