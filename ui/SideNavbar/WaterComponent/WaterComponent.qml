import QtQuick 2.15
import QtQuick.Controls
import "./Netflix"
import "./Hotstar"
import "./Prime"
import "./Youtube"

Rectangle{
    property bool netflixVisible: false
    property bool hotstarVisible: false

    property bool hover: false

    id: waterComponent
    anchors{
        top: electricityComponent.bottom
        left: parent.left
        right: parent.right
        // topMargin: 50
    }
    height: parent.height * 1/14

    color: "white"
    radius: 10

    // Window{
    //     id: ottplatformWindow
    //     visible: false
    //     width: 1920
    //     height: 980
    //     color: "#D3D3D3"
    //     Image {
    //         id: bgImage
    //         source: "qrc:/ui/assets/netflix_BG.webp"
    //         anchors{
    //             fill: parent
    //         }
    //     }

    //     Text {
    //         id: title
    //         text: qsTr("OTT Platforms")
    //         font.bold: true
    //         font.pixelSize: parent.height / 21
    //         font.family: "Helvetica"
    //         anchors{
    //             bottom : parent.bottom
    //             bottomMargin: parent.height/20
    //             right: parent.right
    //             rightMargin: parent.height/20
    //         }
    //         color: "white"
    //     }

    //     Netflix{
    //         id: netflix

    //         // Scale up effect onHover
    //         Timer {
    //             id: hoverTimer
    //             interval: 250 // Adjust the delay time in milliseconds
    //             repeat: false
    //             onTriggered: {
    //                 parent.scale = hover ? 1.2 : 1.0
    //                 color = "#282828"
    //             }
    //         }

    //         MouseArea{
    //             id: netflixMousearea
    //             hoverEnabled: true
    //             anchors.fill: parent

    //             onClicked: {
    //                 netflixWindow.visible = true
    //                 netflixSplashTimer.running = true
    //             }

    //             onEntered: {
    //                 hover = true
    //                 hoverTimer.start()
    //             }
    //             onExited: {
    //                 hover = false
    //                 hoverTimer.stop()
    //                 parent.scale =  1.0
    //             }
    //         }

    //     }


    //     // Netflix Window
    //     ApplicationWindow {
    //         id: netflixWindow
    //         visible: false
    //         width: 1920
    //         height: 1080
    //         color: "black"
    //         flags: Qt.Window | Qt.WindowTitleHint | Qt.WindowCloseButtonHint | Qt.WindowSystemMenuHint

    //         Text {
    //             id: text
    //             text: qsTr("Netflix");
    //             anchors.centerIn: parent
    //             font.pixelSize: 100
    //             color: "transparent"
    //         }


    //         // Splash screen
    //         Window {
    //             id: splashWindow1
    //             width: 400
    //             height: 400
    //             flags: Qt.SplashScreen | Qt.WindowStaysOnTopHint // Use SplashScreen flag to create a splash screen
    //             visible: !netflixVisible // Show splash screen when main content is not visible

    //             // Content of the splash screen
    //             Rectangle {
    //                 width: splashWindow1.width
    //                 height: splashWindow1.height
    //                 color: "black"

    //                 Image{
    //                     id: splashImage1
    //                     source:"qrc:/ui/assets/netflix_whole.png"
    //                     anchors.centerIn: parent
    //                     // fillMode: Image.PreserveAspectFit
    //                 }

    //             }

    //             // Timer to hide the splash screen after a delay
    //             Timer {
    //                 id: netflixSplashTimer
    //                 interval: 1500 // 3000 milliseconds = 3 seconds
    //                 running : false
    //                 repeat: false // Run only once
    //                 onTriggered: {
    //                     netflixVisible = true // Show the main content
    //                     splashWindow1.close(); // Close the splash screen window
    //                     // netflixWindow.color = "orange"
    //                     text.color = "red"
    //                 }

    //             }
    //         }

    //         // WebEngine{}

    //     }


    //     Hotstar{
    //         id: hotstar

    //         Timer {
    //             id: hoverTimer2
    //             interval: 250 // Adjust the delay time in milliseconds
    //             repeat: false
    //             onTriggered: {
    //                 parent.scale = hover ? 1.2 : 1.0
    //                 color = "#00126f"
    //             }
    //         }

    //         MouseArea{
    //             id: hotstarMousearea
    //             hoverEnabled: true
    //             anchors.fill: parent

    //             onClicked: {
    //                 hotstarWindow.visible = true
    //                 hotstarSplashTimer.running = true
    //             }

    //             onEntered: {
    //                 hover = true
    //                 hoverTimer2.start()
    //             }
    //             onExited: {
    //                 hover = false
    //                 hoverTimer2.stop()
    //                 parent.scale =  1.0
    //                 color = "#01147C"
    //             }
    //         }
    //     }

    //     // Netflix Window
    //     ApplicationWindow {
    //         id: hotstarWindow
    //         visible: false
    //         width: 1920
    //         height: 1080
    //         color: "black"
    //         flags: Qt.Window | Qt.WindowTitleHint | Qt.WindowCloseButtonHint | Qt.WindowSystemMenuHint

    //         Text {
    //             id: content
    //             text: qsTr("Hotstar");
    //             anchors.centerIn: parent
    //             font.pixelSize: 100
    //             color: "#01147C"
    //         }


    //         // Splash screen
    //         Window {
    //             id: splashWindow2
    //             width: 600
    //             height: 600
    //             flags: Qt.SplashScreen | Qt.WindowStaysOnTopHint // Use SplashScreen flag to create a splash screen
    //             visible: !hotstarVisible // Show splash screen when main content is not visible

    //             // Content of the splash screen
    //             Rectangle {
    //                 width: splashWindow2.width
    //                 height: splashWindow2.height
    //                 color: "black"

    //                 Image{
    //                     id: splashImage2
    //                     source:"qrc:/ui/assets/hotstar-logo.jpg"
    //                     anchors.centerIn: parent
    //                     // fillMode: Image.PreserveAspectFit
    //                 }

    //             }

    //             // Timer to hide the splash screen after a delay
    //             Timer {
    //                 id: hotstarSplashTimer
    //                 interval: 1500 // 3000 milliseconds = 3 seconds
    //                 running : false
    //                 repeat: false // Run only once
    //                 onTriggered: {
    //                     hotstarVisible = true // Show the main content
    //                     splashWindow2.close(); // Close the splash screen window
    //                     // netflixWindow.color = "orange"
    //                     text.color = "red"
    //                 }

    //             }
    //         }

    //         // WebEngine{}

    //     }

    //     Prime{
    //         id: prime
    //     }

    //     Youtube{
    //         id: youtube
    //     }
    // }

    Image{
        id: waterImage
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 75
        }
        height: parent.height * 0.40
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/waterIcon.png"
    }

    Text{
        id: waterText
        text: "OTT"
        anchors{
            left: waterImage.left
            leftMargin: 35
            verticalCenter: parent.verticalCenter
        }
        font.pixelSize: parent.width/20
        color: "#23446b"
    }

    MouseArea{
        id: waterMouseArea
        anchors.fill: parent
        hoverEnabled: true

        onClicked:{
            // stackView.push(Qt.resolvedUrl("../../pages/OttPage.qml"))
            loader.setSource(Qt.resolvedUrl("../../pages/OttPage.qml"))
        }

        onEntered: {
            waterText.color = "white"
            waterImage.source = "qrc:/ui/assets/waterIcon_w.png"
            parent.color = "#23446b"
        }
        onExited: {
            waterText.color = "#23446b"
            waterImage.source = "qrc:/ui/assets/waterIcon.png"
            parent.color = "#D3D3D3"
        }
    }
}
