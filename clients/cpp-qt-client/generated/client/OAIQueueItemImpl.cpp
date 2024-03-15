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

#include "OAIQueueItemImpl.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIQueueItemImpl::OAIQueueItemImpl(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIQueueItemImpl::OAIQueueItemImpl() {
    this->initializeModel();
}

OAIQueueItemImpl::~OAIQueueItemImpl() {}

void OAIQueueItemImpl::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_expected_build_number_isSet = false;
    m_expected_build_number_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;

    m_pipeline_isSet = false;
    m_pipeline_isValid = false;

    m_queued_time_isSet = false;
    m_queued_time_isValid = false;
}

void OAIQueueItemImpl::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIQueueItemImpl::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_expected_build_number_isValid = ::OpenAPI::fromJsonValue(m_expected_build_number, json[QString("expectedBuildNumber")]);
    m_expected_build_number_isSet = !json[QString("expectedBuildNumber")].isNull() && m_expected_build_number_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(m_id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_pipeline_isValid = ::OpenAPI::fromJsonValue(m_pipeline, json[QString("pipeline")]);
    m_pipeline_isSet = !json[QString("pipeline")].isNull() && m_pipeline_isValid;

    m_queued_time_isValid = ::OpenAPI::fromJsonValue(m_queued_time, json[QString("queuedTime")]);
    m_queued_time_isSet = !json[QString("queuedTime")].isNull() && m_queued_time_isValid;
}

QString OAIQueueItemImpl::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIQueueItemImpl::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    if (m_expected_build_number_isSet) {
        obj.insert(QString("expectedBuildNumber"), ::OpenAPI::toJsonValue(m_expected_build_number));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(m_id));
    }
    if (m_pipeline_isSet) {
        obj.insert(QString("pipeline"), ::OpenAPI::toJsonValue(m_pipeline));
    }
    if (m_queued_time_isSet) {
        obj.insert(QString("queuedTime"), ::OpenAPI::toJsonValue(m_queued_time));
    }
    return obj;
}

QString OAIQueueItemImpl::getClass() const {
    return m__class;
}
void OAIQueueItemImpl::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIQueueItemImpl::is__class_Set() const{
    return m__class_isSet;
}

bool OAIQueueItemImpl::is__class_Valid() const{
    return m__class_isValid;
}

qint32 OAIQueueItemImpl::getExpectedBuildNumber() const {
    return m_expected_build_number;
}
void OAIQueueItemImpl::setExpectedBuildNumber(const qint32 &expected_build_number) {
    m_expected_build_number = expected_build_number;
    m_expected_build_number_isSet = true;
}

bool OAIQueueItemImpl::is_expected_build_number_Set() const{
    return m_expected_build_number_isSet;
}

bool OAIQueueItemImpl::is_expected_build_number_Valid() const{
    return m_expected_build_number_isValid;
}

QString OAIQueueItemImpl::getId() const {
    return m_id;
}
void OAIQueueItemImpl::setId(const QString &id) {
    m_id = id;
    m_id_isSet = true;
}

bool OAIQueueItemImpl::is_id_Set() const{
    return m_id_isSet;
}

bool OAIQueueItemImpl::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIQueueItemImpl::getPipeline() const {
    return m_pipeline;
}
void OAIQueueItemImpl::setPipeline(const QString &pipeline) {
    m_pipeline = pipeline;
    m_pipeline_isSet = true;
}

bool OAIQueueItemImpl::is_pipeline_Set() const{
    return m_pipeline_isSet;
}

bool OAIQueueItemImpl::is_pipeline_Valid() const{
    return m_pipeline_isValid;
}

qint32 OAIQueueItemImpl::getQueuedTime() const {
    return m_queued_time;
}
void OAIQueueItemImpl::setQueuedTime(const qint32 &queued_time) {
    m_queued_time = queued_time;
    m_queued_time_isSet = true;
}

bool OAIQueueItemImpl::is_queued_time_Set() const{
    return m_queued_time_isSet;
}

bool OAIQueueItemImpl::is_queued_time_Valid() const{
    return m_queued_time_isValid;
}

bool OAIQueueItemImpl::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_expected_build_number_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_pipeline_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_queued_time_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIQueueItemImpl::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
