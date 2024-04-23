import QtQuick 2.15
import QtQuick.Controls 2.15
import QtCharts 2.15
// import QtGraphicalEffects 1.12

Item {
    id: temperatureComponent
    Rectangle {
        anchors.fill: parent
        Image{
            anchors.fill: parent
            source: "qrc:/ui/assets/blue_blur.jpg"
        }

        Image {
            id: weather
            source: "qrc:/ui/assets/weather.png"
            anchors{
                left: parent.left
                top: parent.top
                topMargin: 50
                leftMargin: 50
            }
        }

        Text{
            text: "Weather"
            color: "#4FACFE"
            anchors{
                left: weather.right
                leftMargin: 25
                top: parent.top
                topMargin: 50
            }
            font.pixelSize: 50
        }

        Text {
            id: currentTemp
            text: qsTr("21 C")
            color: "#097DB9"
            anchors{
                right: parent.right
                rightMargin: 100
                top: parent.top
                topMargin: 50
            }
            font.pixelSize: 50
        }

        Image {
            id: line1
            source: "qrc:/ui/assets/line.png"
            fillMode: Image.PreserveAspectFit
            anchors{
                left: parent.left
                leftMargin: 100
                verticalCenter: parent.verticalCenter
            }
        }

        Text{
            id: weekDays
            text: "Mon"
            color: "white"
            anchors{
                top: line1.top
                topMargin: 5
                left: line1.right
                leftMargin: 25
            }
            font.pixelSize: 18
        }

        Image {
            id: cloudImg
            source: "qrc:/ui/assets/cloud.png"
            // fillMode: Image.PreserveAspectFit
            anchors{
                left: line1.right
                leftMargin: 25
                top: line1.top
                topMargin: 42
            }
        }

        Text{
            id: temp
            text: "19 C"
            font.pixelSize: 18
            anchors{
                top: cloudImg.bottom
                left: line1.right
                leftMargin: 25
                topMargin: 15
            }
            color: "white"
            font.bold: true
        }

        Text{
            id: humidity
            text: "19 kg"
            font.pixelSize: 18
            anchors{
                top: temp.bottom
                left: line1.right
                leftMargin: 25
                topMargin: 10
            }
            color: "grey"
        }

        Text{
            id: uvindex
            text: "19 uv"
            font.pixelSize: 18
            anchors{
                top: humidity.bottom
                left: line1.right
                leftMargin: 25
                topMargin: 10
            }
            color: "red"
        }

        Image {
            id: line2
            source: "qrc:/ui/assets/line.png"
            fillMode: Image.PreserveAspectFit
            anchors{
                left: weekDays.right
                leftMargin: 30
                verticalCenter: parent.verticalCenter
            }
        }

        Text{
            id: weekDays1
            text: "Tue"
            color: "white"
            anchors{
                top: line2.top
                topMargin: 5
                left: line2.right
                leftMargin: 25
            }
            font.pixelSize: 18
        }

        Image {
            id: cloudImg1
            source: "qrc:/ui/assets/cloud.png"
            // fillMode: Image.PreserveAspectFit
            anchors{
                left: line2.right
                leftMargin: 25
                top: line2.top
                topMargin: 42
            }
        }

        Text{
            id: temp1
            text: "19 C"
            font.pixelSize: 18
            anchors{
                top: cloudImg1.bottom
                left: line2.right
                leftMargin: 25
                topMargin: 15
            }
            color: "white"
            font.bold: true
        }

        Text{
            id: humidity1
            text: "19 kg"
            font.pixelSize: 18
            anchors{
                top: temp1.bottom
                left: line2.right
                leftMargin: 25
                topMargin: 10
            }
            color: "grey"
        }

        Text{
            id: uvindex1
            text: "19 uv"
            font.pixelSize: 18
            anchors{
                top: humidity1.bottom
                left: line2.right
                leftMargin: 25
                topMargin: 10
            }
            color: "red"
        }

        Image {
            id: line3
            source: "qrc:/ui/assets/line.png"
            fillMode: Image.PreserveAspectFit
            anchors{
                left: weekDays1.right
                leftMargin: 30
                verticalCenter: parent.verticalCenter
            }
        }

        Text{
            id: weekDays2
            text: "Wed"
            color: "white"
            anchors{
                top: line3.top
                topMargin: 5
                left: line3.right
                leftMargin: 25
            }
            font.pixelSize: 18
        }

        Image {
            id: cloudImg2
            source: "qrc:/ui/assets/cloud.png"
            // fillMode: Image.PreserveAspectFit
            anchors{
                left: line3.right
                leftMargin: 25
                top: line3.top
                topMargin: 42
            }
        }

        Text{
            id: temp2
            text: "19 C"
            font.pixelSize: 18
            anchors{
                top: cloudImg2.bottom
                left: line3.right
                leftMargin: 25
                topMargin: 15
            }
            color: "white"
            font.bold: true
        }

        Text{
            id: humidity2
            text: "19 kg"
            font.pixelSize: 18
            anchors{
                top: temp2.bottom
                left: line3.right
                leftMargin: 25
                topMargin: 10
            }
            color: "grey"
        }

        Text{
            id: uvindex2
            text: "19 uv"
            font.pixelSize: 18
            anchors{
                top: humidity2.bottom
                left: line3.right
                leftMargin: 25
                topMargin: 10
            }
            color: "red"
        }

        Image {
            id: line4
            source: "qrc:/ui/assets/line.png"
            fillMode: Image.PreserveAspectFit
            anchors{
                left: weekDays2.right
                leftMargin: 30
                verticalCenter: parent.verticalCenter
            }
        }

        Text{
            id: weekDays3
            text: "Thu"
            color: "white"
            anchors{
                top: line4.top
                topMargin: 5
                left: line4.right
                leftMargin: 25
            }
            font.pixelSize: 18
        }

        Image {
            id: cloudImg3
            source: "qrc:/ui/assets/cloud.png"
            // fillMode: Image.PreserveAspectFit
            anchors{
                left: line4.right
                leftMargin: 25
                top: line4.top
                topMargin: 42
            }
        }

        Text{
            id: temp3
            text: "19 C"
            font.pixelSize: 18
            anchors{
                top: cloudImg3.bottom
                left: line4.right
                leftMargin: 25
                topMargin: 15
            }
            color: "white"
            font.bold: true
        }

        Text{
            id: humidity3
            text: "19 kg"
            font.pixelSize: 18
            anchors{
                top: temp3.bottom
                left: line4.right
                leftMargin: 25
                topMargin: 10
            }
            color: "grey"
        }

        Text{
            id: uvindex3
            text: "19 uv"
            font.pixelSize: 18
            anchors{
                top: humidity3.bottom
                left: line4.right
                leftMargin: 25
                topMargin: 10
            }
            color: "red"
        }

        Image {
            id: line5
            source: "qrc:/ui/assets/line.png"
            fillMode: Image.PreserveAspectFit
            anchors{
                left: weekDays3.right
                leftMargin: 30
                verticalCenter: parent.verticalCenter
            }
        }

        Text{
            id: weekDays4
            text: "Fri"
            color: "white"
            anchors{
                top: line5.top
                topMargin: 5
                left: line5.right
                leftMargin: 25
            }
            font.pixelSize: 18
        }

        Image {
            id: cloudImg4
            source: "qrc:/ui/assets/cloud.png"
            // fillMode: Image.PreserveAspectFit
            anchors{
                left: line5.right
                leftMargin: 25
                top: line5.top
                topMargin: 42
            }
        }

        Text{
            id: temp4
            text: "19 C"
            font.pixelSize: 18
            anchors{
                top: cloudImg4.bottom
                left: line5.right
                leftMargin: 25
                topMargin: 15
            }
            color: "white"
            font.bold: true
        }

        Text{
            id: humidity4
            text: "19 kg"
            font.pixelSize: 18
            anchors{
                top: temp4.bottom
                left: line5.right
                leftMargin: 25
                topMargin: 10
            }
            color: "grey"
        }

        Text{
            id: uvindex4
            text: "19 uv"
            font.pixelSize: 18
            anchors{
                top: humidity4.bottom
                left: line5.right
                leftMargin: 25
                topMargin: 10
            }
            color: "red"
        }

        Image {
            id: line6
            source: "qrc:/ui/assets/line.png"
            fillMode: Image.PreserveAspectFit
            anchors{
                left: weekDays4.right
                leftMargin: 30
                verticalCenter: parent.verticalCenter
            }
        }

        Text{
            id: weekDays5
            text: "Sat"
            color: "white"
            anchors{
                top: line6.top
                topMargin: 5
                left: line6.right
                leftMargin: 25
            }
            font.pixelSize: 18
        }

        Image {
            id: cloudImg5
            source: "qrc:/ui/assets/cloud.png"
            // fillMode: Image.PreserveAspectFit
            anchors{
                left: line6.right
                leftMargin: 25
                top: line6.top
                topMargin: 42
            }
        }

        Text{
            id: temp5
            text: "19 C"
            font.pixelSize: 18
            anchors{
                top: cloudImg5.bottom
                left: line6.right
                leftMargin: 25
                topMargin: 15
            }
            color: "white"
            font.bold: true
        }

        Text{
            id: humidity5
            text: "19 kg"
            font.pixelSize: 18
            anchors{
                top: temp5.bottom
                left: line6.right
                leftMargin: 25
                topMargin: 10
            }
            color: "grey"
        }

        Text{
            id: uvindex5
            text: "19 uv"
            font.pixelSize: 18
            anchors{
                top: humidity5.bottom
                left: line6.right
                leftMargin: 25
                topMargin: 10
            }
            color: "red"
        }

        Image {
            id: line7
            source: "qrc:/ui/assets/line.png"
            fillMode: Image.PreserveAspectFit
            anchors{
                left: weekDays5.right
                leftMargin: 30
                verticalCenter: parent.verticalCenter
            }
        }

        Text{
            id: weekDays6
            text: "Sun"
            color: "white"
            anchors{
                top: line7.top
                topMargin: 5
                left: line7.right
                leftMargin: 25
            }
            font.pixelSize: 18
        }

        Image {
            id: cloudImg6
            source: "qrc:/ui/assets/cloud.png"
            // fillMode: Image.PreserveAspectFit
            anchors{
                left: line7.right
                leftMargin: 25
                top: line7.top
                topMargin: 42
            }
        }

        Text{
            id: temp6
            text: "19 C"
            font.pixelSize: 18
            anchors{
                top: cloudImg6.bottom
                left: line7.right
                leftMargin: 25
                topMargin: 15
            }
            color: "white"
            font.bold: true
        }

        Text{
            id: humidity6
            text: "19 kg"
            font.pixelSize: 18
            anchors{
                top: temp6.bottom
                left: line7.right
                leftMargin: 25
                topMargin: 10
            }
            color: "grey"
        }

        Text{
            id: uvindex6
            text: "19 uv"
            font.pixelSize: 18
            anchors{
                top: humidity6.bottom
                left: line7.right
                leftMargin: 25
                topMargin: 10
            }
            color: "red"
        }

        Image {
            id: line8
            source: "qrc:/ui/assets/line.png"
            fillMode: Image.PreserveAspectFit
            anchors{
                left: weekDays6.right
                leftMargin: 30
                verticalCenter: parent.verticalCenter
            }
        }

    }
}
