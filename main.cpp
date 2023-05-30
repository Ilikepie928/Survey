#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QObject>
#include "header.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<connections>("connect_cpp",1,0,"Connection_obj");

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/Survey/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
