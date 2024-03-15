/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIPipelineActivity.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIPipelineActivity::OAIPipelineActivity(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIPipelineActivity::OAIPipelineActivity() {
    this->initializeModel();
}

OAIPipelineActivity::~OAIPipelineActivity() {}

void OAIPipelineActivity::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_artifacts_isSet = false;
    m_artifacts_isValid = false;

    m_duration_in_millis_isSet = false;
    m_duration_in_millis_isValid = false;

    m_estimated_duration_in_millis_isSet = false;
    m_estimated_duration_in_millis_isValid = false;

    m_en_queue_time_isSet = false;
    m_en_queue_time_isValid = false;

    m_end_time_isSet = false;
    m_end_time_isValid = false;

    m_id_isSet = false;
    m_id_isValid = false;

    m_organization_isSet = false;
    m_organization_isValid = false;

    m_pipeline_isSet = false;
    m_pipeline_isValid = false;

    m_result_isSet = false;
    m_result_isValid = false;

    m_run_summary_isSet = false;
    m_run_summary_isValid = false;

    m_start_time_isSet = false;
    m_start_time_isValid = false;

    m_state_isSet = false;
    m_state_isValid = false;

    m_type_isSet = false;
    m_type_isValid = false;

    m_commit_id_isSet = false;
    m_commit_id_isValid = false;
}

void OAIPipelineActivity::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIPipelineActivity::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_artifacts_isValid = ::OpenAPI::fromJsonValue(artifacts, json[QString("artifacts")]);
    m_artifacts_isSet = !json[QString("artifacts")].isNull() && m_artifacts_isValid;

    m_duration_in_millis_isValid = ::OpenAPI::fromJsonValue(duration_in_millis, json[QString("durationInMillis")]);
    m_duration_in_millis_isSet = !json[QString("durationInMillis")].isNull() && m_duration_in_millis_isValid;

    m_estimated_duration_in_millis_isValid = ::OpenAPI::fromJsonValue(estimated_duration_in_millis, json[QString("estimatedDurationInMillis")]);
    m_estimated_duration_in_millis_isSet = !json[QString("estimatedDurationInMillis")].isNull() && m_estimated_duration_in_millis_isValid;

    m_en_queue_time_isValid = ::OpenAPI::fromJsonValue(en_queue_time, json[QString("enQueueTime")]);
    m_en_queue_time_isSet = !json[QString("enQueueTime")].isNull() && m_en_queue_time_isValid;

    m_end_time_isValid = ::OpenAPI::fromJsonValue(end_time, json[QString("endTime")]);
    m_end_time_isSet = !json[QString("endTime")].isNull() && m_end_time_isValid;

    m_id_isValid = ::OpenAPI::fromJsonValue(id, json[QString("id")]);
    m_id_isSet = !json[QString("id")].isNull() && m_id_isValid;

    m_organization_isValid = ::OpenAPI::fromJsonValue(organization, json[QString("organization")]);
    m_organization_isSet = !json[QString("organization")].isNull() && m_organization_isValid;

    m_pipeline_isValid = ::OpenAPI::fromJsonValue(pipeline, json[QString("pipeline")]);
    m_pipeline_isSet = !json[QString("pipeline")].isNull() && m_pipeline_isValid;

    m_result_isValid = ::OpenAPI::fromJsonValue(result, json[QString("result")]);
    m_result_isSet = !json[QString("result")].isNull() && m_result_isValid;

    m_run_summary_isValid = ::OpenAPI::fromJsonValue(run_summary, json[QString("runSummary")]);
    m_run_summary_isSet = !json[QString("runSummary")].isNull() && m_run_summary_isValid;

    m_start_time_isValid = ::OpenAPI::fromJsonValue(start_time, json[QString("startTime")]);
    m_start_time_isSet = !json[QString("startTime")].isNull() && m_start_time_isValid;

    m_state_isValid = ::OpenAPI::fromJsonValue(state, json[QString("state")]);
    m_state_isSet = !json[QString("state")].isNull() && m_state_isValid;

    m_type_isValid = ::OpenAPI::fromJsonValue(type, json[QString("type")]);
    m_type_isSet = !json[QString("type")].isNull() && m_type_isValid;

    m_commit_id_isValid = ::OpenAPI::fromJsonValue(commit_id, json[QString("commitId")]);
    m_commit_id_isSet = !json[QString("commitId")].isNull() && m_commit_id_isValid;
}

QString OAIPipelineActivity::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIPipelineActivity::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    if (artifacts.size() > 0) {
        obj.insert(QString("artifacts"), ::OpenAPI::toJsonValue(artifacts));
    }
    if (m_duration_in_millis_isSet) {
        obj.insert(QString("durationInMillis"), ::OpenAPI::toJsonValue(duration_in_millis));
    }
    if (m_estimated_duration_in_millis_isSet) {
        obj.insert(QString("estimatedDurationInMillis"), ::OpenAPI::toJsonValue(estimated_duration_in_millis));
    }
    if (m_en_queue_time_isSet) {
        obj.insert(QString("enQueueTime"), ::OpenAPI::toJsonValue(en_queue_time));
    }
    if (m_end_time_isSet) {
        obj.insert(QString("endTime"), ::OpenAPI::toJsonValue(end_time));
    }
    if (m_id_isSet) {
        obj.insert(QString("id"), ::OpenAPI::toJsonValue(id));
    }
    if (m_organization_isSet) {
        obj.insert(QString("organization"), ::OpenAPI::toJsonValue(organization));
    }
    if (m_pipeline_isSet) {
        obj.insert(QString("pipeline"), ::OpenAPI::toJsonValue(pipeline));
    }
    if (m_result_isSet) {
        obj.insert(QString("result"), ::OpenAPI::toJsonValue(result));
    }
    if (m_run_summary_isSet) {
        obj.insert(QString("runSummary"), ::OpenAPI::toJsonValue(run_summary));
    }
    if (m_start_time_isSet) {
        obj.insert(QString("startTime"), ::OpenAPI::toJsonValue(start_time));
    }
    if (m_state_isSet) {
        obj.insert(QString("state"), ::OpenAPI::toJsonValue(state));
    }
    if (m_type_isSet) {
        obj.insert(QString("type"), ::OpenAPI::toJsonValue(type));
    }
    if (m_commit_id_isSet) {
        obj.insert(QString("commitId"), ::OpenAPI::toJsonValue(commit_id));
    }
    return obj;
}

QString OAIPipelineActivity::getClass() const {
    return _class;
}
void OAIPipelineActivity::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAIPipelineActivity::is__class_Set() const{
    return m__class_isSet;
}

bool OAIPipelineActivity::is__class_Valid() const{
    return m__class_isValid;
}

QList<OAIPipelineActivityartifacts> OAIPipelineActivity::getArtifacts() const {
    return artifacts;
}
void OAIPipelineActivity::setArtifacts(const QList<OAIPipelineActivityartifacts> &artifacts) {
    this->artifacts = artifacts;
    this->m_artifacts_isSet = true;
}

bool OAIPipelineActivity::is_artifacts_Set() const{
    return m_artifacts_isSet;
}

bool OAIPipelineActivity::is_artifacts_Valid() const{
    return m_artifacts_isValid;
}

qint32 OAIPipelineActivity::getDurationInMillis() const {
    return duration_in_millis;
}
void OAIPipelineActivity::setDurationInMillis(const qint32 &duration_in_millis) {
    this->duration_in_millis = duration_in_millis;
    this->m_duration_in_millis_isSet = true;
}

bool OAIPipelineActivity::is_duration_in_millis_Set() const{
    return m_duration_in_millis_isSet;
}

bool OAIPipelineActivity::is_duration_in_millis_Valid() const{
    return m_duration_in_millis_isValid;
}

qint32 OAIPipelineActivity::getEstimatedDurationInMillis() const {
    return estimated_duration_in_millis;
}
void OAIPipelineActivity::setEstimatedDurationInMillis(const qint32 &estimated_duration_in_millis) {
    this->estimated_duration_in_millis = estimated_duration_in_millis;
    this->m_estimated_duration_in_millis_isSet = true;
}

bool OAIPipelineActivity::is_estimated_duration_in_millis_Set() const{
    return m_estimated_duration_in_millis_isSet;
}

bool OAIPipelineActivity::is_estimated_duration_in_millis_Valid() const{
    return m_estimated_duration_in_millis_isValid;
}

QString OAIPipelineActivity::getEnQueueTime() const {
    return en_queue_time;
}
void OAIPipelineActivity::setEnQueueTime(const QString &en_queue_time) {
    this->en_queue_time = en_queue_time;
    this->m_en_queue_time_isSet = true;
}

bool OAIPipelineActivity::is_en_queue_time_Set() const{
    return m_en_queue_time_isSet;
}

bool OAIPipelineActivity::is_en_queue_time_Valid() const{
    return m_en_queue_time_isValid;
}

QString OAIPipelineActivity::getEndTime() const {
    return end_time;
}
void OAIPipelineActivity::setEndTime(const QString &end_time) {
    this->end_time = end_time;
    this->m_end_time_isSet = true;
}

bool OAIPipelineActivity::is_end_time_Set() const{
    return m_end_time_isSet;
}

bool OAIPipelineActivity::is_end_time_Valid() const{
    return m_end_time_isValid;
}

QString OAIPipelineActivity::getId() const {
    return id;
}
void OAIPipelineActivity::setId(const QString &id) {
    this->id = id;
    this->m_id_isSet = true;
}

bool OAIPipelineActivity::is_id_Set() const{
    return m_id_isSet;
}

bool OAIPipelineActivity::is_id_Valid() const{
    return m_id_isValid;
}

QString OAIPipelineActivity::getOrganization() const {
    return organization;
}
void OAIPipelineActivity::setOrganization(const QString &organization) {
    this->organization = organization;
    this->m_organization_isSet = true;
}

bool OAIPipelineActivity::is_organization_Set() const{
    return m_organization_isSet;
}

bool OAIPipelineActivity::is_organization_Valid() const{
    return m_organization_isValid;
}

QString OAIPipelineActivity::getPipeline() const {
    return pipeline;
}
void OAIPipelineActivity::setPipeline(const QString &pipeline) {
    this->pipeline = pipeline;
    this->m_pipeline_isSet = true;
}

bool OAIPipelineActivity::is_pipeline_Set() const{
    return m_pipeline_isSet;
}

bool OAIPipelineActivity::is_pipeline_Valid() const{
    return m_pipeline_isValid;
}

QString OAIPipelineActivity::getResult() const {
    return result;
}
void OAIPipelineActivity::setResult(const QString &result) {
    this->result = result;
    this->m_result_isSet = true;
}

bool OAIPipelineActivity::is_result_Set() const{
    return m_result_isSet;
}

bool OAIPipelineActivity::is_result_Valid() const{
    return m_result_isValid;
}

QString OAIPipelineActivity::getRunSummary() const {
    return run_summary;
}
void OAIPipelineActivity::setRunSummary(const QString &run_summary) {
    this->run_summary = run_summary;
    this->m_run_summary_isSet = true;
}

bool OAIPipelineActivity::is_run_summary_Set() const{
    return m_run_summary_isSet;
}

bool OAIPipelineActivity::is_run_summary_Valid() const{
    return m_run_summary_isValid;
}

QString OAIPipelineActivity::getStartTime() const {
    return start_time;
}
void OAIPipelineActivity::setStartTime(const QString &start_time) {
    this->start_time = start_time;
    this->m_start_time_isSet = true;
}

bool OAIPipelineActivity::is_start_time_Set() const{
    return m_start_time_isSet;
}

bool OAIPipelineActivity::is_start_time_Valid() const{
    return m_start_time_isValid;
}

QString OAIPipelineActivity::getState() const {
    return state;
}
void OAIPipelineActivity::setState(const QString &state) {
    this->state = state;
    this->m_state_isSet = true;
}

bool OAIPipelineActivity::is_state_Set() const{
    return m_state_isSet;
}

bool OAIPipelineActivity::is_state_Valid() const{
    return m_state_isValid;
}

QString OAIPipelineActivity::getType() const {
    return type;
}
void OAIPipelineActivity::setType(const QString &type) {
    this->type = type;
    this->m_type_isSet = true;
}

bool OAIPipelineActivity::is_type_Set() const{
    return m_type_isSet;
}

bool OAIPipelineActivity::is_type_Valid() const{
    return m_type_isValid;
}

QString OAIPipelineActivity::getCommitId() const {
    return commit_id;
}
void OAIPipelineActivity::setCommitId(const QString &commit_id) {
    this->commit_id = commit_id;
    this->m_commit_id_isSet = true;
}

bool OAIPipelineActivity::is_commit_id_Set() const{
    return m_commit_id_isSet;
}

bool OAIPipelineActivity::is_commit_id_Valid() const{
    return m_commit_id_isValid;
}

bool OAIPipelineActivity::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (artifacts.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_duration_in_millis_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_estimated_duration_in_millis_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_en_queue_time_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_end_time_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_organization_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_pipeline_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_result_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_run_summary_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_start_time_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_state_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_type_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_commit_id_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIPipelineActivity::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
