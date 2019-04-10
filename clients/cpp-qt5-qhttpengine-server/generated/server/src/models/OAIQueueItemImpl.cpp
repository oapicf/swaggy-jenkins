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


#include "OAIQueueItemImpl.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIQueueItemImpl::OAIQueueItemImpl(QString json) {
    this->fromJson(json);
}

OAIQueueItemImpl::OAIQueueItemImpl() {
    this->init();
}

OAIQueueItemImpl::~OAIQueueItemImpl() {
    
}

void
OAIQueueItemImpl::init() {
    m__class_isSet = false;
    m_expected_build_number_isSet = false;
    m_id_isSet = false;
    m_pipeline_isSet = false;
    m_queued_time_isSet = false;
}

void
OAIQueueItemImpl::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIQueueItemImpl::fromJsonObject(QJsonObject json) {
    ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    
    ::OpenAPI::fromJsonValue(expected_build_number, json[QString("expectedBuildNumber")]);
    
    ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    
    ::OpenAPI::fromJsonValue(pipeline, json[QString("pipeline")]);
    
    ::OpenAPI::fromJsonValue(queued_time, json[QString("queuedTime")]);
    
}

QString
OAIQueueItemImpl::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIQueueItemImpl::asJsonObject() const {
    QJsonObject obj;
	if(m__class_isSet){
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
	if(m_expected_build_number_isSet){
        obj.insert(QString("expectedBuildNumber"), ::OpenAPI::toJsonValue(expected_build_number));
    }
	if(m_id_isSet){
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
	if(m_pipeline_isSet){
        obj.insert(QString("pipeline"), ::OpenAPI::toJsonValue(pipeline));
    }
	if(m_queued_time_isSet){
        obj.insert(QString("queuedTime"), ::OpenAPI::toJsonValue(queued_time));
    }
    return obj;
}

QString
OAIQueueItemImpl::getClass() const {
    return _class;
}
void
OAIQueueItemImpl::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

qint32
OAIQueueItemImpl::getExpectedBuildNumber() const {
    return expected_build_number;
}
void
OAIQueueItemImpl::setExpectedBuildNumber(const qint32 &expected_build_number) {
    this->expected_build_number = expected_build_number;
    this->m_expected_build_number_isSet = true;
}

QString
OAIQueueItemImpl::getId() const {
    return id;
}
void
OAIQueueItemImpl::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

QString
OAIQueueItemImpl::getPipeline() const {
    return pipeline;
}
void
OAIQueueItemImpl::setPipeline(const QString &pipeline) {
    this->pipeline = pipeline;
    this->m_pipeline_isSet = true;
}

qint32
OAIQueueItemImpl::getQueuedTime() const {
    return queued_time;
}
void
OAIQueueItemImpl::setQueuedTime(const qint32 &queued_time) {
    this->queued_time = queued_time;
    this->m_queued_time_isSet = true;
}


bool
OAIQueueItemImpl::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m__class_isSet){ isObjectUpdated = true; break;}
    
        if(m_expected_build_number_isSet){ isObjectUpdated = true; break;}
    
        if(m_id_isSet){ isObjectUpdated = true; break;}
    
        if(m_pipeline_isSet){ isObjectUpdated = true; break;}
    
        if(m_queued_time_isSet){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

}

