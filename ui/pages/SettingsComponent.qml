import QtQuick 2.15

Item {
    Rectangle{
        id: maincontent
        implicitHeight: mainWindow.height * 11/12
        implicitWidth: mainWindow.width * 3/4
        // anchors.left: sideNavbar.right
        // anchors.top: topNavbar.bottom
        // anchors.fill: parent
        color: "blue"
    }
}
