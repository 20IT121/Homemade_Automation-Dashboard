import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtMultimedia 6.0
import QtWebChannel 6.7
import "LightsComponent"
import "MusicComponent"
import "WifiComponent"
import "CctvComponent"
import "DoorlockComponent"

Rectangle{
    property color checkedColor : "#23446b"
    id: quickpanel
    anchors{
        right: parent.right
        rightMargin: 25
        top: notification.bottom
        topMargin: 25
    }
    color: "white"
    width: 250
    height: 300
    radius: 10

    Text{
        id: quickpanelText
        text: "Quick Panel"
        font.bold: true
        font.pixelSize: 20
        color: "#23446b"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 20
            leftMargin: 10
        }
    }

    Image {
        id: lightsImage
        source: "qrc:/ui/assets/lightsIcon.png"
        anchors{
            top: quickpanelText.bottom
            left: parent.left
            leftMargin: 20
            topMargin: 30
        }
    }

    LightsComponent{
        id: lightsComponent
    }

    // Light Switch
    Switch {
        id: root1
        anchors{
            bottom: lightsImage.bottom
            right : quickpanel.right
            bottomMargin: -10
            rightMargin: quickpanel.width * 1/23
        }

        hoverEnabled: true
        indicator: Rectangle {


            width: 38
            height: 20
            radius: height / 2
            color: root1.checked ? checkedColor : "#AAB7C6"
            border.width: 2
            border.color: root1.checked ? checkedColor : "#E5E5E5"


            Rectangle {

                x: root1.checked ? parent.width - width - 2 : 1
                width: root1.checked ? parent.height - 4 : parent.height - 2
                height: width
                radius: width / 2
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
        id: musicImage
        source: "qrc:/ui/assets/musicIcon.png"
        anchors{
            top: lightsImage.bottom
            left: parent.left
            leftMargin: 20
            topMargin: 20
        }
    }

    MusicComponent{
        id: musicComponent
    }

    property bool mainContentVisible: false
    // Music Window
    ApplicationWindow {
        id: musicWindow
        visible: root2.checked
        width: 300
        height: 300
        color: "transparent"
        flags: Qt.FramelessWindowHint

        Text {
            id: text
            text: qsTr("Inside the music window");
            anchors.centerIn: parent
            font.pixelSize: 20
            color: "transparent"
        }


        // Splash screen
        Window {
            id: splashWindow
            width: 200
            height: 200
            color: "#1DB954"
            flags: Qt.SplashScreen | Qt.WindowStaysOnTopHint // Use SplashScreen flag to create a splash screen
            visible: !mainContentVisible // Show splash screen when main content is not visible

            // Content of the splash screen
            Rectangle {
                width: splashWindow.width
                height: splashWindow.height
                color: "black"
                radius: parent.width/2

                Image{
                    id: splashImage
                    source:"qrc:/ui/assets/spotify.png"
                    anchors.centerIn: parent
                    // fillMode: Image.PreserveAspectFit
                }

            }

            // Timer to hide the splash screen after a delay
            Timer {
                interval: 1500 // 3000 milliseconds = 3 seconds
                running: root2.checked
                repeat: false // Run only once
                onTriggered: {

                    mainContentVisible = true; // Show the main content
                    splashWindow.close(); // Close the splash screen window
                    musicWindow.color = "orange"
                    text.color = "black"
                }

            }
        }

        // WebEngine{}

    }


    // Music Switch
    Switch {
        id: root2
        anchors{
            bottom: musicImage.bottom
            right : quickpanel.right
            bottomMargin: -10
            rightMargin: quickpanel.width * 1/23
        }

        hoverEnabled: true
        indicator: Rectangle {


            width: 38
            height: 20
            radius: height / 2
            color: root2.checked ? checkedColor : "#AAB7C6"
            border.width: 2
            border.color: root2.checked ? checkedColor : "#E5E5E5"


            Rectangle {

                x: root2.checked ? parent.width - width - 2 : 1
                width: root2.checked ? parent.height - 4 : parent.height - 2
                height: width
                radius: width / 2
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
        id: wifiImage
        source: "qrc:/ui/assets/wiFiIcon.png"
        anchors{
            top: musicImage.bottom
            left: parent.left
            leftMargin: 20
            topMargin: 20
        }
    }

    WifiComponent{
        id: wifiComponent
    }

    // wifi switch
    Switch {
        id: root3
        anchors{
            bottom: wifiImage.bottom
            right : quickpanel.right
            bottomMargin: -10
            rightMargin: quickpanel.width * 1/23
        }

        hoverEnabled: true
        indicator: Rectangle {


            width: 38
            height: 20
            radius: height / 2
            color: root3.checked ? checkedColor : "#AAB7C6"
            border.width: 2
            border.color: root3.checked ? checkedColor : "#E5E5E5"


            Rectangle {

                x: root3.checked ? parent.width - width - 2 : 1
                width: root3.checked ? parent.height - 4 : parent.height - 2
                height: width
                radius: width / 2
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
        id: cctvImage
        source: "qrc:/ui/assets/securityIcon.png"
        anchors{
            top: wifiImage.bottom
            left: parent.left
            leftMargin: 20
            topMargin: 20
        }
    }

    CctvComponent{
        id : cctvComponent
    }
    // Camera Window
    ApplicationWindow {
        visible: root4.checked
        width: 640
        height: 480
        id: cameraWindow
        flags: Qt.FramelessWindowHint

        Camera {
                id: camera
            }

        VideoOutput {
            id: viewfinder
            // source: camera
            // mediaObject: camera
            resources: camera
            anchors.fill: parent
        }

        Button {
            text: "Capture"
            anchors {
                bottom: parent.bottom
                horizontalCenter: parent.horizontalCenter
                bottomMargin: 20
            }
            onClicked: {
                camera.takeImage
            }
        }
    }

    Switch {
        id: root4
        anchors{
            bottom: cctvImage.bottom
            right : quickpanel.right
            bottomMargin: -10
            rightMargin: quickpanel.width * 1/23
        }

        hoverEnabled: true
        indicator: Rectangle {


            width: 38
            height: 20
            radius: height / 2
            color: root4.checked ? checkedColor : "#AAB7C6"
            border.width: 2
            border.color: root4.checked ? checkedColor : "#E5E5E5"


            Rectangle {

                x: root4.checked ? parent.width - width - 2 : 1
                width: root4.checked ? parent.height - 4 : parent.height - 2
                height: width
                radius: width / 2
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
        id: doorUnlockImage
        source: root5.checked ? "qrc:/ui/assets/lock.png" : "qrc:/ui/assets/unlock.png"
        anchors{
            top: cctvImage.bottom
            left: parent.left
            leftMargin: 20
            topMargin: 20
        }
    }

    DoorlockComponent{
        id : doorlockComponent

    }

    // Doorlock Switch
    Switch {
        id: root5
        anchors{
            bottom: doorUnlockImage.bottom
            right : quickpanel.right
            bottomMargin: -10
            rightMargin: quickpanel.width * 1/23
        }

        hoverEnabled: true
        indicator: Rectangle {

            width: 38
            height: 20
            radius: height / 2
            color: root5.checked ? checkedColor : "#AAB7C6"
            border.width: 2
            border.color: root5.checked ? checkedColor : "#E5E5E5"

            Rectangle {

                x: root5.checked ? parent.width - width - 2 : 1
                width: root5.checked ? parent.height - 4 : parent.height - 2
                height: width
                radius: width / 2
                anchors.verticalCenter: parent.verticalCenter
                color: "white"
                border.color: "#D5D5D5"


                Behavior on x {
                    NumberAnimation { duration: 200 }
                }
            }
        }
    }

}
