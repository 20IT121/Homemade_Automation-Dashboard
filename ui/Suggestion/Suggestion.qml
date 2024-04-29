import QtQuick 2.0
import Qt5Compat.GraphicalEffects
import QtWebView 6.7

Rectangle{
    id: suggestion
    radius: 10
    color: "white"
    anchors{
        left: parent.left
        right: quickpanel.left
        bottom: quickpanel.bottom
        leftMargin: 25
        rightMargin: 25
        // topMargin: 40
    }
    height: 230

    // DropShadow {
    //         anchors.fill: suggestion
    //         horizontalOffset: 0
    //         verticalOffset: 8
    //         radius: 8
    //         spread: 0
    //         samples: 17
    //         color: "#000000"
    //         source: suggestion
    // }

    // WebView {
    //     id: webView
    //     anchors.fill: parent
    //     url: "http://www.youtube.com"
    // }

    Image{
        anchors.fill: parent
        source: "qrc:/ui/assets/suggestion.png"
    }

    // WebEngineView{
    //     anchors.fill: parent
    //     url: "http://netflix.com"
    // }
}
