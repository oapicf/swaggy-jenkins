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


#include "OAIGenericResource.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIGenericResource::OAIGenericResource(QString json) {
    this->fromJson(json);
}

OAIGenericResource::OAIGenericResource() {
    this->init();
}

OAIGenericResource::~OAIGenericResource() {
    
}

void
OAIGenericResource::init() {
    m__class_isSet = false;
    m_display_name_isSet = false;
    m_duration_in_millis_isSet = false;
    m_id_isSet = false;
    m_result_isSet = false;
    m_start_time_isSet = false;
}

void
OAIGenericResource::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIGenericResource::fromJsonObject(QJsonObject json) {
    ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    
    ::OpenAPI::fromJsonValue(display_name, json[QString("displayName")]);
    
    ::OpenAPI::fromJsonValue(duration_in_millis, json[QString("durationInMillis")]);
    
    ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    
    ::OpenAPI::fromJsonValue(result, json[QString("result")]);
    
    ::OpenAPI::fromJsonValue(start_time, json[QString("startTime")]);
    
}

QString
OAIGenericResource::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIGenericResource::asJsonObject() const {
    QJsonObject obj;
	if(m__class_isSet){
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
	if(m_display_name_isSet){
        obj.insert(QString("displayName"), ::OpenAPI::toJsonValue(display_name));
    }
	if(m_duration_in_millis_isSet){
        obj.insert(QString("durationInMillis"), ::OpenAPI::toJsonValue(duration_in_millis));
    }
	if(m_id_isSet){
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
	if(m_result_isSet){
        obj.insert(QString("result"), ::OpenAPI::toJsonValue(result));
    }
	if(m_start_time_isSet){
        obj.insert(QString("startTime"), ::OpenAPI::toJsonValue(start_time));
    }
    return obj;
}

QString
OAIGenericResource::getClass() const {
    return _class;
}
void
OAIGenericResource::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

QString
OAIGenericResource::getDisplayName() const {
    return display_name;
}
void
OAIGenericResource::setDisplayName(const QString &display_name) {
    this->display_name = display_name;
    this->m_display_name_isSet = true;
}

qint32
OAIGenericResource::getDurationInMillis() const {
    return duration_in_millis;
}
void
OAIGenericResource::setDurationInMillis(const qint32 &duration_in_millis) {
    this->duration_in_millis = duration_in_millis;
    this->m_duration_in_millis_isSet = true;
}

QString
OAIGenericResource::getId() const {
    return id;
}
void
OAIGenericResource::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

QString
OAIGenericResource::getResult() const {
    return result;
}
void
OAIGenericResource::setResult(const QString &result) {
    this->result = result;
    this->m_result_isSet = true;
}

QString
OAIGenericResource::getStartTime() const {
    return start_time;
}
void
OAIGenericResource::setStartTime(const QString &start_time) {
    this->start_time = start_time;
    this->m_start_time_isSet = true;
}


bool
OAIGenericResource::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m__class_isSet){ isObjectUpdated = true; break;}
    
        if(m_display_name_isSet){ isObjectUpdated = true; break;}
    
        if(m_duration_in_millis_isSet){ isObjectUpdated = true; break;}
    
        if(m_id_isSet){ isObjectUpdated = true; break;}
    
        if(m_result_isSet){ isObjectUpdated = true; break;}
    
        if(m_start_time_isSet){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

}

