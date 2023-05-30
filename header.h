#ifndef HEADER_H
#define HEADER_H

#include <QObject>
#include <QVector>
#include <QString>

class connections: public QObject {
    Q_OBJECT

public:
    explicit connections(QObject* parent = nullptr);
public slots:
    void started();
signals:
    void sendInfo(int objLoc);
};

#endif // HEADER_H
