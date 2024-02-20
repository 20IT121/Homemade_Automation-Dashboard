import QtQuick 2.15
import QtQuick.Layouts

Rectangle{

    width: 300
    height: 150

    color: "#282828"
    radius: 10

    Image {
        id: erosnow
        source: "qrc:/ui/assets/erosnow.png"
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }
}
