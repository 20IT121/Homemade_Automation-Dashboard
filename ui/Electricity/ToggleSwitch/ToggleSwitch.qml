import QtQuick 2.0
import QtQuick.Controls 2.0

Switch {
    id: root
    property color checkedColor: "#eaeaea"

    anchors{
        top: quickpanelText.bottom
        left: lightsText.right
        topMargin: 30
        leftMargin: 80
    }
    hoverEnabled: true

    indicator: Rectangle {

        width: electricity.width - 40
        height: 22
        radius: height / 3
        color: root.checked ? checkedColor : "#eaeaea"
        border.width: 2
        border.color: root.checked ? checkedColor : "#E5E5E5"

        Rectangle {
            id: innerSwitch
            x: root.checked ? parent.width - width - 2 : 1
            // width: root.checked ? parent.height - 8 : parent.height - 6
            width: parent.width/2
            height: parent.height
            radius: parent.height / 3
            anchors.verticalCenter: parent.verticalCenter
            color: "#AAB7C6"
            border.color: "#D5D5D5"
            Behavior on x {
                NumberAnimation { duration: 200 }
            }
        }
        Text {
            id: dailyText
            text: qsTr("Daily")
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: innerSwitch.width/2 -10
            color: "#23446b"
        }
        Text {
            id: weeklyText
            text: qsTr("Weekly")
            anchors.right:  parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: innerSwitch.width/2 -10
            color: "#23446b"
        }
    }
}
