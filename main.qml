import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.0
import "ui/SideNavbar" 1.0

Window {
    id: mainWindow
    width: 1920
    height: 1080
    minimumHeight: 768
    minimumWidth: 1360
    // maximumHeight: 1080
    // maximumWidth: 1920
    visible: true

    title: qsTr("Homemade Automation - Dashboard")
    // color: root.checked ? "#7e7e7e" : "#D3D3D3"
    color: "transparent"

    SideNavbar{
        id: sideNavbar
    }

    Rectangle{
        id: contentPages
        // implicitHeight: mainWindow.height * 11/12
        // implicitWidth: mainWindow.width * 3/4
        anchors.left: sideNavbar.right
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        color: "transparent"

        Loader{
            id: loader
            anchors.fill: parent
            source: Qt.resolvedUrl("qrc:/ui/pages/MainContent.qml")
        }
    }

    // StackView{
    //     id: stackView
    //     anchors.fill: parent
    //     anchors.left: sideNavbar.right
    //     anchors.top: topNavbar.bottom

    //     initialItem: Qt.resolvedUrl(":/ui/pages/MainContent.qml")
    // }


    // ChartView {
    //     id: chart
    //     title: "Top-5 car brand shares in Finland"
    //     anchors.fill: parent
    //     legend.alignment: Qt.AlignBottom
    //     antialiasing: true

    //     PieSeries {
    //         id: pieSeries
    //         PieSlice { label: "Volkswagen"; value: 13.5 }
    //         PieSlice { label: "Toyota"; value: 10.9 }
    //         PieSlice { label: "Ford"; value: 8.6 }
    //         PieSlice { label: "Skoda"; value: 8.2 }
    //         PieSlice { label: "Volvo"; value: 6.8 }
    //     }
    // }

    // Component.onCompleted: {
    //     // You can also manipulate slices dynamically, like append a slice or set a slice exploded
    //     othersSlice = pieSeries.append("Others", 52.0);
    //     pieSeries.find("Volkswagen").exploded = true;
    // }

}
