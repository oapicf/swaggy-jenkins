/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAIFreeStyleBuild.h
 *
 * 
 */

#ifndef OAIFreeStyleBuild_H
#define OAIFreeStyleBuild_H

#include <QJsonObject>

#include "OAICauseAction.h"
#include "OAIEmptyChangeLogSet.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAICauseAction;
class OAIEmptyChangeLogSet;

class OAIFreeStyleBuild : public OAIObject {
public:
    OAIFreeStyleBuild();
    OAIFreeStyleBuild(QString json);
    ~OAIFreeStyleBuild() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    qint32 getNumber() const;
    void setNumber(const qint32 &number);
    bool is_number_Set() const;
    bool is_number_Valid() const;

    QString getUrl() const;
    void setUrl(const QString &url);
    bool is_url_Set() const;
    bool is_url_Valid() const;

    QList<OAICauseAction> getActions() const;
    void setActions(const QList<OAICauseAction> &actions);
    bool is_actions_Set() const;
    bool is_actions_Valid() const;

    bool isBuilding() const;
    void setBuilding(const bool &building);
    bool is_building_Set() const;
    bool is_building_Valid() const;

    QString getDescription() const;
    void setDescription(const QString &description);
    bool is_description_Set() const;
    bool is_description_Valid() const;

    QString getDisplayName() const;
    void setDisplayName(const QString &display_name);
    bool is_display_name_Set() const;
    bool is_display_name_Valid() const;

    qint32 getDuration() const;
    void setDuration(const qint32 &duration);
    bool is_duration_Set() const;
    bool is_duration_Valid() const;

    qint32 getEstimatedDuration() const;
    void setEstimatedDuration(const qint32 &estimated_duration);
    bool is_estimated_duration_Set() const;
    bool is_estimated_duration_Valid() const;

    QString getExecutor() const;
    void setExecutor(const QString &executor);
    bool is_executor_Set() const;
    bool is_executor_Valid() const;

    QString getFullDisplayName() const;
    void setFullDisplayName(const QString &full_display_name);
    bool is_full_display_name_Set() const;
    bool is_full_display_name_Valid() const;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    bool isKeepLog() const;
    void setKeepLog(const bool &keep_log);
    bool is_keep_log_Set() const;
    bool is_keep_log_Valid() const;

    qint32 getQueueId() const;
    void setQueueId(const qint32 &queue_id);
    bool is_queue_id_Set() const;
    bool is_queue_id_Valid() const;

    QString getResult() const;
    void setResult(const QString &result);
    bool is_result_Set() const;
    bool is_result_Valid() const;

    qint32 getTimestamp() const;
    void setTimestamp(const qint32 &timestamp);
    bool is_timestamp_Set() const;
    bool is_timestamp_Valid() const;

    QString getBuiltOn() const;
    void setBuiltOn(const QString &built_on);
    bool is_built_on_Set() const;
    bool is_built_on_Valid() const;

    OAIEmptyChangeLogSet getChangeSet() const;
    void setChangeSet(const OAIEmptyChangeLogSet &change_set);
    bool is_change_set_Set() const;
    bool is_change_set_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;

    qint32 number;
    bool m_number_isSet;
    bool m_number_isValid;

    QString url;
    bool m_url_isSet;
    bool m_url_isValid;

    QList<OAICauseAction> actions;
    bool m_actions_isSet;
    bool m_actions_isValid;

    bool building;
    bool m_building_isSet;
    bool m_building_isValid;

    QString description;
    bool m_description_isSet;
    bool m_description_isValid;

    QString display_name;
    bool m_display_name_isSet;
    bool m_display_name_isValid;

    qint32 duration;
    bool m_duration_isSet;
    bool m_duration_isValid;

    qint32 estimated_duration;
    bool m_estimated_duration_isSet;
    bool m_estimated_duration_isValid;

    QString executor;
    bool m_executor_isSet;
    bool m_executor_isValid;

    QString full_display_name;
    bool m_full_display_name_isSet;
    bool m_full_display_name_isValid;

    QString id;
    bool m_id_isSet;
    bool m_id_isValid;

    bool keep_log;
    bool m_keep_log_isSet;
    bool m_keep_log_isValid;

    qint32 queue_id;
    bool m_queue_id_isSet;
    bool m_queue_id_isValid;

    QString result;
    bool m_result_isSet;
    bool m_result_isValid;

    qint32 timestamp;
    bool m_timestamp_isSet;
    bool m_timestamp_isValid;

    QString built_on;
    bool m_built_on_isSet;
    bool m_built_on_isValid;

    OAIEmptyChangeLogSet change_set;
    bool m_change_set_isSet;
    bool m_change_set_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIFreeStyleBuild)

#endif // OAIFreeStyleBuild_H
