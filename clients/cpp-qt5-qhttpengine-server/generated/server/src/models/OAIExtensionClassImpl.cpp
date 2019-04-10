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


#include "OAIExtensionClassImpl.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIExtensionClassImpl::OAIExtensionClassImpl(QString json) {
    this->fromJson(json);
}

OAIExtensionClassImpl::OAIExtensionClassImpl() {
    this->init();
}

OAIExtensionClassImpl::~OAIExtensionClassImpl() {
    
}

void
OAIExtensionClassImpl::init() {
    m__class_isSet = false;
    m__links_isSet = false;
    m_classes_isSet = false;
}

void
OAIExtensionClassImpl::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIExtensionClassImpl::fromJsonObject(QJsonObject json) {
    ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    
    ::OpenAPI::fromJsonValue(_links, json[QString("_links")]);
    
    
    ::OpenAPI::fromJsonValue(classes, json[QString("classes")]);
}

QString
OAIExtensionClassImpl::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIExtensionClassImpl::asJsonObject() const {
    QJsonObject obj;
	if(m__class_isSet){
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
	if(_links.isSet()){
        obj.insert(QString("_links"), ::OpenAPI::toJsonValue(_links));
    }
	
    if(classes.size() > 0){
        obj.insert(QString("classes"), ::OpenAPI::toJsonValue(classes));
    } 
    return obj;
}

QString
OAIExtensionClassImpl::getClass() const {
    return _class;
}
void
OAIExtensionClassImpl::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

OAIExtensionClassImpllinks
OAIExtensionClassImpl::getLinks() const {
    return _links;
}
void
OAIExtensionClassImpl::setLinks(const OAIExtensionClassImpllinks &_links) {
    this->_links = _links;
    this->m__links_isSet = true;
}

QList<QString>
OAIExtensionClassImpl::getClasses() const {
    return classes;
}
void
OAIExtensionClassImpl::setClasses(const QList<QString> &classes) {
    this->classes = classes;
    this->m_classes_isSet = true;
}


bool
OAIExtensionClassImpl::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m__class_isSet){ isObjectUpdated = true; break;}
    
        if(_links.isSet()){ isObjectUpdated = true; break;}
    
        if(classes.size() > 0){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

}

