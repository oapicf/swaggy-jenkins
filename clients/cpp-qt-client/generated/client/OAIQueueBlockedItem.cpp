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

#include "OAIQueueBlockedItem.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIQueueBlockedItem::OAIQueueBlockedItem(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIQueueBlockedItem::OAIQueueBlockedItem() {
    this->initializeModel();
}

OAIQueueBlockedItem::~OAIQueueBlockedItem() {}

void OAIQueueBlockedItem::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_actions_isSet = false;
    m_actions_isValid = false;

    m_blocked_isSet = false;
    m_blocked_isValid = false;

    m_buildable_isSet = false;
    m_buildable_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;

    m_in_queue_since_isSet = false;
    m_in_queue_since_isValid = false;

    m_params_isSet = false;
    m_params_isValid = false;

    m_stuck_isSet = false;
    m_stuck_isValid = false;

    m_task_isSet = false;
    m_task_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;

    m_why_isSet = false;
    m_why_isValid = false;

    m_buildable_start_milliseconds_isSet = false;
    m_buildable_start_milliseconds_isValid = false;
}

void OAIQueueBlockedItem::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIQueueBlockedItem::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_actions_isValid = ::OpenAPI::fromJsonValue(m_actions, json[QString("actions")]);
    m_actions_isSet = !json[QString("actions")].isNull() && m_actions_isValid;

    m_blocked_isValid = ::OpenAPI::fromJsonValue(m_blocked, json[QString("blocked")]);
    m_blocked_isSet = !json[QString("blocked")].isNull() && m_blocked_isValid;

    m_buildable_isValid = ::OpenAPI::fromJsonValue(m_buildable, json[QString("buildable")]);
    m_buildable_isSet = !json[QString("buildable")].isNull() && m_buildable_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_in_queue_since_isValid = ::OpenAPI::fromJsonValue(m_in_queue_since, json[QString("inQueueSince")]);
    m_in_queue_since_isSet = !json[QString("inQueueSince")].isNull() && m_in_queue_since_isValid;

    m_params_isValid = ::OpenAPI::fromJsonValue(m_params, json[QString("params")]);
    m_params_isSet = !json[QString("params")].isNull() && m_params_isValid;

    m_stuck_isValid = ::OpenAPI::fromJsonValue(m_stuck, json[QString("stuck")]);
    m_stuck_isSet = !json[QString("stuck")].isNull() && m_stuck_isValid;

    m_task_isValid = ::OpenAPI::fromJsonValue(m_task, json[QString("task")]);
    m_task_isSet = !json[QString("task")].isNull() && m_task_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(m_url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;

    m_why_isValid = ::OpenAPI::fromJsonValue(m_why, json[QString("why")]);
    m_why_isSet = !json[QString("why")].isNull() && m_why_isValid;

    m_buildable_start_milliseconds_isValid = ::OpenAPI::fromJsonValue(m_buildable_start_milliseconds, json[QString("buildableStartMilliseconds")]);
    m_buildable_start_milliseconds_isSet = !json[QString("buildableStartMilliseconds")].isNull() && m_buildable_start_milliseconds_isValid;
}

QString OAIQueueBlockedItem::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIQueueBlockedItem::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    if (m_actions.size() > 0) {
        obj.insert(QString("actions"), ::OpenAPI::toJsonValue(m_actions));
    }
    if (m_blocked_isSet) {
        obj.insert(QString("blocked"), ::OpenAPI::toJsonValue(m_blocked));
    }
    if (m_buildable_isSet) {
        obj.insert(QString("buildable"), ::OpenAPI::toJsonValue(m_buildable));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_in_queue_since_isSet) {
        obj.insert(QString("inQueueSince"), ::OpenAPI::toJsonValue(m_in_queue_since));
    }
    if (m_params_isSet) {
        obj.insert(QString("params"), ::OpenAPI::toJsonValue(m_params));
    }
    if (m_stuck_isSet) {
        obj.insert(QString("stuck"), ::OpenAPI::toJsonValue(m_stuck));
    }
    if (m_task.isSet()) {
        obj.insert(QString("task"), ::OpenAPI::toJsonValue(m_task));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(m_url));
    }
    if (m_why_isSet) {
        obj.insert(QString("why"), ::OpenAPI::toJsonValue(m_why));
    }
    if (m_buildable_start_milliseconds_isSet) {
        obj.insert(QString("buildableStartMilliseconds"), ::OpenAPI::toJsonValue(m_buildable_start_milliseconds));
    }
    return obj;
}

QString OAIQueueBlockedItem::getClass() const {
    return m__class;
}
void OAIQueueBlockedItem::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIQueueBlockedItem::is__class_Set() const{
    return m__class_isSet;
}

bool OAIQueueBlockedItem::is__class_Valid() const{
    return m__class_isValid;
}

QList<OAICauseAction> OAIQueueBlockedItem::getActions() const {
    return m_actions;
}
void OAIQueueBlockedItem::setActions(const QList<OAICauseAction> &actions) {
    m_actions = actions;
    m_actions_isSet = true;
}

bool OAIQueueBlockedItem::is_actions_Set() const{
    return m_actions_isSet;
}

bool OAIQueueBlockedItem::is_actions_Valid() const{
    return m_actions_isValid;
}

bool OAIQueueBlockedItem::isBlocked() const {
    return m_blocked;
}
void OAIQueueBlockedItem::setBlocked(const bool &blocked) {
    m_blocked = blocked;
    m_blocked_isSet = true;
}

bool OAIQueueBlockedItem::is_blocked_Set() const{
    return m_blocked_isSet;
}

bool OAIQueueBlockedItem::is_blocked_Valid() const{
    return m_blocked_isValid;
}

bool OAIQueueBlockedItem::isBuildable() const {
    return m_buildable;
}
void OAIQueueBlockedItem::setBuildable(const bool &buildable) {
    m_buildable = buildable;
    m_buildable_isSet = true;
}

bool OAIQueueBlockedItem::is_buildable_Set() const{
    return m_buildable_isSet;
}

bool OAIQueueBlockedItem::is_buildable_Valid() const{
    return m_buildable_isValid;
}

qint32 OAIQueueBlockedItem::getId() const {
    return m_id;
}
void OAIQueueBlockedItem::setId(const qint32 &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIQueueBlockedItem::is_id_Set() const{
    return m_id_isSet;
}

bool OAIQueueBlockedItem::is_id_Valid() const{
    return m_id_isValid;
}

qint32 OAIQueueBlockedItem::getInQueueSince() const {
    return m_in_queue_since;
}
void OAIQueueBlockedItem::setInQueueSince(const qint32 &in_queue_since) {
    m_in_queue_since = in_queue_since;
    m_in_queue_since_isSet = true;
}

bool OAIQueueBlockedItem::is_in_queue_since_Set() const{
    return m_in_queue_since_isSet;
}

bool OAIQueueBlockedItem::is_in_queue_since_Valid() const{
    return m_in_queue_since_isValid;
}

QString OAIQueueBlockedItem::getParams() const {
    return m_params;
}
void OAIQueueBlockedItem::setParams(const QString &params) {
    m_params = params;
    m_params_isSet = true;
}

bool OAIQueueBlockedItem::is_params_Set() const{
    return m_params_isSet;
}

bool OAIQueueBlockedItem::is_params_Valid() const{
    return m_params_isValid;
}

bool OAIQueueBlockedItem::isStuck() const {
    return m_stuck;
}
void OAIQueueBlockedItem::setStuck(const bool &stuck) {
    m_stuck = stuck;
    m_stuck_isSet = true;
}

bool OAIQueueBlockedItem::is_stuck_Set() const{
    return m_stuck_isSet;
}

bool OAIQueueBlockedItem::is_stuck_Valid() const{
    return m_stuck_isValid;
}

OAIFreeStyleProject OAIQueueBlockedItem::getTask() const {
    return m_task;
}
void OAIQueueBlockedItem::setTask(const OAIFreeStyleProject &task) {
    m_task = task;
    m_task_isSet = true;
}

bool OAIQueueBlockedItem::is_task_Set() const{
    return m_task_isSet;
}

bool OAIQueueBlockedItem::is_task_Valid() const{
    return m_task_isValid;
}

QString OAIQueueBlockedItem::getUrl() const {
    return m_url;
}
void OAIQueueBlockedItem::setUrl(const QString &url) {
    m_url = url;
    m_url_isSet = true;
}

bool OAIQueueBlockedItem::is_url_Set() const{
    return m_url_isSet;
}

bool OAIQueueBlockedItem::is_url_Valid() const{
    return m_url_isValid;
}

QString OAIQueueBlockedItem::getWhy() const {
    return m_why;
}
void OAIQueueBlockedItem::setWhy(const QString &why) {
    m_why = why;
    m_why_isSet = true;
}

bool OAIQueueBlockedItem::is_why_Set() const{
    return m_why_isSet;
}

bool OAIQueueBlockedItem::is_why_Valid() const{
    return m_why_isValid;
}

qint32 OAIQueueBlockedItem::getBuildableStartMilliseconds() const {
    return m_buildable_start_milliseconds;
}
void OAIQueueBlockedItem::setBuildableStartMilliseconds(const qint32 &buildable_start_milliseconds) {
    m_buildable_start_milliseconds = buildable_start_milliseconds;
    m_buildable_start_milliseconds_isSet = true;
}

bool OAIQueueBlockedItem::is_buildable_start_milliseconds_Set() const{
    return m_buildable_start_milliseconds_isSet;
}

bool OAIQueueBlockedItem::is_buildable_start_milliseconds_Valid() const{
    return m_buildable_start_milliseconds_isValid;
}

bool OAIQueueBlockedItem::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_actions.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_blocked_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_buildable_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_in_queue_since_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_params_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_stuck_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_task.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_why_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_buildable_start_milliseconds_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIQueueBlockedItem::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
