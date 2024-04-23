import QtQuick 2.15

Rectangle{
    id: topNavbar
    anchors{
        right: parent.right
        top: parent.top
    }
    // radius: 10
    height: parent.height / 12
    width: maincontent.width

    DragHandler{
        onActiveChanged: if(active){
                             mainWindow.startSystemMove()
                         }
    }

    Text{
        id: textNavbar
        anchors{
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 50
        }
        font.pixelSize: topNavbar.height * 1/4
        font.bold: true
        text: "MetaHome"
        // color: "#274C77"
        color: "white"
    }

    // Text{
    //     id: timeNavbar
    //     anchors{
    //         left: textNavbar.right
    //         bottom: textNavbar.bottom
    //         leftMargin: topNavbar.width * 1/25
    //     }
    //     font.pixelSize: topNavbar.height * 1/4
    //     color: "#516F91"
    //     text: systemHandler.currentTime

    // }

    // Text{
    //     id: dateNavbar
    //     anchors{
    //         left: timeNavbar.right
    //         bottom: timeNavbar.bottom
    //         leftMargin: topNavbar.width * 1/25
    //     }
    //     font.pixelSize: topNavbar.height * 1/4
    //     color: "#516F91"
    //     text: systemHandler.currentDate
    // }

    Text{
        id: textNavbar2
        anchors{
        left: textNavbar.right
        bottom: textNavbar.bottom
        leftMargin: 70
    }
        font.pixelSize: topNavbar.height * 1/4
        font.bold: true
        // color: "#274C77"
        color: "white"
        text: "Customize Dashboard"
    }

    Text{
        id: userName
        anchors{
            right: parent.right
            bottom: textNavbar2.bottom
            rightMargin: topNavbar.width * 1/4
        }
        font.pixelSize: parent.height * 1/4
        font.bold: true
        // color: "#274C77"
        color: "white"
        text: "Hello"
    }

    Image{
        id: nxonLogo
        anchors{
            left: userName.right
            bottom: userName.bottom
            leftMargin: 10
        }
        height: parent.height * 0.35
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/nxon logo.png"
    }

    Image {
        id: appIcon
        anchors{
            left: nxonLogo.right
            bottom: nxonLogo.bottom
            leftMargin: 10
            verticalCenter: parent.verticalCenter
        }
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/app icon png.png"
    }

    Image{
        id: signOutImage
        anchors{
            right: topNavbar.right
            bottom: appIcon.bottom
            rightMargin: parent.width * 1/25
            verticalCenter: parent.verticalCenter
        }
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/SignOut.png"

        MouseArea{
            hoverEnabled: true
            anchors.fill: signOutImage
            // onEntered:{
            //     signOutImage.scale = 1.1
            // }
            // onExited:{
            //     signOutImage.scale = 1.0
            // }

            onClicked: {
                Qt.quit();
            }
        }
    }

    // Connections{
    //     target: m_datetimeHandler
    // }
}
