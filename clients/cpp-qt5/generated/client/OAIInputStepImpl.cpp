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


#include "OAIInputStepImpl.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIInputStepImpl::OAIInputStepImpl(QString json) {
    init();
    this->fromJson(json);
}

OAIInputStepImpl::OAIInputStepImpl() {
    init();
}

OAIInputStepImpl::~OAIInputStepImpl() {
    this->cleanup();
}

void
OAIInputStepImpl::init() {
    _class = new QString("");
    m__class_isSet = false;
    _links = new OAIInputStepImpllinks();
    m__links_isSet = false;
    id = new QString("");
    m_id_isSet = false;
    message = new QString("");
    m_message_isSet = false;
    ok = new QString("");
    m_ok_isSet = false;
    parameters = new QList<OAIStringParameterDefinition*>();
    m_parameters_isSet = false;
    submitter = new QString("");
    m_submitter_isSet = false;
}

void
OAIInputStepImpl::cleanup() {
    if(_class != nullptr) { 
        delete _class;
    }
    if(_links != nullptr) { 
        delete _links;
    }
    if(id != nullptr) { 
        delete id;
    }
    if(message != nullptr) { 
        delete message;
    }
    if(ok != nullptr) { 
        delete ok;
    }
    if(parameters != nullptr) { 
        auto arr = parameters;
        for(auto o: *arr) { 
            delete o;
        }
        delete parameters;
    }
    if(submitter != nullptr) { 
        delete submitter;
    }
}

OAIInputStepImpl*
OAIInputStepImpl::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIInputStepImpl::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&_class, pJson["_class"], "QString", "QString");
    
    ::OpenAPI::setValue(&_links, pJson["_links"], "OAIInputStepImpllinks", "OAIInputStepImpllinks");
    
    ::OpenAPI::setValue(&id, pJson["id"], "QString", "QString");
    
    ::OpenAPI::setValue(&message, pJson["message"], "QString", "QString");
    
    ::OpenAPI::setValue(&ok, pJson["ok"], "QString", "QString");
    
    
    ::OpenAPI::setValue(&parameters, pJson["parameters"], "QList", "OAIStringParameterDefinition");
    ::OpenAPI::setValue(&submitter, pJson["submitter"], "QString", "QString");
    
}

QString
OAIInputStepImpl::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIInputStepImpl::asJsonObject() {
    QJsonObject obj;
    if(_class != nullptr && *_class != QString("")){
        toJsonValue(QString("_class"), _class, obj, QString("QString"));
    }
    if((_links != nullptr) && (_links->isSet())){
        toJsonValue(QString("_links"), _links, obj, QString("OAIInputStepImpllinks"));
    }
    if(id != nullptr && *id != QString("")){
        toJsonValue(QString("id"), id, obj, QString("QString"));
    }
    if(message != nullptr && *message != QString("")){
        toJsonValue(QString("message"), message, obj, QString("QString"));
    }
    if(ok != nullptr && *ok != QString("")){
        toJsonValue(QString("ok"), ok, obj, QString("QString"));
    }
    if(parameters->size() > 0){
        toJsonArray((QList<void*>*)parameters, obj, "parameters", "OAIStringParameterDefinition");
    }
    if(submitter != nullptr && *submitter != QString("")){
        toJsonValue(QString("submitter"), submitter, obj, QString("QString"));
    }

    return obj;
}

QString*
OAIInputStepImpl::getClass() {
    return _class;
}
void
OAIInputStepImpl::setClass(QString* _class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

OAIInputStepImpllinks*
OAIInputStepImpl::getLinks() {
    return _links;
}
void
OAIInputStepImpl::setLinks(OAIInputStepImpllinks* _links) {
    this->_links = _links;
    this->m__links_isSet = true;
}

QString*
OAIInputStepImpl::getId() {
    return id;
}
void
OAIInputStepImpl::setId(QString* id) {
    this->id = id;
    this->m_id_isSet = true;
}

QString*
OAIInputStepImpl::getMessage() {
    return message;
}
void
OAIInputStepImpl::setMessage(QString* message) {
    this->message = message;
    this->m_message_isSet = true;
}

QString*
OAIInputStepImpl::getOk() {
    return ok;
}
void
OAIInputStepImpl::setOk(QString* ok) {
    this->ok = ok;
    this->m_ok_isSet = true;
}

QList<OAIStringParameterDefinition*>*
OAIInputStepImpl::getParameters() {
    return parameters;
}
void
OAIInputStepImpl::setParameters(QList<OAIStringParameterDefinition*>* parameters) {
    this->parameters = parameters;
    this->m_parameters_isSet = true;
}

QString*
OAIInputStepImpl::getSubmitter() {
    return submitter;
}
void
OAIInputStepImpl::setSubmitter(QString* submitter) {
    this->submitter = submitter;
    this->m_submitter_isSet = true;
}


bool
OAIInputStepImpl::isSet(){
    bool isObjectUpdated = false;
    do{
        if(_class != nullptr && *_class != QString("")){ isObjectUpdated = true; break;}
        if(_links != nullptr && _links->isSet()){ isObjectUpdated = true; break;}
        if(id != nullptr && *id != QString("")){ isObjectUpdated = true; break;}
        if(message != nullptr && *message != QString("")){ isObjectUpdated = true; break;}
        if(ok != nullptr && *ok != QString("")){ isObjectUpdated = true; break;}
        if(parameters->size() > 0){ isObjectUpdated = true; break;}
        if(submitter != nullptr && *submitter != QString("")){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

