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
    init();
    this->fromJson(json);
}

OAIPipelineRunNodeedges::OAIPipelineRunNodeedges() {
    init();
}

OAIPipelineRunNodeedges::~OAIPipelineRunNodeedges() {
    this->cleanup();
}

void
OAIPipelineRunNodeedges::init() {
    id = new QString("");
    m_id_isSet = false;
    _class = new QString("");
    m__class_isSet = false;
}

void
OAIPipelineRunNodeedges::cleanup() {
    if(id != nullptr) { 
        delete id;
    }
    if(_class != nullptr) { 
        delete _class;
    }
}

OAIPipelineRunNodeedges*
OAIPipelineRunNodeedges::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIPipelineRunNodeedges::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&id, pJson["id"], "QString", "QString");
    
    ::OpenAPI::setValue(&_class, pJson["_class"], "QString", "QString");
    
}

QString
OAIPipelineRunNodeedges::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIPipelineRunNodeedges::asJsonObject() {
    QJsonObject obj;
    if(id != nullptr && *id != QString("")){
        toJsonValue(QString("id"), id, obj, QString("QString"));
    }
    if(_class != nullptr && *_class != QString("")){
        toJsonValue(QString("_class"), _class, obj, QString("QString"));
    }

    return obj;
}

QString*
OAIPipelineRunNodeedges::getId() {
    return id;
}
void
OAIPipelineRunNodeedges::setId(QString* id) {
    this->id = id;
    this->m_id_isSet = true;
}

QString*
OAIPipelineRunNodeedges::getClass() {
    return _class;
}
void
OAIPipelineRunNodeedges::setClass(QString* _class) {
    this->_class = _class;
    this->m__class_isSet = true;
}


bool
OAIPipelineRunNodeedges::isSet(){
    bool isObjectUpdated = false;
    do{
        if(id != nullptr && *id != QString("")){ isObjectUpdated = true; break;}
        if(_class != nullptr && *_class != QString("")){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

