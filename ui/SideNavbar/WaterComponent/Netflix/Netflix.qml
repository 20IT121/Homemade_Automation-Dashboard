import QtQuick 2.15
import QtQuick.Layouts 1.0
// import QtWebEngine 2.15

Rectangle{
    width: 300
    height: 150

    color: "#282828"
    radius: 10

    Image {
        id: netflix
        source: "qrc:/ui/assets/netflix.png"
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
    }    

    // WebEngineView{
    //     id:engine
    //     url: "https://www.netflix.com"
    // }
}
