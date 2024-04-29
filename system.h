#ifndef SYSTEM_H
#define SYSTEM_H

#include <QObject>
#include <QString>
#include <QTimer>

class System : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString currentTime READ currentTime WRITE setcurrentTime NOTIFY currentTimeChanged FINAL)
    Q_PROPERTY(QString currentDate READ currentDate WRITE setcurrentDate NOTIFY currentDateChanged FINAL)
    Q_PROPERTY(int currentTemp READ currentTemp WRITE setcurrentTemp NOTIFY currentTempChanged FINAL)
    Q_PROPERTY(double roomTemp READ roomTemp WRITE setRoomTemp NOTIFY roomTempChanged FINAL)

public:
    explicit System(QObject *parent = nullptr);

    QString currentTime() const;
    void setcurrentTime(const QString &newCurrentTime);

    QString currentDate() const;
    void setcurrentDate(const QString &newCurrentDate);


    int currentTemp() const;
    void setcurrentTemp(int newCurrentTemp);

    double roomTemp() const;
    void setRoomTemp(double newRoomTemp);

public slots:
    void getcurrentTime();
    void getcurrentDate();
    bool highTemperature();
    void incrementTemperature(int val);
    void fetchroomTemp();

signals:
    void currentTimeChanged();
    void currentDateChanged();
    void currentTempChanged();
    void roomTempChanged();

private:
    QTimer *timer;
    QString m_currentTime;
    QString m_currentDate;
    int m_currentTemp;
    double m_roomTemp;

    // QTimer timer;
    // QThread workerThread;
};


#endif // SYSTEM_H
