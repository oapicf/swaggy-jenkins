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

#include "OAIPipelineRunNode.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIPipelineRunNode::OAIPipelineRunNode(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIPipelineRunNode::OAIPipelineRunNode() {
    this->initializeModel();
}

OAIPipelineRunNode::~OAIPipelineRunNode() {}

void OAIPipelineRunNode::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_display_name_isSet = false;
    m_display_name_isValid = false;

    m_duration_in_millis_isSet = false;
    m_duration_in_millis_isValid = false;

    m_edges_isSet = false;
    m_edges_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;

    m_result_isSet = false;
    m_result_isValid = false;

    m_start_time_isSet = false;
    m_start_time_isValid = false;

    m_state_isSet = false;
    m_state_isValid = false;
}

void OAIPipelineRunNode::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIPipelineRunNode::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_display_name_isValid = ::OpenAPI::fromJsonValue(display_name, json[QString("displayName")]);
    m_display_name_isSet = !json[QString("displayName")].isNull() && m_display_name_isValid;

    m_duration_in_millis_isValid = ::OpenAPI::fromJsonValue(duration_in_millis, json[QString("durationInMillis")]);
    m_duration_in_millis_isSet = !json[QString("durationInMillis")].isNull() && m_duration_in_millis_isValid;

    m_edges_isValid = ::OpenAPI::fromJsonValue(edges, json[QString("edges")]);
    m_edges_isSet = !json[QString("edges")].isNull() && m_edges_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_result_isValid = ::OpenAPI::fromJsonValue(result, json[QString("result")]);
    m_result_isSet = !json[QString("result")].isNull() && m_result_isValid;

    m_start_time_isValid = ::OpenAPI::fromJsonValue(start_time, json[QString("startTime")]);
    m_start_time_isSet = !json[QString("startTime")].isNull() && m_start_time_isValid;

    m_state_isValid = ::OpenAPI::fromJsonValue(state, json[QString("state")]);
    m_state_isSet = !json[QString("state")].isNull() && m_state_isValid;
}

QString OAIPipelineRunNode::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIPipelineRunNode::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    if (m_display_name_isSet) {
        obj.insert(QString("displayName"), ::OpenAPI::toJsonValue(display_name));
    }
    if (m_duration_in_millis_isSet) {
        obj.insert(QString("durationInMillis"), ::OpenAPI::toJsonValue(duration_in_millis));
    }
    if (edges.size() > 0) {
        obj.insert(QString("edges"), ::OpenAPI::toJsonValue(edges));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
    if (m_result_isSet) {
        obj.insert(QString("result"), ::OpenAPI::toJsonValue(result));
    }
    if (m_start_time_isSet) {
        obj.insert(QString("startTime"), ::OpenAPI::toJsonValue(start_time));
    }
    if (m_state_isSet) {
        obj.insert(QString("state"), ::OpenAPI::toJsonValue(state));
    }
    return obj;
}

QString OAIPipelineRunNode::getClass() const {
    return _class;
}
void OAIPipelineRunNode::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAIPipelineRunNode::is__class_Set() const{
    return m__class_isSet;
}

bool OAIPipelineRunNode::is__class_Valid() const{
    return m__class_isValid;
}

QString OAIPipelineRunNode::getDisplayName() const {
    return display_name;
}
void OAIPipelineRunNode::setDisplayName(const QString &display_name) {
    this->display_name = display_name;
    this->m_display_name_isSet = true;
}

bool OAIPipelineRunNode::is_display_name_Set() const{
    return m_display_name_isSet;
}

bool OAIPipelineRunNode::is_display_name_Valid() const{
    return m_display_name_isValid;
}

qint32 OAIPipelineRunNode::getDurationInMillis() const {
    return duration_in_millis;
}
void OAIPipelineRunNode::setDurationInMillis(const qint32 &duration_in_millis) {
    this->duration_in_millis = duration_in_millis;
    this->m_duration_in_millis_isSet = true;
}

bool OAIPipelineRunNode::is_duration_in_millis_Set() const{
    return m_duration_in_millis_isSet;
}

bool OAIPipelineRunNode::is_duration_in_millis_Valid() const{
    return m_duration_in_millis_isValid;
}

QList<OAIPipelineRunNodeedges> OAIPipelineRunNode::getEdges() const {
    return edges;
}
void OAIPipelineRunNode::setEdges(const QList<OAIPipelineRunNodeedges> &edges) {
    this->edges = edges;
    this->m_edges_isSet = true;
}

bool OAIPipelineRunNode::is_edges_Set() const{
    return m_edges_isSet;
}

bool OAIPipelineRunNode::is_edges_Valid() const{
    return m_edges_isValid;
}

QString OAIPipelineRunNode::getId() const {
    return id;
}
void OAIPipelineRunNode::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

bool OAIPipelineRunNode::is_id_Set() const{
    return m_id_isSet;
}

bool OAIPipelineRunNode::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIPipelineRunNode::getResult() const {
    return result;
}
void OAIPipelineRunNode::setResult(const QString &result) {
    this->result = result;
    this->m_result_isSet = true;
}

bool OAIPipelineRunNode::is_result_Set() const{
    return m_result_isSet;
}

bool OAIPipelineRunNode::is_result_Valid() const{
    return m_result_isValid;
}

QString OAIPipelineRunNode::getStartTime() const {
    return start_time;
}
void OAIPipelineRunNode::setStartTime(const QString &start_time) {
    this->start_time = start_time;
    this->m_start_time_isSet = true;
}

bool OAIPipelineRunNode::is_start_time_Set() const{
    return m_start_time_isSet;
}

bool OAIPipelineRunNode::is_start_time_Valid() const{
    return m_start_time_isValid;
}

QString OAIPipelineRunNode::getState() const {
    return state;
}
void OAIPipelineRunNode::setState(const QString &state) {
    this->state = state;
    this->m_state_isSet = true;
}

bool OAIPipelineRunNode::is_state_Set() const{
    return m_state_isSet;
}

bool OAIPipelineRunNode::is_state_Valid() const{
    return m_state_isValid;
}

bool OAIPipelineRunNode::isSet() const {
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

        if (m_duration_in_millis_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (edges.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_result_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_start_time_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_state_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIPipelineRunNode::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
