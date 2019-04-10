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


#include "OAIExtensionClassImpllinks.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIExtensionClassImpllinks::OAIExtensionClassImpllinks(QString json) {
    this->fromJson(json);
}

OAIExtensionClassImpllinks::OAIExtensionClassImpllinks() {
    this->init();
}

OAIExtensionClassImpllinks::~OAIExtensionClassImpllinks() {
    
}

void
OAIExtensionClassImpllinks::init() {
    m_self_isSet = false;
    m__class_isSet = false;
}

void
OAIExtensionClassImpllinks::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIExtensionClassImpllinks::fromJsonObject(QJsonObject json) {
    ::OpenAPI::fromJsonValue(self, json[QString("self")]);
    
    ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    
}

QString
OAIExtensionClassImpllinks::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIExtensionClassImpllinks::asJsonObject() const {
    QJsonObject obj;
	if(self.isSet()){
        obj.insert(QString("self"), ::OpenAPI::toJsonValue(self));
    }
	if(m__class_isSet){
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    return obj;
}

OAILink
OAIExtensionClassImpllinks::getSelf() const {
    return self;
}
void
OAIExtensionClassImpllinks::setSelf(const OAILink &self) {
    this->self = self;
    this->m_self_isSet = true;
}

QString
OAIExtensionClassImpllinks::getClass() const {
    return _class;
}
void
OAIExtensionClassImpllinks::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}


bool
OAIExtensionClassImpllinks::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(self.isSet()){ isObjectUpdated = true; break;}
    
        if(m__class_isSet){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

}

