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


#include "OAIUser.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIUser::OAIUser(QString json) {
    this->fromJson(json);
}

OAIUser::OAIUser() {
    this->init();
}

OAIUser::~OAIUser() {
    
}

void
OAIUser::init() {
    m__class_isSet = false;
    m_id_isSet = false;
    m_full_name_isSet = false;
    m_email_isSet = false;
    m_name_isSet = false;
}

void
OAIUser::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIUser::fromJsonObject(QJsonObject json) {
    ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    
    ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    
    ::OpenAPI::fromJsonValue(full_name, json[QString("fullName")]);
    
    ::OpenAPI::fromJsonValue(email, json[QString("email")]);
    
    ::OpenAPI::fromJsonValue(name, json[QString("name")]);
    
}

QString
OAIUser::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIUser::asJsonObject() const {
    QJsonObject obj;
	if(m__class_isSet){
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
	if(m_id_isSet){
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
	if(m_full_name_isSet){
        obj.insert(QString("fullName"), ::OpenAPI::toJsonValue(full_name));
    }
	if(m_email_isSet){
        obj.insert(QString("email"), ::OpenAPI::toJsonValue(email));
    }
	if(m_name_isSet){
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(name));
    }
    return obj;
}

QString
OAIUser::getClass() const {
    return _class;
}
void
OAIUser::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

QString
OAIUser::getId() const {
    return id;
}
void
OAIUser::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

QString
OAIUser::getFullName() const {
    return full_name;
}
void
OAIUser::setFullName(const QString &full_name) {
    this->full_name = full_name;
    this->m_full_name_isSet = true;
}

QString
OAIUser::getEmail() const {
    return email;
}
void
OAIUser::setEmail(const QString &email) {
    this->email = email;
    this->m_email_isSet = true;
}

QString
OAIUser::getName() const {
    return name;
}
void
OAIUser::setName(const QString &name) {
    this->name = name;
    this->m_name_isSet = true;
}


bool
OAIUser::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m__class_isSet){ isObjectUpdated = true; break;}
    
        if(m_id_isSet){ isObjectUpdated = true; break;}
    
        if(m_full_name_isSet){ isObjectUpdated = true; break;}
    
        if(m_email_isSet){ isObjectUpdated = true; break;}
    
        if(m_name_isSet){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

}

