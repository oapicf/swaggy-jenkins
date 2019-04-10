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


#include "OAIPipelineRunNodeedges.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIPipelineRunNodeedges::OAIPipelineRunNodeedges(QString json) {
    this->fromJson(json);
}

OAIPipelineRunNodeedges::OAIPipelineRunNodeedges() {
    this->init();
}

OAIPipelineRunNodeedges::~OAIPipelineRunNodeedges() {
    
}

void
OAIPipelineRunNodeedges::init() {
    m_id_isSet = false;
    m__class_isSet = false;
}

void
OAIPipelineRunNodeedges::fromJson(QString jsonString) {
    QByteArray array (jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void
OAIPipelineRunNodeedges::fromJsonObject(QJsonObject json) {
    ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    
    ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    
}

QString
OAIPipelineRunNodeedges::asJson () const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIPipelineRunNodeedges::asJsonObject() const {
    QJsonObject obj;
	if(m_id_isSet){
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
	if(m__class_isSet){
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    return obj;
}

QString
OAIPipelineRunNodeedges::getId() const {
    return id;
}
void
OAIPipelineRunNodeedges::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

QString
OAIPipelineRunNodeedges::getClass() const {
    return _class;
}
void
OAIPipelineRunNodeedges::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}


bool
OAIPipelineRunNodeedges::isSet() const {
    bool isObjectUpdated = false;
    do{ 
        if(m_id_isSet){ isObjectUpdated = true; break;}
    
        if(m__class_isSet){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}

}

