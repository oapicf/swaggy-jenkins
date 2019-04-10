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


#include "OAIExtensionClassContainerImpl1.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIExtensionClassContainerImpl1::OAIExtensionClassContainerImpl1(QString json) {
    init();
    this->fromJson(json);
}

OAIExtensionClassContainerImpl1::OAIExtensionClassContainerImpl1() {
    init();
}

OAIExtensionClassContainerImpl1::~OAIExtensionClassContainerImpl1() {
    this->cleanup();
}

void
OAIExtensionClassContainerImpl1::init() {
    _class = new QString("");
    m__class_isSet = false;
    _links = new OAIExtensionClassContainerImpl1links();
    m__links_isSet = false;
    map = new OAIExtensionClassContainerImpl1map();
    m_map_isSet = false;
}

void
OAIExtensionClassContainerImpl1::cleanup() {
    if(_class != nullptr) { 
        delete _class;
    }
    if(_links != nullptr) { 
        delete _links;
    }
    if(map != nullptr) { 
        delete map;
    }
}

OAIExtensionClassContainerImpl1*
OAIExtensionClassContainerImpl1::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIExtensionClassContainerImpl1::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&_class, pJson["_class"], "QString", "QString");
    
    ::OpenAPI::setValue(&_links, pJson["_links"], "OAIExtensionClassContainerImpl1links", "OAIExtensionClassContainerImpl1links");
    
    ::OpenAPI::setValue(&map, pJson["map"], "OAIExtensionClassContainerImpl1map", "OAIExtensionClassContainerImpl1map");
    
}

QString
OAIExtensionClassContainerImpl1::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIExtensionClassContainerImpl1::asJsonObject() {
    QJsonObject obj;
    if(_class != nullptr && *_class != QString("")){
        toJsonValue(QString("_class"), _class, obj, QString("QString"));
    }
    if((_links != nullptr) && (_links->isSet())){
        toJsonValue(QString("_links"), _links, obj, QString("OAIExtensionClassContainerImpl1links"));
    }
    if((map != nullptr) && (map->isSet())){
        toJsonValue(QString("map"), map, obj, QString("OAIExtensionClassContainerImpl1map"));
    }

    return obj;
}

QString*
OAIExtensionClassContainerImpl1::getClass() {
    return _class;
}
void
OAIExtensionClassContainerImpl1::setClass(QString* _class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

OAIExtensionClassContainerImpl1links*
OAIExtensionClassContainerImpl1::getLinks() {
    return _links;
}
void
OAIExtensionClassContainerImpl1::setLinks(OAIExtensionClassContainerImpl1links* _links) {
    this->_links = _links;
    this->m__links_isSet = true;
}

OAIExtensionClassContainerImpl1map*
OAIExtensionClassContainerImpl1::getMap() {
    return map;
}
void
OAIExtensionClassContainerImpl1::setMap(OAIExtensionClassContainerImpl1map* map) {
    this->map = map;
    this->m_map_isSet = true;
}


bool
OAIExtensionClassContainerImpl1::isSet(){
    bool isObjectUpdated = false;
    do{
        if(_class != nullptr && *_class != QString("")){ isObjectUpdated = true; break;}
        if(_links != nullptr && _links->isSet()){ isObjectUpdated = true; break;}
        if(map != nullptr && map->isSet()){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

