/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
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

#ifndef OAIQueueItemImpl_H
#define OAIQueueItemImpl_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIQueueItemImpl : public OAIObject {
public:
    OAIQueueItemImpl();
    OAIQueueItemImpl(QString json);
    ~OAIQueueItemImpl() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    qint32 getExpectedBuildNumber() const;
    void setExpectedBuildNumber(const qint32 &expected_build_number);
    bool is_expected_build_number_Set() const;
    bool is_expected_build_number_Valid() const;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getPipeline() const;
    void setPipeline(const QString &pipeline);
    bool is_pipeline_Set() const;
    bool is_pipeline_Valid() const;

    qint32 getQueuedTime() const;
    void setQueuedTime(const qint32 &queued_time);
    bool is_queued_time_Set() const;
    bool is_queued_time_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;

    qint32 expected_build_number;
    bool m_expected_build_number_isSet;
    bool m_expected_build_number_isValid;

    QString id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString pipeline;
    bool m_pipeline_isSet;
    bool m_pipeline_isValid;

    qint32 queued_time;
    bool m_queued_time_isSet;
    bool m_queued_time_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIQueueItemImpl)

#endif // OAIQueueItemImpl_H
