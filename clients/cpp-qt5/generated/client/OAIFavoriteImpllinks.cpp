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


#include "OAIFavoriteImpllinks.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIFavoriteImpllinks::OAIFavoriteImpllinks(QString json) {
    init();
    this->fromJson(json);
}

OAIFavoriteImpllinks::OAIFavoriteImpllinks() {
    init();
}

OAIFavoriteImpllinks::~OAIFavoriteImpllinks() {
    this->cleanup();
}

void
OAIFavoriteImpllinks::init() {
    self = new OAILink();
    m_self_isSet = false;
    _class = new QString("");
    m__class_isSet = false;
}

void
OAIFavoriteImpllinks::cleanup() {
    if(self != nullptr) { 
        delete self;
    }
    if(_class != nullptr) { 
        delete _class;
    }
}

OAIFavoriteImpllinks*
OAIFavoriteImpllinks::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIFavoriteImpllinks::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&self, pJson["self"], "OAILink", "OAILink");
    
    ::OpenAPI::setValue(&_class, pJson["_class"], "QString", "QString");
    
}

QString
OAIFavoriteImpllinks::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIFavoriteImpllinks::asJsonObject() {
    QJsonObject obj;
    if((self != nullptr) && (self->isSet())){
        toJsonValue(QString("self"), self, obj, QString("OAILink"));
    }
    if(_class != nullptr && *_class != QString("")){
        toJsonValue(QString("_class"), _class, obj, QString("QString"));
    }

    return obj;
}

OAILink*
OAIFavoriteImpllinks::getSelf() {
    return self;
}
void
OAIFavoriteImpllinks::setSelf(OAILink* self) {
    this->self = self;
    this->m_self_isSet = true;
}

QString*
OAIFavoriteImpllinks::getClass() {
    return _class;
}
void
OAIFavoriteImpllinks::setClass(QString* _class) {
    this->_class = _class;
    this->m__class_isSet = true;
}


bool
OAIFavoriteImpllinks::isSet(){
    bool isObjectUpdated = false;
    do{
        if(self != nullptr && self->isSet()){ isObjectUpdated = true; break;}
        if(_class != nullptr && *_class != QString("")){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

