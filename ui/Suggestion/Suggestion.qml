import QtQuick 2.0
// import QtWebView 1.1

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

    /*WebView {
        id: webView
        anchors.fill: parent
        url: "http://www.netflix.com"
    }*/

    // WebEngineView{
    //     anchors.fill: parent
    //     url: "http://netflix.com"
    // }
}
