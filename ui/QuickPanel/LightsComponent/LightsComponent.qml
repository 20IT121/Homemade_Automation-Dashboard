import QtQuick 2.15
import QtQuick.Controls 2.0

Text{
    // property color checkedColor: "#23446b"
    id: lightsText
    text: "Lights"
    anchors{
        left: lightsImage.right
        top: quickpanelText.bottom
        leftMargin: 5
        topMargin: 30
    }
    color: "#E2DFD2"
    font.pixelSize: 12

}
