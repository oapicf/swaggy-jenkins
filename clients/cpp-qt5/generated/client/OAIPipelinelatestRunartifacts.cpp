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


#include "OAIPipelinelatestRunartifacts.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIPipelinelatestRunartifacts::OAIPipelinelatestRunartifacts(QString json) {
    init();
    this->fromJson(json);
}

OAIPipelinelatestRunartifacts::OAIPipelinelatestRunartifacts() {
    init();
}

OAIPipelinelatestRunartifacts::~OAIPipelinelatestRunartifacts() {
    this->cleanup();
}

void
OAIPipelinelatestRunartifacts::init() {
    name = new QString("");
    m_name_isSet = false;
    size = 0;
    m_size_isSet = false;
    url = new QString("");
    m_url_isSet = false;
    _class = new QString("");
    m__class_isSet = false;
}

void
OAIPipelinelatestRunartifacts::cleanup() {
    if(name != nullptr) { 
        delete name;
    }

    if(url != nullptr) { 
        delete url;
    }
    if(_class != nullptr) { 
        delete _class;
    }
}

OAIPipelinelatestRunartifacts*
OAIPipelinelatestRunartifacts::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIPipelinelatestRunartifacts::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&name, pJson["name"], "QString", "QString");
    
    ::OpenAPI::setValue(&size, pJson["size"], "qint32", "");
    
    ::OpenAPI::setValue(&url, pJson["url"], "QString", "QString");
    
    ::OpenAPI::setValue(&_class, pJson["_class"], "QString", "QString");
    
}

QString
OAIPipelinelatestRunartifacts::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIPipelinelatestRunartifacts::asJsonObject() {
    QJsonObject obj;
    if(name != nullptr && *name != QString("")){
        toJsonValue(QString("name"), name, obj, QString("QString"));
    }
    if(m_size_isSet){
        obj.insert("size", QJsonValue(size));
    }
    if(url != nullptr && *url != QString("")){
        toJsonValue(QString("url"), url, obj, QString("QString"));
    }
    if(_class != nullptr && *_class != QString("")){
        toJsonValue(QString("_class"), _class, obj, QString("QString"));
    }

    return obj;
}

QString*
OAIPipelinelatestRunartifacts::getName() {
    return name;
}
void
OAIPipelinelatestRunartifacts::setName(QString* name) {
    this->name = name;
    this->m_name_isSet = true;
}

qint32
OAIPipelinelatestRunartifacts::getSize() {
    return size;
}
void
OAIPipelinelatestRunartifacts::setSize(qint32 size) {
    this->size = size;
    this->m_size_isSet = true;
}

QString*
OAIPipelinelatestRunartifacts::getUrl() {
    return url;
}
void
OAIPipelinelatestRunartifacts::setUrl(QString* url) {
    this->url = url;
    this->m_url_isSet = true;
}

QString*
OAIPipelinelatestRunartifacts::getClass() {
    return _class;
}
void
OAIPipelinelatestRunartifacts::setClass(QString* _class) {
    this->_class = _class;
    this->m__class_isSet = true;
}


bool
OAIPipelinelatestRunartifacts::isSet(){
    bool isObjectUpdated = false;
    do{
        if(name != nullptr && *name != QString("")){ isObjectUpdated = true; break;}
        if(m_size_isSet){ isObjectUpdated = true; break;}
        if(url != nullptr && *url != QString("")){ isObjectUpdated = true; break;}
        if(_class != nullptr && *_class != QString("")){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

