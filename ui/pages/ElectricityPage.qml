import QtQuick 2.15

Item {
    Rectangle{
        id: electricityPage

        implicitHeight: mainWindow.height
        implicitWidth: mainWindow.width * 4/5

        Image {
            anchors.fill: parent
            source: "qrc:/ui/assets/Electricity_Component.jpg"
        }
    }
}
