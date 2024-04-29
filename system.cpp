#include "system.h"
#include <QDateTime>
#include <QDebug>
#include <QTimer>

#include <QFile>
#include <QTextStream>

#include <QNetworkInterface>
#include <iostream>
using namespace std;

System::System(QObject *parent) :
    m_currentTime ("11:24 am"),
    m_currentDate ("Friday, 13 June, 2003"),
    m_currentTemp (37),
    m_roomTemp(37.45)
{
    // timer = new QTimer(this);
    // connect( &workerThread , SIGNAL(started()) , this , SLOT(started()));
    // connect (&timer , SIGNAL(timeout()), this,  SLOT(timeout()));
    // timer->start();

    // timer->setInterval(30000);
    // timer->moveToThread(workerThread);

    // workerThread.start();

    getcurrentTime();
    getcurrentDate();
    fetchroomTemp();
}

// void System::started(){
//     timer->start();
// }

void System::getcurrentTime(){
    QTime time = QTime::currentTime();
    QString time_text = time.toString("hh:mm");
    setcurrentTime(time_text);
}

QString System::currentTime() const
{
    return m_currentTime;
}

void System::setcurrentTime(const QString &newCurrentTime)
{
    if (m_currentTime == newCurrentTime)
        return;
    m_currentTime = newCurrentTime;
    emit currentTimeChanged();
}

void System::getcurrentDate(){
    QDate date = QDate::currentDate();
    QString date_text = date.toString("dddd, d MMMM, yyyy");
    setcurrentDate(date_text);
}


QString System::currentDate() const
{
    return m_currentDate;
}

void System::setcurrentDate(const QString &newCurrentDate)
{
    if (m_currentDate == newCurrentDate)
        return;
    m_currentDate = newCurrentDate;
    emit currentDateChanged();
}

bool System::highTemperature(){
    int currentTemperature = currentTemp();
    if(currentTemperature > 30){
        return true;}
    return false;
}

void System::incrementTemperature(int val){
    int currenttemp = currentTemp();
    int newTemp = currenttemp+val;
    if(newTemp <= 0)
        setcurrentTemp(0);
    else if(newTemp >= 45)
        setcurrentTemp(45);
    else
        setcurrentTemp(newTemp);
}

int System::currentTemp() const
{
    // qDebug() << "Inside the currentTemp()";
    return m_currentTemp;
}

void System::setcurrentTemp(int newCurrentTemp)
{
    if (m_currentTemp == newCurrentTemp)
        return;
    m_currentTemp = newCurrentTemp;
    emit currentTempChanged();
}

void System::fetchroomTemp(){

    QFile file(":/data/temperature.txt.txt");
    if(!file.open(QIODevice::ReadOnly))
        return;

    QTextStream in(&file);
    QString numberAsString = in.readAll();
    numberAsString = numberAsString.trimmed();
    // qDebug() << numberAsString;

    file.close();

    // Convert the string to an integer
    bool ok;
    double temperature = numberAsString.toDouble(&ok);
    // qDebug() << "Temp = " << temperature;
    if (!ok) {
        qDebug() << "Conversion to number failed";
        return;
    }
    setRoomTemp(temperature);
}

double System::roomTemp() const
{
    qDebug() << "m_roomTemp = " << m_roomTemp;
    return m_roomTemp;
}

void System::setRoomTemp(double newRoomTemp)
{
    // qDebug() << "New room temp = " << newRoomTemp;
    if (m_roomTemp == newRoomTemp)
        return;
    m_roomTemp = newRoomTemp;
    emit roomTempChanged();
}

// void getWifiNetworks(){
//     foreach(QNetworkInterface interface, QNetworkInterface::allInterfaces())
//     {
//         if (interface.flags().testFlag(QNetworkInterface::IsUp) && !interface.flags().testFlag(QNetworkInterface::IsLoopBack))
//             foreach (QNetworkAddressEntry entry, interface.addressEntries())
//             {
//                 if ( interface.hardwareAddress() != "00:00:00:00:00:00" && entry.ip().toString().contains(".") && !interface.humanReadableName().contains("VM"))
//                     items << interface.name() + " "+ entry.ip().toString() +" " + interface.hardwareAddress();
//             }
//     }
// }
