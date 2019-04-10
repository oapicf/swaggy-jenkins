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


#include "OAIPipelineRun.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIPipelineRun::OAIPipelineRun(QString json) {
    init();
    this->fromJson(json);
}

OAIPipelineRun::OAIPipelineRun() {
    init();
}

OAIPipelineRun::~OAIPipelineRun() {
    this->cleanup();
}

void
OAIPipelineRun::init() {
    _class = new QString("");
    m__class_isSet = false;
    artifacts = new QList<OAIPipelineRunartifacts*>();
    m_artifacts_isSet = false;
    duration_in_millis = 0;
    m_duration_in_millis_isSet = false;
    estimated_duration_in_millis = 0;
    m_estimated_duration_in_millis_isSet = false;
    en_queue_time = new QString("");
    m_en_queue_time_isSet = false;
    end_time = new QString("");
    m_end_time_isSet = false;
    id = new QString("");
    m_id_isSet = false;
    organization = new QString("");
    m_organization_isSet = false;
    pipeline = new QString("");
    m_pipeline_isSet = false;
    result = new QString("");
    m_result_isSet = false;
    run_summary = new QString("");
    m_run_summary_isSet = false;
    start_time = new QString("");
    m_start_time_isSet = false;
    state = new QString("");
    m_state_isSet = false;
    type = new QString("");
    m_type_isSet = false;
    commit_id = new QString("");
    m_commit_id_isSet = false;
}

void
OAIPipelineRun::cleanup() {
    if(_class != nullptr) { 
        delete _class;
    }
    if(artifacts != nullptr) { 
        auto arr = artifacts;
        for(auto o: *arr) { 
            delete o;
        }
        delete artifacts;
    }


    if(en_queue_time != nullptr) { 
        delete en_queue_time;
    }
    if(end_time != nullptr) { 
        delete end_time;
    }
    if(id != nullptr) { 
        delete id;
    }
    if(organization != nullptr) { 
        delete organization;
    }
    if(pipeline != nullptr) { 
        delete pipeline;
    }
    if(result != nullptr) { 
        delete result;
    }
    if(run_summary != nullptr) { 
        delete run_summary;
    }
    if(start_time != nullptr) { 
        delete start_time;
    }
    if(state != nullptr) { 
        delete state;
    }
    if(type != nullptr) { 
        delete type;
    }
    if(commit_id != nullptr) { 
        delete commit_id;
    }
}

OAIPipelineRun*
OAIPipelineRun::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIPipelineRun::fromJsonObject(QJsonObject pJson) {
    ::OpenAPI::setValue(&_class, pJson["_class"], "QString", "QString");
    
    
    ::OpenAPI::setValue(&artifacts, pJson["artifacts"], "QList", "OAIPipelineRunartifacts");
    ::OpenAPI::setValue(&duration_in_millis, pJson["durationInMillis"], "qint32", "");
    
    ::OpenAPI::setValue(&estimated_duration_in_millis, pJson["estimatedDurationInMillis"], "qint32", "");
    
    ::OpenAPI::setValue(&en_queue_time, pJson["enQueueTime"], "QString", "QString");
    
    ::OpenAPI::setValue(&end_time, pJson["endTime"], "QString", "QString");
    
    ::OpenAPI::setValue(&id, pJson["id"], "QString", "QString");
    
    ::OpenAPI::setValue(&organization, pJson["organization"], "QString", "QString");
    
    ::OpenAPI::setValue(&pipeline, pJson["pipeline"], "QString", "QString");
    
    ::OpenAPI::setValue(&result, pJson["result"], "QString", "QString");
    
    ::OpenAPI::setValue(&run_summary, pJson["runSummary"], "QString", "QString");
    
    ::OpenAPI::setValue(&start_time, pJson["startTime"], "QString", "QString");
    
    ::OpenAPI::setValue(&state, pJson["state"], "QString", "QString");
    
    ::OpenAPI::setValue(&type, pJson["type"], "QString", "QString");
    
    ::OpenAPI::setValue(&commit_id, pJson["commitId"], "QString", "QString");
    
}

QString
OAIPipelineRun::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIPipelineRun::asJsonObject() {
    QJsonObject obj;
    if(_class != nullptr && *_class != QString("")){
        toJsonValue(QString("_class"), _class, obj, QString("QString"));
    }
    if(artifacts->size() > 0){
        toJsonArray((QList<void*>*)artifacts, obj, "artifacts", "OAIPipelineRunartifacts");
    }
    if(m_duration_in_millis_isSet){
        obj.insert("durationInMillis", QJsonValue(duration_in_millis));
    }
    if(m_estimated_duration_in_millis_isSet){
        obj.insert("estimatedDurationInMillis", QJsonValue(estimated_duration_in_millis));
    }
    if(en_queue_time != nullptr && *en_queue_time != QString("")){
        toJsonValue(QString("enQueueTime"), en_queue_time, obj, QString("QString"));
    }
    if(end_time != nullptr && *end_time != QString("")){
        toJsonValue(QString("endTime"), end_time, obj, QString("QString"));
    }
    if(id != nullptr && *id != QString("")){
        toJsonValue(QString("id"), id, obj, QString("QString"));
    }
    if(organization != nullptr && *organization != QString("")){
        toJsonValue(QString("organization"), organization, obj, QString("QString"));
    }
    if(pipeline != nullptr && *pipeline != QString("")){
        toJsonValue(QString("pipeline"), pipeline, obj, QString("QString"));
    }
    if(result != nullptr && *result != QString("")){
        toJsonValue(QString("result"), result, obj, QString("QString"));
    }
    if(run_summary != nullptr && *run_summary != QString("")){
        toJsonValue(QString("runSummary"), run_summary, obj, QString("QString"));
    }
    if(start_time != nullptr && *start_time != QString("")){
        toJsonValue(QString("startTime"), start_time, obj, QString("QString"));
    }
    if(state != nullptr && *state != QString("")){
        toJsonValue(QString("state"), state, obj, QString("QString"));
    }
    if(type != nullptr && *type != QString("")){
        toJsonValue(QString("type"), type, obj, QString("QString"));
    }
    if(commit_id != nullptr && *commit_id != QString("")){
        toJsonValue(QString("commitId"), commit_id, obj, QString("QString"));
    }

    return obj;
}

QString*
OAIPipelineRun::getClass() {
    return _class;
}
void
OAIPipelineRun::setClass(QString* _class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

QList<OAIPipelineRunartifacts*>*
OAIPipelineRun::getArtifacts() {
    return artifacts;
}
void
OAIPipelineRun::setArtifacts(QList<OAIPipelineRunartifacts*>* artifacts) {
    this->artifacts = artifacts;
    this->m_artifacts_isSet = true;
}

qint32
OAIPipelineRun::getDurationInMillis() {
    return duration_in_millis;
}
void
OAIPipelineRun::setDurationInMillis(qint32 duration_in_millis) {
    this->duration_in_millis = duration_in_millis;
    this->m_duration_in_millis_isSet = true;
}

qint32
OAIPipelineRun::getEstimatedDurationInMillis() {
    return estimated_duration_in_millis;
}
void
OAIPipelineRun::setEstimatedDurationInMillis(qint32 estimated_duration_in_millis) {
    this->estimated_duration_in_millis = estimated_duration_in_millis;
    this->m_estimated_duration_in_millis_isSet = true;
}

QString*
OAIPipelineRun::getEnQueueTime() {
    return en_queue_time;
}
void
OAIPipelineRun::setEnQueueTime(QString* en_queue_time) {
    this->en_queue_time = en_queue_time;
    this->m_en_queue_time_isSet = true;
}

QString*
OAIPipelineRun::getEndTime() {
    return end_time;
}
void
OAIPipelineRun::setEndTime(QString* end_time) {
    this->end_time = end_time;
    this->m_end_time_isSet = true;
}

QString*
OAIPipelineRun::getId() {
    return id;
}
void
OAIPipelineRun::setId(QString* id) {
    this->id = id;
    this->m_id_isSet = true;
}

QString*
OAIPipelineRun::getOrganization() {
    return organization;
}
void
OAIPipelineRun::setOrganization(QString* organization) {
    this->organization = organization;
    this->m_organization_isSet = true;
}

QString*
OAIPipelineRun::getPipeline() {
    return pipeline;
}
void
OAIPipelineRun::setPipeline(QString* pipeline) {
    this->pipeline = pipeline;
    this->m_pipeline_isSet = true;
}

QString*
OAIPipelineRun::getResult() {
    return result;
}
void
OAIPipelineRun::setResult(QString* result) {
    this->result = result;
    this->m_result_isSet = true;
}

QString*
OAIPipelineRun::getRunSummary() {
    return run_summary;
}
void
OAIPipelineRun::setRunSummary(QString* run_summary) {
    this->run_summary = run_summary;
    this->m_run_summary_isSet = true;
}

QString*
OAIPipelineRun::getStartTime() {
    return start_time;
}
void
OAIPipelineRun::setStartTime(QString* start_time) {
    this->start_time = start_time;
    this->m_start_time_isSet = true;
}

QString*
OAIPipelineRun::getState() {
    return state;
}
void
OAIPipelineRun::setState(QString* state) {
    this->state = state;
    this->m_state_isSet = true;
}

QString*
OAIPipelineRun::getType() {
    return type;
}
void
OAIPipelineRun::setType(QString* type) {
    this->type = type;
    this->m_type_isSet = true;
}

QString*
OAIPipelineRun::getCommitId() {
    return commit_id;
}
void
OAIPipelineRun::setCommitId(QString* commit_id) {
    this->commit_id = commit_id;
    this->m_commit_id_isSet = true;
}


bool
OAIPipelineRun::isSet(){
    bool isObjectUpdated = false;
    do{
        if(_class != nullptr && *_class != QString("")){ isObjectUpdated = true; break;}
        if(artifacts->size() > 0){ isObjectUpdated = true; break;}
        if(m_duration_in_millis_isSet){ isObjectUpdated = true; break;}
        if(m_estimated_duration_in_millis_isSet){ isObjectUpdated = true; break;}
        if(en_queue_time != nullptr && *en_queue_time != QString("")){ isObjectUpdated = true; break;}
        if(end_time != nullptr && *end_time != QString("")){ isObjectUpdated = true; break;}
        if(id != nullptr && *id != QString("")){ isObjectUpdated = true; break;}
        if(organization != nullptr && *organization != QString("")){ isObjectUpdated = true; break;}
        if(pipeline != nullptr && *pipeline != QString("")){ isObjectUpdated = true; break;}
        if(result != nullptr && *result != QString("")){ isObjectUpdated = true; break;}
        if(run_summary != nullptr && *run_summary != QString("")){ isObjectUpdated = true; break;}
        if(start_time != nullptr && *start_time != QString("")){ isObjectUpdated = true; break;}
        if(state != nullptr && *state != QString("")){ isObjectUpdated = true; break;}
        if(type != nullptr && *type != QString("")){ isObjectUpdated = true; break;}
        if(commit_id != nullptr && *commit_id != QString("")){ isObjectUpdated = true; break;}
    }while(false);
    return isObjectUpdated;
}
}

