#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickWindow>

#include "system.h"
#include "wifimanager.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    System *m_systemHandler = new System();

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

 // custom code for displaying current time
    engine.rootContext()->setContextProperty("systemHandler",m_systemHandler);

    // engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    // if(engine.rootObjects().isEmpty())
    //     return -1;

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
