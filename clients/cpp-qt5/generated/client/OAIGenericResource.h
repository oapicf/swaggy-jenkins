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
 * OAIGenericResource.h
 *
 * 
 */

#ifndef OAIGenericResource_H_
#define OAIGenericResource_H_

#include <QJsonObject>


#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIGenericResource: public OAIObject {
public:
    OAIGenericResource();
    OAIGenericResource(QString json);
    ~OAIGenericResource();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIGenericResource* fromJson(QString jsonString) override;

    QString* getClass();
    void setClass(QString* _class);

    QString* getDisplayName();
    void setDisplayName(QString* display_name);

    qint32 getDurationInMillis();
    void setDurationInMillis(qint32 duration_in_millis);

    QString* getId();
    void setId(QString* id);

    QString* getResult();
    void setResult(QString* result);

    QString* getStartTime();
    void setStartTime(QString* start_time);


    virtual bool isSet() override;

private:
    QString* _class;
    bool m__class_isSet;

    QString* display_name;
    bool m_display_name_isSet;

    qint32 duration_in_millis;
    bool m_duration_in_millis_isSet;

    QString* id;
    bool m_id_isSet;

    QString* result;
    bool m_result_isSet;

    QString* start_time;
    bool m_start_time_isSet;

};

}

#endif /* OAIGenericResource_H_ */
