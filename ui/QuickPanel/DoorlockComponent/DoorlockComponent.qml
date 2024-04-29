import QtQuick 2.15
import QtQuick.Controls 2.0

// Rectangle{
//     id: doorlockComponent
//     property color checkedColor : "#23446b"
//     anchors{
//         top: cctvImage.bottom
//         left: parent.left
//     }
    Text{
        id: doorlockText
        text: "Door Lock"
        anchors{
            left: doorUnlockImage.right
            top: cctvComponent.bottom
            leftMargin: 5
            topMargin: 30
        }
        color: "#E2DFD2"
        font.pixelSize: 12
    }


// }

