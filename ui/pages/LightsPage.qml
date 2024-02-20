import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls

Item {
    // brightness window
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
                visible: false
                anchors.fill: parent
                pressed: true
                value: 25
                from: 1
                to: 100
                height: parent.height
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

        implicitHeight: mainWindow.height * 11/12
        implicitWidth: mainWindow.width * 3/4

        color: "#000042"

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

                        Image {
                            id: frontRoomImg
                            source: "qrc:/ui/assets/smarthome_f.png"
                            fillMode: Image.PreserveAspectFit
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 10
                            Layout.topMargin: 20
                        }

                        Text{
                            text: "Front Room"
                            color: "white"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
                            Layout.leftMargin: 10
                            Layout.topMargin: 10
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
                    onClicked:{
                       brightnessWindow.visible = true
                    }

                    onEntered: {
                        frontRoom.color = "#92da06"
                        frontRoomImg.source = "qrc:/ui/assets/smarthome_b.png"
                        // hover1 = true
                        // hoverTimer1.start()
                    }
                    onExited: {
                        // hover1 = false
                        // hoverTimer1.stop()
                        frontRoomImg.source = "qrc:/ui/assets/smarthome_f.png"
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

                        Image {
                            id: backYardImg
                            source: "qrc:/ui/assets/smarthome_f.png"
                            fillMode: Image.PreserveAspectFit
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 10
                            Layout.topMargin: 20
                        }

                        Text{
                            text: "Backyard"
                            color: "white"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
                            Layout.leftMargin: 10
                            Layout.topMargin: 10
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
                        onClicked:{
                           brightnessWindow.visible = true
                        }
                        onEntered: {
                            backyard.color = "#92da06"
                            backYardImg.source = "qrc:/ui/assets/smarthome_b.png"
                            // hover2 = true
                            // hoverTimer2.start()
                        }
                        onExited: {
                            // hover2 = false
                            // hoverTimer2.stop()
                            backYardImg.source = "qrc:/ui/assets/smarthome_f.png"
                            backyard.color = "#073763"
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

                        Image {
                            id: entranceImg
                            source: "qrc:/ui/assets/smarthome_f.png"
                            fillMode: Image.PreserveAspectFit
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 10
                            Layout.topMargin: 20
                        }

                        Text{
                            text: "Entrance"
                            color: "white"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
                            Layout.leftMargin: 10
                            Layout.topMargin: 10
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
                    onClicked:{
                       brightnessWindow.visible = true
                    }
                    onEntered: {
                        entrance.color = "#92da06"
                        entranceImg.source = "qrc:/ui/assets/smarthome_b.png"
                        // hover3 = true
                        // hoverTimer3.start()
                    }
                    onExited: {
                        // hover3 = false
                        // hoverTimer3.stop()
                        entranceImg.source = "qrc:/ui/assets/smarthome_f.png"
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

                        Image {
                            id: livingRoomImg
                            source: "qrc:/ui/assets/smarthome_f.png"
                            fillMode: Image.PreserveAspectFit
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 10
                            Layout.topMargin: 20
                        }

                        Text{
                            text: "Living Room"
                            color: "white"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
                            Layout.leftMargin: 10
                            Layout.topMargin: 10
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
                    onClicked:{
                       brightnessWindow.visible = true
                    }
                    onEntered: {
                        livingRoom.color = "#92da06"
                        livingRoomImg.source = "qrc:/ui/assets/smarthome_b.png"
                        // hover4 = true
                        // hoverTimer4.start()
                    }
                    onExited: {
                        // hover4 = false
                        // hoverTimer4.stop()
                        livingRoomImg.source = "qrc:/ui/assets/smarthome_f.png"
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

                        Image {
                            id: workstationImg
                            source: "qrc:/ui/assets/smarthome_f.png"
                            fillMode: Image.PreserveAspectFit
                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                            Layout.leftMargin: 10
                            Layout.topMargin: 20
                        }

                        Text{
                            text: "Work Station"
                            color: "white"
                            Layout.alignment: Qt.AlignLeft | Qt.AlignBottomm
                            Layout.leftMargin: 20
                            Layout.topMargin: 10
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
                    onClicked:{
                       brightnessWindow.visible = true
                    }
                    onEntered: {
                        workstation.color = "#92da06"
                        workstationImg.source = "qrc:/ui/assets/smarthome_b.png"
                        // hover5 = true
                        // hoverTimer5.start()
                    }
                    onExited: {
                        // hover5 = false
                        // hoverTimer5.stop()
                        workstationImg.source = "qrc:/ui/assets/smarthome_f.png"
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
                            id: addnewText
                            text: "Add New +"
                            color: "orange"
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.leftMargin: 40
                            font.pixelSize: 15
                        }

                    }
                    Text{
                        text: "..."
                        color: "white"
                        Layout.alignment: Qt.AlignRight | Qt.AlignTop
                        Layout.topMargin: 20
                        Layout.rightMargin: 20
                        font.pixelSize: 25
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
                        // hover6 = true
                        // hoverTimer6.start()
                        addNew.color = "orange"
                        addnewText.color = "black"
                    }
                    onExited: {
                        // hover6 = false
                        // hoverTimer6.stop()
                        parent.scale =  1.0
                        addNew.color = "#073763"
                        addnewText.color = "orange"
                    }
                }

            } // Add New rectangle

        } // Grid Layout

    }
}
