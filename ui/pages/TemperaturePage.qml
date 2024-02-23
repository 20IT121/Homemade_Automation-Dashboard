import QtQuick 2.15
import QtQuick.Controls 2.15
import QtCharts 2.15

Item {
    id: temperatureComponent
    width: 300
    height: 200

    property real temperatureValue: 0
    property var temperatureHistory: []

    Rectangle {
        anchors.fill: parent
        color: "#f0f0f0"

        Column {
            anchors.fill: parent
            spacing: 10
            padding: 10

            Text {
                text: "Current Temperature:"
                font.pixelSize: 16
            }

            Text {
                text: temperatureValue.toFixed(1) + "°C"
                font.pixelSize: 24
                color: temperatureColor
            }

            ChartView {
                id: temperatureChart
                width: parent.width
                height: 100
                theme: ChartView.ChartThemeLight

                LineSeries {
                    name: "Temperature"
                    XYPoint { x: index; y: value }
                    axisX: ValueAxis {
                        min: 0
                        max: temperatureHistory.length
                        labelFormat: "%.0f"
                        titleText: "Time"
                    }
                    axisY: ValueAxis {
                        min: Math.min.apply(null, temperatureHistory) - 2
                        max: Math.max.apply(null, temperatureHistory) + 2
                        labelFormat: "%.1f"
                        titleText: "Temperature (°C)"
                    }
                    color: temperatureColor
                }
            }
        }
    }

    function updateTemperatureHistory(newValue) {
        temperatureHistory.push(newValue);
        if (temperatureHistory.length > 20) {
            temperatureHistory.shift();
        }
    }

    Connections {
        target: temperatureSensor // Assuming temperatureSensor is an object with a signal called temperatureChanged
        onTemperatureChanged: {
            temperatureComponent.temperatureValue = temperatureSensor.temperature;
            temperatureComponent.updateTemperatureHistory(temperatureSensor.temperature);
        }
    }

    // Define a color gradient based on temperature value
    property color temperatureColor: {
        var hue = (temperatureValue / 50) * 0.4; // Assuming a max temperature of 50°C
        return Qt.hsla(hue, 1, 0.5, 1);
    }
}
