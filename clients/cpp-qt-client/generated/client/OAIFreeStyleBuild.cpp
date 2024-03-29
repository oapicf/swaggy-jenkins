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

#include "OAIFreeStyleBuild.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIFreeStyleBuild::OAIFreeStyleBuild(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIFreeStyleBuild::OAIFreeStyleBuild() {
    this->initializeModel();
}

OAIFreeStyleBuild::~OAIFreeStyleBuild() {}

void OAIFreeStyleBuild::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_number_isSet = false;
    m_number_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;

    m_actions_isSet = false;
    m_actions_isValid = false;

    m_building_isSet = false;
    m_building_isValid = false;

    m_description_isSet = false;
    m_description_isValid = false;

    m_display_name_isSet = false;
    m_display_name_isValid = false;

    m_duration_isSet = false;
    m_duration_isValid = false;

    m_estimated_duration_isSet = false;
    m_estimated_duration_isValid = false;

    m_executor_isSet = false;
    m_executor_isValid = false;

    m_full_display_name_isSet = false;
    m_full_display_name_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;

    m_keep_log_isSet = false;
    m_keep_log_isValid = false;

    m_queue_id_isSet = false;
    m_queue_id_isValid = false;

    m_result_isSet = false;
    m_result_isValid = false;

    m_timestamp_isSet = false;
    m_timestamp_isValid = false;

    m_built_on_isSet = false;
    m_built_on_isValid = false;

    m_change_set_isSet = false;
    m_change_set_isValid = false;
}

void OAIFreeStyleBuild::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIFreeStyleBuild::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_number_isValid = ::OpenAPI::fromJsonValue(m_number, json[QString("number")]);
    m_number_isSet = !json[QString("number")].isNull() && m_number_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(m_url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;

    m_actions_isValid = ::OpenAPI::fromJsonValue(m_actions, json[QString("actions")]);
    m_actions_isSet = !json[QString("actions")].isNull() && m_actions_isValid;

    m_building_isValid = ::OpenAPI::fromJsonValue(m_building, json[QString("building")]);
    m_building_isSet = !json[QString("building")].isNull() && m_building_isValid;

    m_description_isValid = ::OpenAPI::fromJsonValue(m_description, json[QString("description")]);
    m_description_isSet = !json[QString("description")].isNull() && m_description_isValid;

    m_display_name_isValid = ::OpenAPI::fromJsonValue(m_display_name, json[QString("displayName")]);
    m_display_name_isSet = !json[QString("displayName")].isNull() && m_display_name_isValid;

    m_duration_isValid = ::OpenAPI::fromJsonValue(m_duration, json[QString("duration")]);
    m_duration_isSet = !json[QString("duration")].isNull() && m_duration_isValid;

    m_estimated_duration_isValid = ::OpenAPI::fromJsonValue(m_estimated_duration, json[QString("estimatedDuration")]);
    m_estimated_duration_isSet = !json[QString("estimatedDuration")].isNull() && m_estimated_duration_isValid;

    m_executor_isValid = ::OpenAPI::fromJsonValue(m_executor, json[QString("executor")]);
    m_executor_isSet = !json[QString("executor")].isNull() && m_executor_isValid;

    m_full_display_name_isValid = ::OpenAPI::fromJsonValue(m_full_display_name, json[QString("fullDisplayName")]);
    m_full_display_name_isSet = !json[QString("fullDisplayName")].isNull() && m_full_display_name_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_keep_log_isValid = ::OpenAPI::fromJsonValue(m_keep_log, json[QString("keepLog")]);
    m_keep_log_isSet = !json[QString("keepLog")].isNull() && m_keep_log_isValid;

    m_queue_id_isValid = ::OpenAPI::fromJsonValue(m_queue_id, json[QString("queueId")]);
    m_queue_id_isSet = !json[QString("queueId")].isNull() && m_queue_id_isValid;

    m_result_isValid = ::OpenAPI::fromJsonValue(m_result, json[QString("result")]);
    m_result_isSet = !json[QString("result")].isNull() && m_result_isValid;

    m_timestamp_isValid = ::OpenAPI::fromJsonValue(m_timestamp, json[QString("timestamp")]);
    m_timestamp_isSet = !json[QString("timestamp")].isNull() && m_timestamp_isValid;

    m_built_on_isValid = ::OpenAPI::fromJsonValue(m_built_on, json[QString("builtOn")]);
    m_built_on_isSet = !json[QString("builtOn")].isNull() && m_built_on_isValid;

    m_change_set_isValid = ::OpenAPI::fromJsonValue(m_change_set, json[QString("changeSet")]);
    m_change_set_isSet = !json[QString("changeSet")].isNull() && m_change_set_isValid;
}

QString OAIFreeStyleBuild::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIFreeStyleBuild::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    if (m_number_isSet) {
        obj.insert(QString("number"), ::OpenAPI::toJsonValue(m_number));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(m_url));
    }
    if (m_actions.size() > 0) {
        obj.insert(QString("actions"), ::OpenAPI::toJsonValue(m_actions));
    }
    if (m_building_isSet) {
        obj.insert(QString("building"), ::OpenAPI::toJsonValue(m_building));
    }
    if (m_description_isSet) {
        obj.insert(QString("description"), ::OpenAPI::toJsonValue(m_description));
    }
    if (m_display_name_isSet) {
        obj.insert(QString("displayName"), ::OpenAPI::toJsonValue(m_display_name));
    }
    if (m_duration_isSet) {
        obj.insert(QString("duration"), ::OpenAPI::toJsonValue(m_duration));
    }
    if (m_estimated_duration_isSet) {
        obj.insert(QString("estimatedDuration"), ::OpenAPI::toJsonValue(m_estimated_duration));
    }
    if (m_executor_isSet) {
        obj.insert(QString("executor"), ::OpenAPI::toJsonValue(m_executor));
    }
    if (m_full_display_name_isSet) {
        obj.insert(QString("fullDisplayName"), ::OpenAPI::toJsonValue(m_full_display_name));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_keep_log_isSet) {
        obj.insert(QString("keepLog"), ::OpenAPI::toJsonValue(m_keep_log));
    }
    if (m_queue_id_isSet) {
        obj.insert(QString("queueId"), ::OpenAPI::toJsonValue(m_queue_id));
    }
    if (m_result_isSet) {
        obj.insert(QString("result"), ::OpenAPI::toJsonValue(m_result));
    }
    if (m_timestamp_isSet) {
        obj.insert(QString("timestamp"), ::OpenAPI::toJsonValue(m_timestamp));
    }
    if (m_built_on_isSet) {
        obj.insert(QString("builtOn"), ::OpenAPI::toJsonValue(m_built_on));
    }
    if (m_change_set.isSet()) {
        obj.insert(QString("changeSet"), ::OpenAPI::toJsonValue(m_change_set));
    }
    return obj;
}

QString OAIFreeStyleBuild::getClass() const {
    return m__class;
}
void OAIFreeStyleBuild::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIFreeStyleBuild::is__class_Set() const{
    return m__class_isSet;
}

bool OAIFreeStyleBuild::is__class_Valid() const{
    return m__class_isValid;
}

qint32 OAIFreeStyleBuild::getNumber() const {
    return m_number;
}
void OAIFreeStyleBuild::setNumber(const qint32 &number) {
    m_number = number;
    m_number_isSet = true;
}

bool OAIFreeStyleBuild::is_number_Set() const{
    return m_number_isSet;
}

bool OAIFreeStyleBuild::is_number_Valid() const{
    return m_number_isValid;
}

QString OAIFreeStyleBuild::getUrl() const {
    return m_url;
}
void OAIFreeStyleBuild::setUrl(const QString &url) {
    m_url = url;
    m_url_isSet = true;
}

bool OAIFreeStyleBuild::is_url_Set() const{
    return m_url_isSet;
}

bool OAIFreeStyleBuild::is_url_Valid() const{
    return m_url_isValid;
}

QList<OAICauseAction> OAIFreeStyleBuild::getActions() const {
    return m_actions;
}
void OAIFreeStyleBuild::setActions(const QList<OAICauseAction> &actions) {
    m_actions = actions;
    m_actions_isSet = true;
}

bool OAIFreeStyleBuild::is_actions_Set() const{
    return m_actions_isSet;
}

bool OAIFreeStyleBuild::is_actions_Valid() const{
    return m_actions_isValid;
}

bool OAIFreeStyleBuild::isBuilding() const {
    return m_building;
}
void OAIFreeStyleBuild::setBuilding(const bool &building) {
    m_building = building;
    m_building_isSet = true;
}

bool OAIFreeStyleBuild::is_building_Set() const{
    return m_building_isSet;
}

bool OAIFreeStyleBuild::is_building_Valid() const{
    return m_building_isValid;
}

QString OAIFreeStyleBuild::getDescription() const {
    return m_description;
}
void OAIFreeStyleBuild::setDescription(const QString &description) {
    m_description = description;
    m_description_isSet = true;
}

bool OAIFreeStyleBuild::is_description_Set() const{
    return m_description_isSet;
}

bool OAIFreeStyleBuild::is_description_Valid() const{
    return m_description_isValid;
}

QString OAIFreeStyleBuild::getDisplayName() const {
    return m_display_name;
}
void OAIFreeStyleBuild::setDisplayName(const QString &display_name) {
    m_display_name = display_name;
    m_display_name_isSet = true;
}

bool OAIFreeStyleBuild::is_display_name_Set() const{
    return m_display_name_isSet;
}

bool OAIFreeStyleBuild::is_display_name_Valid() const{
    return m_display_name_isValid;
}

qint32 OAIFreeStyleBuild::getDuration() const {
    return m_duration;
}
void OAIFreeStyleBuild::setDuration(const qint32 &duration) {
    m_duration = duration;
    m_duration_isSet = true;
}

bool OAIFreeStyleBuild::is_duration_Set() const{
    return m_duration_isSet;
}

bool OAIFreeStyleBuild::is_duration_Valid() const{
    return m_duration_isValid;
}

qint32 OAIFreeStyleBuild::getEstimatedDuration() const {
    return m_estimated_duration;
}
void OAIFreeStyleBuild::setEstimatedDuration(const qint32 &estimated_duration) {
    m_estimated_duration = estimated_duration;
    m_estimated_duration_isSet = true;
}

bool OAIFreeStyleBuild::is_estimated_duration_Set() const{
    return m_estimated_duration_isSet;
}

bool OAIFreeStyleBuild::is_estimated_duration_Valid() const{
    return m_estimated_duration_isValid;
}

QString OAIFreeStyleBuild::getExecutor() const {
    return m_executor;
}
void OAIFreeStyleBuild::setExecutor(const QString &executor) {
    m_executor = executor;
    m_executor_isSet = true;
}

bool OAIFreeStyleBuild::is_executor_Set() const{
    return m_executor_isSet;
}

bool OAIFreeStyleBuild::is_executor_Valid() const{
    return m_executor_isValid;
}

QString OAIFreeStyleBuild::getFullDisplayName() const {
    return m_full_display_name;
}
void OAIFreeStyleBuild::setFullDisplayName(const QString &full_display_name) {
    m_full_display_name = full_display_name;
    m_full_display_name_isSet = true;
}

bool OAIFreeStyleBuild::is_full_display_name_Set() const{
    return m_full_display_name_isSet;
}

bool OAIFreeStyleBuild::is_full_display_name_Valid() const{
    return m_full_display_name_isValid;
}

QString OAIFreeStyleBuild::getId() const {
    return m_id;
}
void OAIFreeStyleBuild::setId(const QString &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIFreeStyleBuild::is_id_Set() const{
    return m_id_isSet;
}

bool OAIFreeStyleBuild::is_id_Valid() const{
    return m_id_isValid;
}

bool OAIFreeStyleBuild::isKeepLog() const {
    return m_keep_log;
}
void OAIFreeStyleBuild::setKeepLog(const bool &keep_log) {
    m_keep_log = keep_log;
    m_keep_log_isSet = true;
}

bool OAIFreeStyleBuild::is_keep_log_Set() const{
    return m_keep_log_isSet;
}

bool OAIFreeStyleBuild::is_keep_log_Valid() const{
    return m_keep_log_isValid;
}

qint32 OAIFreeStyleBuild::getQueueId() const {
    return m_queue_id;
}
void OAIFreeStyleBuild::setQueueId(const qint32 &queue_id) {
    m_queue_id = queue_id;
    m_queue_id_isSet = true;
}

bool OAIFreeStyleBuild::is_queue_id_Set() const{
    return m_queue_id_isSet;
}

bool OAIFreeStyleBuild::is_queue_id_Valid() const{
    return m_queue_id_isValid;
}

QString OAIFreeStyleBuild::getResult() const {
    return m_result;
}
void OAIFreeStyleBuild::setResult(const QString &result) {
    m_result = result;
    m_result_isSet = true;
}

bool OAIFreeStyleBuild::is_result_Set() const{
    return m_result_isSet;
}

bool OAIFreeStyleBuild::is_result_Valid() const{
    return m_result_isValid;
}

qint32 OAIFreeStyleBuild::getTimestamp() const {
    return m_timestamp;
}
void OAIFreeStyleBuild::setTimestamp(const qint32 &timestamp) {
    m_timestamp = timestamp;
    m_timestamp_isSet = true;
}

bool OAIFreeStyleBuild::is_timestamp_Set() const{
    return m_timestamp_isSet;
}

bool OAIFreeStyleBuild::is_timestamp_Valid() const{
    return m_timestamp_isValid;
}

QString OAIFreeStyleBuild::getBuiltOn() const {
    return m_built_on;
}
void OAIFreeStyleBuild::setBuiltOn(const QString &built_on) {
    m_built_on = built_on;
    m_built_on_isSet = true;
}

bool OAIFreeStyleBuild::is_built_on_Set() const{
    return m_built_on_isSet;
}

bool OAIFreeStyleBuild::is_built_on_Valid() const{
    return m_built_on_isValid;
}

OAIEmptyChangeLogSet OAIFreeStyleBuild::getChangeSet() const {
    return m_change_set;
}
void OAIFreeStyleBuild::setChangeSet(const OAIEmptyChangeLogSet &change_set) {
    m_change_set = change_set;
    m_change_set_isSet = true;
}

bool OAIFreeStyleBuild::is_change_set_Set() const{
    return m_change_set_isSet;
}

bool OAIFreeStyleBuild::is_change_set_Valid() const{
    return m_change_set_isValid;
}

bool OAIFreeStyleBuild::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_number_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_actions.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_building_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_description_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_display_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_duration_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_estimated_duration_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_executor_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_full_display_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_keep_log_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_queue_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_result_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_timestamp_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_built_on_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_change_set.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIFreeStyleBuild::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
