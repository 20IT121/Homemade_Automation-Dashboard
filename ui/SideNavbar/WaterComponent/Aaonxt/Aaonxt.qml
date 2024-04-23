import QtQuick 2.15
import QtQuick.Layouts 1.0

Rectangle{

    width: 300
    height: 150

    color: "#282828"
    radius: 10

    Image {
        id: aaonxt
        source: "qrc:/ui/assets/aaonxt.png"
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }
}
