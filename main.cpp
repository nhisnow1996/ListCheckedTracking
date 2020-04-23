#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include<Bridge.h>
#include<QString>
#include<Haha.h>
#include<QQmlContext>
#include <iostream>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    Bridge *myBridge = new Bridge;
    engine.rootContext()->setContextProperty("my_Bridge", myBridge);

//    Haha *myHaha = new Haha;
//    engine.rootContext()->setContextProperty("my_Haha", myHaha);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}
