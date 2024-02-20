import QtQuick 2.15
import QtQuick.Controls 2.0


Text{
    id: musicText
    // property color checkedColor : "#23446b"

    text: "Music"
    anchors{
        left: musicImage.right
        top: lightsComponent.bottom
        leftMargin: 5
        topMargin: 30
    }
    color: "#23446b"
    font.pixelSize: 12

}
