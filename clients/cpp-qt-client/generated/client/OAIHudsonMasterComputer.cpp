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

#include "OAIHudsonMasterComputer.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIHudsonMasterComputer::OAIHudsonMasterComputer(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIHudsonMasterComputer::OAIHudsonMasterComputer() {
    this->initializeModel();
}

OAIHudsonMasterComputer::~OAIHudsonMasterComputer() {}

void OAIHudsonMasterComputer::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_display_name_isSet = false;
    m_display_name_isValid = false;

    m_executors_isSet = false;
    m_executors_isValid = false;

    m_icon_isSet = false;
    m_icon_isValid = false;

    m_icon_class_name_isSet = false;
    m_icon_class_name_isValid = false;

    m_idle_isSet = false;
    m_idle_isValid = false;

    m_jnlp_agent_isSet = false;
    m_jnlp_agent_isValid = false;

    m_launch_supported_isSet = false;
    m_launch_supported_isValid = false;

    m_load_statistics_isSet = false;
    m_load_statistics_isValid = false;

    m_manual_launch_allowed_isSet = false;
    m_manual_launch_allowed_isValid = false;

    m_monitor_data_isSet = false;
    m_monitor_data_isValid = false;

    m_num_executors_isSet = false;
    m_num_executors_isValid = false;

    m_offline_isSet = false;
    m_offline_isValid = false;

    m_offline_cause_isSet = false;
    m_offline_cause_isValid = false;

    m_offline_cause_reason_isSet = false;
    m_offline_cause_reason_isValid = false;

    m_temporarily_offline_isSet = false;
    m_temporarily_offline_isValid = false;
}

void OAIHudsonMasterComputer::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIHudsonMasterComputer::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_display_name_isValid = ::OpenAPI::fromJsonValue(m_display_name, json[QString("displayName")]);
    m_display_name_isSet = !json[QString("displayName")].isNull() && m_display_name_isValid;

    m_executors_isValid = ::OpenAPI::fromJsonValue(m_executors, json[QString("executors")]);
    m_executors_isSet = !json[QString("executors")].isNull() && m_executors_isValid;

    m_icon_isValid = ::OpenAPI::fromJsonValue(m_icon, json[QString("icon")]);
    m_icon_isSet = !json[QString("icon")].isNull() && m_icon_isValid;

    m_icon_class_name_isValid = ::OpenAPI::fromJsonValue(m_icon_class_name, json[QString("iconClassName")]);
    m_icon_class_name_isSet = !json[QString("iconClassName")].isNull() && m_icon_class_name_isValid;

    m_idle_isValid = ::OpenAPI::fromJsonValue(m_idle, json[QString("idle")]);
    m_idle_isSet = !json[QString("idle")].isNull() && m_idle_isValid;

    m_jnlp_agent_isValid = ::OpenAPI::fromJsonValue(m_jnlp_agent, json[QString("jnlpAgent")]);
    m_jnlp_agent_isSet = !json[QString("jnlpAgent")].isNull() && m_jnlp_agent_isValid;

    m_launch_supported_isValid = ::OpenAPI::fromJsonValue(m_launch_supported, json[QString("launchSupported")]);
    m_launch_supported_isSet = !json[QString("launchSupported")].isNull() && m_launch_supported_isValid;

    m_load_statistics_isValid = ::OpenAPI::fromJsonValue(m_load_statistics, json[QString("loadStatistics")]);
    m_load_statistics_isSet = !json[QString("loadStatistics")].isNull() && m_load_statistics_isValid;

    m_manual_launch_allowed_isValid = ::OpenAPI::fromJsonValue(m_manual_launch_allowed, json[QString("manualLaunchAllowed")]);
    m_manual_launch_allowed_isSet = !json[QString("manualLaunchAllowed")].isNull() && m_manual_launch_allowed_isValid;

    m_monitor_data_isValid = ::OpenAPI::fromJsonValue(m_monitor_data, json[QString("monitorData")]);
    m_monitor_data_isSet = !json[QString("monitorData")].isNull() && m_monitor_data_isValid;

    m_num_executors_isValid = ::OpenAPI::fromJsonValue(m_num_executors, json[QString("numExecutors")]);
    m_num_executors_isSet = !json[QString("numExecutors")].isNull() && m_num_executors_isValid;

    m_offline_isValid = ::OpenAPI::fromJsonValue(m_offline, json[QString("offline")]);
    m_offline_isSet = !json[QString("offline")].isNull() && m_offline_isValid;

    m_offline_cause_isValid = ::OpenAPI::fromJsonValue(m_offline_cause, json[QString("offlineCause")]);
    m_offline_cause_isSet = !json[QString("offlineCause")].isNull() && m_offline_cause_isValid;

    m_offline_cause_reason_isValid = ::OpenAPI::fromJsonValue(m_offline_cause_reason, json[QString("offlineCauseReason")]);
    m_offline_cause_reason_isSet = !json[QString("offlineCauseReason")].isNull() && m_offline_cause_reason_isValid;

    m_temporarily_offline_isValid = ::OpenAPI::fromJsonValue(m_temporarily_offline, json[QString("temporarilyOffline")]);
    m_temporarily_offline_isSet = !json[QString("temporarilyOffline")].isNull() && m_temporarily_offline_isValid;
}

QString OAIHudsonMasterComputer::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIHudsonMasterComputer::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    if (m_display_name_isSet) {
        obj.insert(QString("displayName"), ::OpenAPI::toJsonValue(m_display_name));
    }
    if (m_executors.size() > 0) {
        obj.insert(QString("executors"), ::OpenAPI::toJsonValue(m_executors));
    }
    if (m_icon_isSet) {
        obj.insert(QString("icon"), ::OpenAPI::toJsonValue(m_icon));
    }
    if (m_icon_class_name_isSet) {
        obj.insert(QString("iconClassName"), ::OpenAPI::toJsonValue(m_icon_class_name));
    }
    if (m_idle_isSet) {
        obj.insert(QString("idle"), ::OpenAPI::toJsonValue(m_idle));
    }
    if (m_jnlp_agent_isSet) {
        obj.insert(QString("jnlpAgent"), ::OpenAPI::toJsonValue(m_jnlp_agent));
    }
    if (m_launch_supported_isSet) {
        obj.insert(QString("launchSupported"), ::OpenAPI::toJsonValue(m_launch_supported));
    }
    if (m_load_statistics.isSet()) {
        obj.insert(QString("loadStatistics"), ::OpenAPI::toJsonValue(m_load_statistics));
    }
    if (m_manual_launch_allowed_isSet) {
        obj.insert(QString("manualLaunchAllowed"), ::OpenAPI::toJsonValue(m_manual_launch_allowed));
    }
    if (m_monitor_data.isSet()) {
        obj.insert(QString("monitorData"), ::OpenAPI::toJsonValue(m_monitor_data));
    }
    if (m_num_executors_isSet) {
        obj.insert(QString("numExecutors"), ::OpenAPI::toJsonValue(m_num_executors));
    }
    if (m_offline_isSet) {
        obj.insert(QString("offline"), ::OpenAPI::toJsonValue(m_offline));
    }
    if (m_offline_cause_isSet) {
        obj.insert(QString("offlineCause"), ::OpenAPI::toJsonValue(m_offline_cause));
    }
    if (m_offline_cause_reason_isSet) {
        obj.insert(QString("offlineCauseReason"), ::OpenAPI::toJsonValue(m_offline_cause_reason));
    }
    if (m_temporarily_offline_isSet) {
        obj.insert(QString("temporarilyOffline"), ::OpenAPI::toJsonValue(m_temporarily_offline));
    }
    return obj;
}

QString OAIHudsonMasterComputer::getClass() const {
    return m__class;
}
void OAIHudsonMasterComputer::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIHudsonMasterComputer::is__class_Set() const{
    return m__class_isSet;
}

bool OAIHudsonMasterComputer::is__class_Valid() const{
    return m__class_isValid;
}

QString OAIHudsonMasterComputer::getDisplayName() const {
    return m_display_name;
}
void OAIHudsonMasterComputer::setDisplayName(const QString &display_name) {
    m_display_name = display_name;
    m_display_name_isSet = true;
}

bool OAIHudsonMasterComputer::is_display_name_Set() const{
    return m_display_name_isSet;
}

bool OAIHudsonMasterComputer::is_display_name_Valid() const{
    return m_display_name_isValid;
}

QList<OAIHudsonMasterComputerexecutors> OAIHudsonMasterComputer::getExecutors() const {
    return m_executors;
}
void OAIHudsonMasterComputer::setExecutors(const QList<OAIHudsonMasterComputerexecutors> &executors) {
    m_executors = executors;
    m_executors_isSet = true;
}

bool OAIHudsonMasterComputer::is_executors_Set() const{
    return m_executors_isSet;
}

bool OAIHudsonMasterComputer::is_executors_Valid() const{
    return m_executors_isValid;
}

QString OAIHudsonMasterComputer::getIcon() const {
    return m_icon;
}
void OAIHudsonMasterComputer::setIcon(const QString &icon) {
    m_icon = icon;
    m_icon_isSet = true;
}

bool OAIHudsonMasterComputer::is_icon_Set() const{
    return m_icon_isSet;
}

bool OAIHudsonMasterComputer::is_icon_Valid() const{
    return m_icon_isValid;
}

QString OAIHudsonMasterComputer::getIconClassName() const {
    return m_icon_class_name;
}
void OAIHudsonMasterComputer::setIconClassName(const QString &icon_class_name) {
    m_icon_class_name = icon_class_name;
    m_icon_class_name_isSet = true;
}

bool OAIHudsonMasterComputer::is_icon_class_name_Set() const{
    return m_icon_class_name_isSet;
}

bool OAIHudsonMasterComputer::is_icon_class_name_Valid() const{
    return m_icon_class_name_isValid;
}

bool OAIHudsonMasterComputer::isIdle() const {
    return m_idle;
}
void OAIHudsonMasterComputer::setIdle(const bool &idle) {
    m_idle = idle;
    m_idle_isSet = true;
}

bool OAIHudsonMasterComputer::is_idle_Set() const{
    return m_idle_isSet;
}

bool OAIHudsonMasterComputer::is_idle_Valid() const{
    return m_idle_isValid;
}

bool OAIHudsonMasterComputer::isJnlpAgent() const {
    return m_jnlp_agent;
}
void OAIHudsonMasterComputer::setJnlpAgent(const bool &jnlp_agent) {
    m_jnlp_agent = jnlp_agent;
    m_jnlp_agent_isSet = true;
}

bool OAIHudsonMasterComputer::is_jnlp_agent_Set() const{
    return m_jnlp_agent_isSet;
}

bool OAIHudsonMasterComputer::is_jnlp_agent_Valid() const{
    return m_jnlp_agent_isValid;
}

bool OAIHudsonMasterComputer::isLaunchSupported() const {
    return m_launch_supported;
}
void OAIHudsonMasterComputer::setLaunchSupported(const bool &launch_supported) {
    m_launch_supported = launch_supported;
    m_launch_supported_isSet = true;
}

bool OAIHudsonMasterComputer::is_launch_supported_Set() const{
    return m_launch_supported_isSet;
}

bool OAIHudsonMasterComputer::is_launch_supported_Valid() const{
    return m_launch_supported_isValid;
}

OAILabel1 OAIHudsonMasterComputer::getLoadStatistics() const {
    return m_load_statistics;
}
void OAIHudsonMasterComputer::setLoadStatistics(const OAILabel1 &load_statistics) {
    m_load_statistics = load_statistics;
    m_load_statistics_isSet = true;
}

bool OAIHudsonMasterComputer::is_load_statistics_Set() const{
    return m_load_statistics_isSet;
}

bool OAIHudsonMasterComputer::is_load_statistics_Valid() const{
    return m_load_statistics_isValid;
}

bool OAIHudsonMasterComputer::isManualLaunchAllowed() const {
    return m_manual_launch_allowed;
}
void OAIHudsonMasterComputer::setManualLaunchAllowed(const bool &manual_launch_allowed) {
    m_manual_launch_allowed = manual_launch_allowed;
    m_manual_launch_allowed_isSet = true;
}

bool OAIHudsonMasterComputer::is_manual_launch_allowed_Set() const{
    return m_manual_launch_allowed_isSet;
}

bool OAIHudsonMasterComputer::is_manual_launch_allowed_Valid() const{
    return m_manual_launch_allowed_isValid;
}

OAIHudsonMasterComputermonitorData OAIHudsonMasterComputer::getMonitorData() const {
    return m_monitor_data;
}
void OAIHudsonMasterComputer::setMonitorData(const OAIHudsonMasterComputermonitorData &monitor_data) {
    m_monitor_data = monitor_data;
    m_monitor_data_isSet = true;
}

bool OAIHudsonMasterComputer::is_monitor_data_Set() const{
    return m_monitor_data_isSet;
}

bool OAIHudsonMasterComputer::is_monitor_data_Valid() const{
    return m_monitor_data_isValid;
}

qint32 OAIHudsonMasterComputer::getNumExecutors() const {
    return m_num_executors;
}
void OAIHudsonMasterComputer::setNumExecutors(const qint32 &num_executors) {
    m_num_executors = num_executors;
    m_num_executors_isSet = true;
}

bool OAIHudsonMasterComputer::is_num_executors_Set() const{
    return m_num_executors_isSet;
}

bool OAIHudsonMasterComputer::is_num_executors_Valid() const{
    return m_num_executors_isValid;
}

bool OAIHudsonMasterComputer::isOffline() const {
    return m_offline;
}
void OAIHudsonMasterComputer::setOffline(const bool &offline) {
    m_offline = offline;
    m_offline_isSet = true;
}

bool OAIHudsonMasterComputer::is_offline_Set() const{
    return m_offline_isSet;
}

bool OAIHudsonMasterComputer::is_offline_Valid() const{
    return m_offline_isValid;
}

QString OAIHudsonMasterComputer::getOfflineCause() const {
    return m_offline_cause;
}
void OAIHudsonMasterComputer::setOfflineCause(const QString &offline_cause) {
    m_offline_cause = offline_cause;
    m_offline_cause_isSet = true;
}

bool OAIHudsonMasterComputer::is_offline_cause_Set() const{
    return m_offline_cause_isSet;
}

bool OAIHudsonMasterComputer::is_offline_cause_Valid() const{
    return m_offline_cause_isValid;
}

QString OAIHudsonMasterComputer::getOfflineCauseReason() const {
    return m_offline_cause_reason;
}
void OAIHudsonMasterComputer::setOfflineCauseReason(const QString &offline_cause_reason) {
    m_offline_cause_reason = offline_cause_reason;
    m_offline_cause_reason_isSet = true;
}

bool OAIHudsonMasterComputer::is_offline_cause_reason_Set() const{
    return m_offline_cause_reason_isSet;
}

bool OAIHudsonMasterComputer::is_offline_cause_reason_Valid() const{
    return m_offline_cause_reason_isValid;
}

bool OAIHudsonMasterComputer::isTemporarilyOffline() const {
    return m_temporarily_offline;
}
void OAIHudsonMasterComputer::setTemporarilyOffline(const bool &temporarily_offline) {
    m_temporarily_offline = temporarily_offline;
    m_temporarily_offline_isSet = true;
}

bool OAIHudsonMasterComputer::is_temporarily_offline_Set() const{
    return m_temporarily_offline_isSet;
}

bool OAIHudsonMasterComputer::is_temporarily_offline_Valid() const{
    return m_temporarily_offline_isValid;
}

bool OAIHudsonMasterComputer::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_display_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_executors.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_icon_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_icon_class_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_idle_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_jnlp_agent_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_launch_supported_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_load_statistics.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_manual_launch_allowed_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_monitor_data.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_num_executors_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_offline_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_offline_cause_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_offline_cause_reason_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_temporarily_offline_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIHudsonMasterComputer::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
