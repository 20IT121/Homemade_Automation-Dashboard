import QtQuick 2.15

Rectangle{
    id: notification
    anchors{
        right: parent.right
        rightMargin: 25
        top: parent.top
        topMargin: 35
    }
    color: "white"
    width: 250
    height: 300
    radius: 10

    Text{
        id: notificationText
        text: "Notification"
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

    Text{
        id: notification1
        // text: wifiHandler.get_Available_Wifi_Networks()
        font.pixelSize: 12
        color: "#23446b"
        anchors{
            top: notificationText.bottom
            left: parent.left
            topMargin: 40
            leftMargin: 30
        }

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
