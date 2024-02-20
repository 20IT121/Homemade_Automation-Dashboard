import QtQuick 2.15
import QtQuick.Layouts

Rectangle{

    width: 300
    height: 150

    color: "#01147C"
    radius: 10

    Image {
        id: hotstar
        source: "qrc:/ui/assets/hotstar.png"
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }

    // Scale up effect onHover
}
