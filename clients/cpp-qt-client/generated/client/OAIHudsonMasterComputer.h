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
 * OAIHudsonMasterComputer.h
 *
 * 
 */

#ifndef OAIHudsonMasterComputer_H
#define OAIHudsonMasterComputer_H

#include <QJsonObject>

#include "OAIHudsonMasterComputerexecutors.h"
#include "OAIHudsonMasterComputermonitorData.h"
#include "OAILabel1.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIHudsonMasterComputerexecutors;
class OAILabel1;
class OAIHudsonMasterComputermonitorData;

class OAIHudsonMasterComputer : public OAIObject {
public:
    OAIHudsonMasterComputer();
    OAIHudsonMasterComputer(QString json);
    ~OAIHudsonMasterComputer() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    QString getDisplayName() const;
    void setDisplayName(const QString &display_name);
    bool is_display_name_Set() const;
    bool is_display_name_Valid() const;

    QList<OAIHudsonMasterComputerexecutors> getExecutors() const;
    void setExecutors(const QList<OAIHudsonMasterComputerexecutors> &executors);
    bool is_executors_Set() const;
    bool is_executors_Valid() const;

    QString getIcon() const;
    void setIcon(const QString &icon);
    bool is_icon_Set() const;
    bool is_icon_Valid() const;

    QString getIconClassName() const;
    void setIconClassName(const QString &icon_class_name);
    bool is_icon_class_name_Set() const;
    bool is_icon_class_name_Valid() const;

    bool isIdle() const;
    void setIdle(const bool &idle);
    bool is_idle_Set() const;
    bool is_idle_Valid() const;

    bool isJnlpAgent() const;
    void setJnlpAgent(const bool &jnlp_agent);
    bool is_jnlp_agent_Set() const;
    bool is_jnlp_agent_Valid() const;

    bool isLaunchSupported() const;
    void setLaunchSupported(const bool &launch_supported);
    bool is_launch_supported_Set() const;
    bool is_launch_supported_Valid() const;

    OAILabel1 getLoadStatistics() const;
    void setLoadStatistics(const OAILabel1 &load_statistics);
    bool is_load_statistics_Set() const;
    bool is_load_statistics_Valid() const;

    bool isManualLaunchAllowed() const;
    void setManualLaunchAllowed(const bool &manual_launch_allowed);
    bool is_manual_launch_allowed_Set() const;
    bool is_manual_launch_allowed_Valid() const;

    OAIHudsonMasterComputermonitorData getMonitorData() const;
    void setMonitorData(const OAIHudsonMasterComputermonitorData &monitor_data);
    bool is_monitor_data_Set() const;
    bool is_monitor_data_Valid() const;

    qint32 getNumExecutors() const;
    void setNumExecutors(const qint32 &num_executors);
    bool is_num_executors_Set() const;
    bool is_num_executors_Valid() const;

    bool isOffline() const;
    void setOffline(const bool &offline);
    bool is_offline_Set() const;
    bool is_offline_Valid() const;

    QString getOfflineCause() const;
    void setOfflineCause(const QString &offline_cause);
    bool is_offline_cause_Set() const;
    bool is_offline_cause_Valid() const;

    QString getOfflineCauseReason() const;
    void setOfflineCauseReason(const QString &offline_cause_reason);
    bool is_offline_cause_reason_Set() const;
    bool is_offline_cause_reason_Valid() const;

    bool isTemporarilyOffline() const;
    void setTemporarilyOffline(const bool &temporarily_offline);
    bool is_temporarily_offline_Set() const;
    bool is_temporarily_offline_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;

    QString display_name;
    bool m_display_name_isSet;
    bool m_display_name_isValid;

    QList<OAIHudsonMasterComputerexecutors> executors;
    bool m_executors_isSet;
    bool m_executors_isValid;

    QString icon;
    bool m_icon_isSet;
    bool m_icon_isValid;

    QString icon_class_name;
    bool m_icon_class_name_isSet;
    bool m_icon_class_name_isValid;

    bool idle;
    bool m_idle_isSet;
    bool m_idle_isValid;

    bool jnlp_agent;
    bool m_jnlp_agent_isSet;
    bool m_jnlp_agent_isValid;

    bool launch_supported;
    bool m_launch_supported_isSet;
    bool m_launch_supported_isValid;

    OAILabel1 load_statistics;
    bool m_load_statistics_isSet;
    bool m_load_statistics_isValid;

    bool manual_launch_allowed;
    bool m_manual_launch_allowed_isSet;
    bool m_manual_launch_allowed_isValid;

    OAIHudsonMasterComputermonitorData monitor_data;
    bool m_monitor_data_isSet;
    bool m_monitor_data_isValid;

    qint32 num_executors;
    bool m_num_executors_isSet;
    bool m_num_executors_isValid;

    bool offline;
    bool m_offline_isSet;
    bool m_offline_isValid;

    QString offline_cause;
    bool m_offline_cause_isSet;
    bool m_offline_cause_isValid;

    QString offline_cause_reason;
    bool m_offline_cause_reason_isSet;
    bool m_offline_cause_reason_isValid;

    bool temporarily_offline;
    bool m_temporarily_offline_isSet;
    bool m_temporarily_offline_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIHudsonMasterComputer)

#endif // OAIHudsonMasterComputer_H
