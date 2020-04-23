#include "Bridge.h"
using namespace std;

Bridge::Bridge(): QObject()
{

}

bool *Bridge::getCheckedTracking() const
{
    return CheckedTracking;
}

void Bridge::setCheckedTracking(bool *value)
{
    CheckedTracking = value;
}
