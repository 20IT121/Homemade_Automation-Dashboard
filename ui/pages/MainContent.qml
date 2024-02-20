import QtQuick 2.15
import QtQuick.Layouts
import "../Notification"
import "../QuickPanel"
import "../Suggestion"
import "../Weather"
import "../Temperature"
import "../Wifi"
import "../Electricity"

Item {
    Rectangle{
        id: maincontent
        implicitHeight: mainWindow.height * 11/12
        implicitWidth: mainWindow.width * 3/4

        color: "#D3D3D3"

        Notification{
            id: notification
        }

        QuickPanel{
            id: quickpanel
        }

        Suggestion{
            id: suggestion
        }

        GridLayout{
            Layout.fillHeight: true
            Layout.fillWidth: true
            columns: 2
            rows: 2
            columnSpacing: 25
            rowSpacing: 25

            anchors{
                left: parent.left
                right: notification.left
                bottom: suggestion.top
                top: parent.top

                topMargin: 35
                leftMargin: 25
                rightMargin: 25
                bottomMargin: 25

            }

            Weather{

            }

            Temperature{

            }

            Wifi{

            }

            Electricity{

            }
        }
    }
}
