import QtQuick 2.15

Item {
    Rectangle{
        id: maincontent
        implicitHeight: mainWindow.height
        implicitWidth: mainWindow.width * 4/5
        // anchors.left: sideNavbar.right
        // anchors.top: topNavbar.bottom
        // anchors.fill: parent
        Image{
            anchors.fill: parent
            source: "qrc:/ui/assets/Background.jpg"
        }

        Rectangle{
            id: outer
            width: 100
            height: 100
            radius: 10
            color: "white"
            border.width: 2
            border.color: "white"

            Rectangle{
                id: inner
                width: 120
                height: 120
                radius: 10
                anchors{
                    left: parent.left
                    top: parent.top
                    topMargin: 5
                    leftMargin: 5
                }

                opacity: 1
                color: "black"

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        outer.color = "yellow"
                        inner.color = "white"
                    }
                }

            }
        }

    }
}
