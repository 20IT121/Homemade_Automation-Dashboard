import QtQuick 2.15
import QtQuick.Layouts 1.0
import QtQuick.Controls 1.0

Rectangle{
    property string checkedColor : "#e2c8b6"

    id: wificomponent
    width: 200
    height: 200

    radius: 25
    color: root1.checked ? "#e2b6ba" : "#908b8b"
    border.color: "black"

    Image{
        visible: false
        id: wifiImg
        source: root1.checked ? "qrc:/ui/assets/ac_on.png" : "qrc:/ui/assets/ac_off.png"
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }

    Text{
        id: onoffText
        text: root1.checked ? "ON" : "OFF"
        color: "#23446b"
        anchors{
            top: parent.top
            left: parent.left
            topMargin: 20
            leftMargin: 30
        }
        font.pixelSize: 15
    }

    Text{
        text: "Wi-Fi"
        font.pixelSize: 18
        font.bold: true
        color: "#23446b"
        anchors{
            top: wifiImg.bottom
            horizontalCenter: parent.horizontalCenter
            topMargin: 15
        }

    }

    Switch {
        id: root1
        anchors{
            top: parent.top
            right : parent.right
            topMargin: 20
            rightMargin: 30
        }

        hoverEnabled: true
        indicator: Rectangle {


            width: 38
            height: 20
            radius: height / 2
            color: root1.checked ? checkedColor : "#AAB7C6"
            border.width: 2
            border.color: "#E5E5E5"


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

}
