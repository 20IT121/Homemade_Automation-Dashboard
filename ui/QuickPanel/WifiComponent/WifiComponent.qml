import QtQuick 2.15
import QtQuick.Controls 2.0

Text{
    id: wifiText
    // property color checkedColor : "#23446b"

    text: "Wi-fi"
    anchors{
        left: wifiImage.right
        top: musicComponent.bottom
        leftMargin: 5
        topMargin: 30
    }
    color: "#23446b"
    font.pixelSize: 12

}
