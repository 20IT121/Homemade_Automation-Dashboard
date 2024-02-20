#include "wifimanager.h"
#include <QDebug>

WifiManager::WifiManager()

{
    // Available_Wifi_NetWorks = new QStringList();
    scan_Wifi_NetWorks();
}

void WifiManager::scan_Wifi_NetWorks () {
    QProcess Process;
    Process.start("netsh" , QStringList() << "wlan" << "show" << "network");
    // Process.start ("netsh" , QStringlist（） << "wlan"<< "show" << "network"）;
    Process.waitForFinished();

    QByteArray RawData = Process.readAllStandardOutput(); // Data With All Inf‹ (String Data (RawData)
    QString Data(RawData);

    // Now Let's Extract SSID Names From this Data
    available_Wifi_NetWorks.clear ();
    QStringList DataLines = Data.split('\n');

    for (const QString& line : DataLines){

        if(line.trimmed().startsWith("SSID")){

            QString SSID = line.section (':',1).trimmed();
            if (SSID.isEmpty() == false){
                available_Wifi_Networks->append(SSID);
            }
        }
    }
}

QStringList WifiManager::get_Available_Wifi_Networks(){
    // scan_Wifi_Networks();
    qDebug() << available_Wifi_Networks;
    return available_Wifi_Networks;
}


