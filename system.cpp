#include "system.h"
#include <QDateTime>
#include <QDebug>

#include <QFile>
#include <QTextStream>

System::System(QObject *parent) :
    m_currentTime ("11:24 am"),
    m_currentDate ("Friday, 13 June, 2003"),
    m_currentTemp (37),
    m_roomTemp(12)
{
    getcurrentTime();
    getcurrentDate();
    fetchroomTemp();
}

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

    file.close();

    // Convert the string to an integer
    bool ok;
    int temperature = numberAsString.toInt(&ok);
    if (!ok) {
        qDebug() << "Conversion to integer failed";
        return;
    }
    setroomTemp(temperature);
}

int System::roomTemp() const
{
    return m_roomTemp;
}

void System::setroomTemp(int newRoomTemp)
{
    if (m_roomTemp == newRoomTemp)
        return;
    m_roomTemp = newRoomTemp;
    emit roomTempChanged();
}
