import QtQuick 2.15
import QtQuick.Layouts 1.0

Rectangle{
    property bool hover: false

    width: 300
    height: 150

    color: "#FF0000"
    radius: 10

    Image {
        id: youtube
        source: "qrc:/ui/assets/youtube.png"
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }

    // Scale up effect onHover
    Timer {
        id: hoverTimer
        interval: 250 // Adjust the delay time in milliseconds
        repeat: false
        onTriggered: {
            parent.scale = hover ? 1.2 : 1.0
            color = "#cc0000"
        }
    }

    MouseArea{
        id: youtubeMousearea
        hoverEnabled: true
        anchors.fill: parent
        onEntered: {
            hover = true
            hoverTimer.start()
        }
        onExited: {
            hover = false
            hoverTimer.stop()
            parent.scale =  1.0
        }
    }
}
