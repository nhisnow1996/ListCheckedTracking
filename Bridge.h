#ifndef BRIDGE_H
#define BRIDGE_H
#include<QObject>
using namespace std;

class Bridge: public QObject
{
    Q_OBJECT

public:

    Bridge();

    bool * CheckedTracking = new bool[3];
//    CheckedTracking = new bool[3];



    Q_INVOKABLE bool *getCheckedTracking() const;
    Q_INVOKABLE void setCheckedTracking(bool *value);
};

#endif // BRIDGE_H
