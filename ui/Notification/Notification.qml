import QtQuick 2.15
import Qt5Compat.GraphicalEffects

Rectangle{
    id: notification
    anchors{
        right: parent.right
        rightMargin: 25
        top: topNavbar.bottom
        topMargin: 45
    }
    color: "transparent"
    Image {
        id: bg
        source: "qrc:/ui/assets/bg_img.png"
        anchors.fill: parent
        // fillMode: Image.PreserveAspectFit
    }

    DropShadow {
            anchors.fill: bg
            horizontalOffset: 0
            verticalOffset: 8
            radius: 8
            spread: 0
            samples: 17
            color: "#000000"
            source: bg
    }
    width: 250
    height: 300
    radius: 10

    Text{
        id: notificationText
        text: "Notification"
        font.bold: true
        font.pixelSize: 20
        color: "white"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 20
            leftMargin: 10
        }
    }

    Text{
        id: notification1
        font.pixelSize: 15
        color: "red"
        anchors{
            top: notificationText.bottom
            left: parent.left
            topMargin: 40
            leftMargin: 30
        }
        text: "Door Status : Locked"
    }

    Text{
        id: notification2
        font.pixelSize: 15
        color: "green"
        anchors{
            top: notification1.bottom
            left: parent.left
            topMargin: 20
            leftMargin: 30
        }
        text: "Wifi Connected : NXON-5G"
    }

    Text{
        id: notification3
        font.pixelSize: 15
        color: "green"
        anchors{
            top: notification2.bottom
            left: parent.left
            topMargin: 20
            leftMargin: 30
        }
        text: "Current Temperature : 36 C"
    }



    // Text{
    //     id: notification2
    //     text: "Your food will arrive in 20 minutes"
    //     color: "#23446b"
    //     font.pixelSize: 12
    //     anchors{
    //         top: notification1.bottom
    //         left: parent.left
    //         topMargin: 20
    //         leftMargin: 30
    //     }
    // }

}
