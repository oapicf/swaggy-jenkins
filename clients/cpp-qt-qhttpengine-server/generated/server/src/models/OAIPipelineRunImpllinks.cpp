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

#include "OAIPipelineRunImpllinks.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIPipelineRunImpllinks::OAIPipelineRunImpllinks(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIPipelineRunImpllinks::OAIPipelineRunImpllinks() {
    this->initializeModel();
}

OAIPipelineRunImpllinks::~OAIPipelineRunImpllinks() {}

void OAIPipelineRunImpllinks::initializeModel() {

    m_nodes_isSet = false;
    m_nodes_isValid = false;

    m_log_isSet = false;
    m_log_isValid = false;

    m_self_isSet = false;
    m_self_isValid = false;

    m_actions_isSet = false;
    m_actions_isValid = false;

    m_steps_isSet = false;
    m_steps_isValid = false;

    m__class_isSet = false;
    m__class_isValid = false;
}

void OAIPipelineRunImpllinks::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIPipelineRunImpllinks::fromJsonObject(QJsonObject json) {

    m_nodes_isValid = ::OpenAPI::fromJsonValue(nodes, json[QString("nodes")]);
    m_nodes_isSet = !json[QString("nodes")].isNull() && m_nodes_isValid;

    m_log_isValid = ::OpenAPI::fromJsonValue(log, json[QString("log")]);
    m_log_isSet = !json[QString("log")].isNull() && m_log_isValid;

    m_self_isValid = ::OpenAPI::fromJsonValue(self, json[QString("self")]);
    m_self_isSet = !json[QString("self")].isNull() && m_self_isValid;

    m_actions_isValid = ::OpenAPI::fromJsonValue(actions, json[QString("actions")]);
    m_actions_isSet = !json[QString("actions")].isNull() && m_actions_isValid;

    m_steps_isValid = ::OpenAPI::fromJsonValue(steps, json[QString("steps")]);
    m_steps_isSet = !json[QString("steps")].isNull() && m_steps_isValid;

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;
}

QString OAIPipelineRunImpllinks::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIPipelineRunImpllinks::asJsonObject() const {
    QJsonObject obj;
    if (nodes.isSet()) {
        obj.insert(QString("nodes"), ::OpenAPI::toJsonValue(nodes));
    }
    if (log.isSet()) {
        obj.insert(QString("log"), ::OpenAPI::toJsonValue(log));
    }
    if (self.isSet()) {
        obj.insert(QString("self"), ::OpenAPI::toJsonValue(self));
    }
    if (actions.isSet()) {
        obj.insert(QString("actions"), ::OpenAPI::toJsonValue(actions));
    }
    if (steps.isSet()) {
        obj.insert(QString("steps"), ::OpenAPI::toJsonValue(steps));
    }
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    return obj;
}

OAILink OAIPipelineRunImpllinks::getNodes() const {
    return nodes;
}
void OAIPipelineRunImpllinks::setNodes(const OAILink &nodes) {
    this->nodes = nodes;
    this->m_nodes_isSet = true;
}

bool OAIPipelineRunImpllinks::is_nodes_Set() const{
    return m_nodes_isSet;
}

bool OAIPipelineRunImpllinks::is_nodes_Valid() const{
    return m_nodes_isValid;
}

OAILink OAIPipelineRunImpllinks::getLog() const {
    return log;
}
void OAIPipelineRunImpllinks::setLog(const OAILink &log) {
    this->log = log;
    this->m_log_isSet = true;
}

bool OAIPipelineRunImpllinks::is_log_Set() const{
    return m_log_isSet;
}

bool OAIPipelineRunImpllinks::is_log_Valid() const{
    return m_log_isValid;
}

OAILink OAIPipelineRunImpllinks::getSelf() const {
    return self;
}
void OAIPipelineRunImpllinks::setSelf(const OAILink &self) {
    this->self = self;
    this->m_self_isSet = true;
}

bool OAIPipelineRunImpllinks::is_self_Set() const{
    return m_self_isSet;
}

bool OAIPipelineRunImpllinks::is_self_Valid() const{
    return m_self_isValid;
}

OAILink OAIPipelineRunImpllinks::getActions() const {
    return actions;
}
void OAIPipelineRunImpllinks::setActions(const OAILink &actions) {
    this->actions = actions;
    this->m_actions_isSet = true;
}

bool OAIPipelineRunImpllinks::is_actions_Set() const{
    return m_actions_isSet;
}

bool OAIPipelineRunImpllinks::is_actions_Valid() const{
    return m_actions_isValid;
}

OAILink OAIPipelineRunImpllinks::getSteps() const {
    return steps;
}
void OAIPipelineRunImpllinks::setSteps(const OAILink &steps) {
    this->steps = steps;
    this->m_steps_isSet = true;
}

bool OAIPipelineRunImpllinks::is_steps_Set() const{
    return m_steps_isSet;
}

bool OAIPipelineRunImpllinks::is_steps_Valid() const{
    return m_steps_isValid;
}

QString OAIPipelineRunImpllinks::getClass() const {
    return _class;
}
void OAIPipelineRunImpllinks::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAIPipelineRunImpllinks::is__class_Set() const{
    return m__class_isSet;
}

bool OAIPipelineRunImpllinks::is__class_Valid() const{
    return m__class_isValid;
}

bool OAIPipelineRunImpllinks::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (nodes.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (log.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (self.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (actions.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (steps.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIPipelineRunImpllinks::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
