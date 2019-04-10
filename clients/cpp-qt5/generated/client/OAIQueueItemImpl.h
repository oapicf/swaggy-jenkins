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
 * OAIQueueItemImpl.h
 *
 * 
 */

#ifndef OAIQueueItemImpl_H_
#define OAIQueueItemImpl_H_

#include <QJsonObject>


#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIQueueItemImpl: public OAIObject {
public:
    OAIQueueItemImpl();
    OAIQueueItemImpl(QString json);
    ~OAIQueueItemImpl();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIQueueItemImpl* fromJson(QString jsonString) override;

    QString* getClass();
    void setClass(QString* _class);

    qint32 getExpectedBuildNumber();
    void setExpectedBuildNumber(qint32 expected_build_number);

    QString* getId();
    void setId(QString* id);

    QString* getPipeline();
    void setPipeline(QString* pipeline);

    qint32 getQueuedTime();
    void setQueuedTime(qint32 queued_time);


    virtual bool isSet() override;

private:
    QString* _class;
    bool m__class_isSet;

    qint32 expected_build_number;
    bool m_expected_build_number_isSet;

    QString* id;
    bool m_id_isSet;

    QString* pipeline;
    bool m_pipeline_isSet;

    qint32 queued_time;
    bool m_queued_time_isSet;

};

}

#endif /* OAIQueueItemImpl_H_ */
