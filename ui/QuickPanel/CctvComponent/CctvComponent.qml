import QtQuick 2.15
import QtQuick.Controls 2.0

Text{
    id: cctvText
    // property color checkedColor : "#23446b"

    text: "CCTV Cam"
    anchors{
        left: cctvImage.right
        top: wifiComponent.bottom
        leftMargin: 5
        topMargin: 30
    }
    color: "#E2DFD2"
    font.pixelSize: 12


}
