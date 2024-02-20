import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts


Rectangle{
    property string checkedColor : "#e2c8b6"

    id: tvcomponent
    Layout.fillHeight: true
    Layout.fillWidth: true

    radius: 25
    color: root1.checked ?  "#B6D0E2" : "#908b8b"
    // gradient: Gradient {
    //         GradientStop { position: 0.5; color: root1.checked ?  "#B6D0E2" : "#bdbdbd"}
    //         GradientStop { position: 0.5; color: root1.checked ? "#B6D0E2" : "#908b8b" }
    //         orientation: Gradient.Horizontal
    // }

    Image{
        id: tvImg
        source: "qrc:/ui/assets/television.png"
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
        text: "Android TV"
        font.pixelSize: 18
        font.bold: true
        color: "#23446b"
        anchors{
            top: tvImg.bottom
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
