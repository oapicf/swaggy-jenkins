/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISwapSpaceMonitorMemoryUsage2.h
 *
 * 
 */

#ifndef OAISwapSpaceMonitorMemoryUsage2_H
#define OAISwapSpaceMonitorMemoryUsage2_H

#include <QJsonObject>


#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAISwapSpaceMonitorMemoryUsage2: public OAIObject {
public:
    OAISwapSpaceMonitorMemoryUsage2();
    OAISwapSpaceMonitorMemoryUsage2(QString json);
    ~OAISwapSpaceMonitorMemoryUsage2() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);

    qint32 getAvailablePhysicalMemory() const;
    void setAvailablePhysicalMemory(const qint32 &available_physical_memory);

    qint32 getAvailableSwapSpace() const;
    void setAvailableSwapSpace(const qint32 &available_swap_space);

    qint32 getTotalPhysicalMemory() const;
    void setTotalPhysicalMemory(const qint32 &total_physical_memory);

    qint32 getTotalSwapSpace() const;
    void setTotalSwapSpace(const qint32 &total_swap_space);

    virtual bool isSet() const override;

private:
    QString _class;
    bool m__class_isSet;

    qint32 available_physical_memory;
    bool m_available_physical_memory_isSet;

    qint32 available_swap_space;
    bool m_available_swap_space_isSet;

    qint32 total_physical_memory;
    bool m_total_physical_memory_isSet;

    qint32 total_swap_space;
    bool m_total_swap_space_isSet;

};

}

#endif // OAISwapSpaceMonitorMemoryUsage2_H
