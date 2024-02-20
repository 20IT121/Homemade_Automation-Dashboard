#ifndef WIFIMANAGER_H
#define WIFIMANAGER_H

#include <QtNetwork>
#include <QtCore>
#include <QtGui>
// #include <QtWidgets/

class WifiManager
{
public:
    WifiManager();

public slots:
    QStringList get_Available_Wifi_Networks();
    void scan_Wifi_NetWorks();

private:
    QStringList available_Wifi_NetWorks;
};

#endif // WIFIMANAGER_H
