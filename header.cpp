#include "header.h"
#include <iostream>

connections::connections(QObject *parent) : QObject(parent) {

}

void connections::started() {
    emit sendInfo(1);
}
