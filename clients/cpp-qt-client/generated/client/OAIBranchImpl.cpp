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

#include "OAIBranchImpl.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIBranchImpl::OAIBranchImpl(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIBranchImpl::OAIBranchImpl() {
    this->initializeModel();
}

OAIBranchImpl::~OAIBranchImpl() {}

void OAIBranchImpl::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_display_name_isSet = false;
    m_display_name_isValid = false;

    m_estimated_duration_in_millis_isSet = false;
    m_estimated_duration_in_millis_isValid = false;

    m_full_display_name_isSet = false;
    m_full_display_name_isValid = false;

    m_full_name_isSet = false;
    m_full_name_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;

    m_organization_isSet = false;
    m_organization_isValid = false;

    m_parameters_isSet = false;
    m_parameters_isValid = false;

    m_permissions_isSet = false;
    m_permissions_isValid = false;

    m_weather_score_isSet = false;
    m_weather_score_isValid = false;

    m_pull_request_isSet = false;
    m_pull_request_isValid = false;

    m__links_isSet = false;
    m__links_isValid = false;

    m_latest_run_isSet = false;
    m_latest_run_isValid = false;
}

void OAIBranchImpl::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIBranchImpl::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_display_name_isValid = ::OpenAPI::fromJsonValue(m_display_name, json[QString("displayName")]);
    m_display_name_isSet = !json[QString("displayName")].isNull() && m_display_name_isValid;

    m_estimated_duration_in_millis_isValid = ::OpenAPI::fromJsonValue(m_estimated_duration_in_millis, json[QString("estimatedDurationInMillis")]);
    m_estimated_duration_in_millis_isSet = !json[QString("estimatedDurationInMillis")].isNull() && m_estimated_duration_in_millis_isValid;

    m_full_display_name_isValid = ::OpenAPI::fromJsonValue(m_full_display_name, json[QString("fullDisplayName")]);
    m_full_display_name_isSet = !json[QString("fullDisplayName")].isNull() && m_full_display_name_isValid;

    m_full_name_isValid = ::OpenAPI::fromJsonValue(m_full_name, json[QString("fullName")]);
    m_full_name_isSet = !json[QString("fullName")].isNull() && m_full_name_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_organization_isValid = ::OpenAPI::fromJsonValue(m_organization, json[QString("organization")]);
    m_organization_isSet = !json[QString("organization")].isNull() && m_organization_isValid;

    m_parameters_isValid = ::OpenAPI::fromJsonValue(m_parameters, json[QString("parameters")]);
    m_parameters_isSet = !json[QString("parameters")].isNull() && m_parameters_isValid;

    m_permissions_isValid = ::OpenAPI::fromJsonValue(m_permissions, json[QString("permissions")]);
    m_permissions_isSet = !json[QString("permissions")].isNull() && m_permissions_isValid;

    m_weather_score_isValid = ::OpenAPI::fromJsonValue(m_weather_score, json[QString("weatherScore")]);
    m_weather_score_isSet = !json[QString("weatherScore")].isNull() && m_weather_score_isValid;

    m_pull_request_isValid = ::OpenAPI::fromJsonValue(m_pull_request, json[QString("pullRequest")]);
    m_pull_request_isSet = !json[QString("pullRequest")].isNull() && m_pull_request_isValid;

    m__links_isValid = ::OpenAPI::fromJsonValue(m__links, json[QString("_links")]);
    m__links_isSet = !json[QString("_links")].isNull() && m__links_isValid;

    m_latest_run_isValid = ::OpenAPI::fromJsonValue(m_latest_run, json[QString("latestRun")]);
    m_latest_run_isSet = !json[QString("latestRun")].isNull() && m_latest_run_isValid;
}

QString OAIBranchImpl::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIBranchImpl::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    if (m_display_name_isSet) {
        obj.insert(QString("displayName"), ::OpenAPI::toJsonValue(m_display_name));
    }
    if (m_estimated_duration_in_millis_isSet) {
        obj.insert(QString("estimatedDurationInMillis"), ::OpenAPI::toJsonValue(m_estimated_duration_in_millis));
    }
    if (m_full_display_name_isSet) {
        obj.insert(QString("fullDisplayName"), ::OpenAPI::toJsonValue(m_full_display_name));
    }
    if (m_full_name_isSet) {
        obj.insert(QString("fullName"), ::OpenAPI::toJsonValue(m_full_name));
    }
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_organization_isSet) {
        obj.insert(QString("organization"), ::OpenAPI::toJsonValue(m_organization));
    }
    if (m_parameters.size() > 0) {
        obj.insert(QString("parameters"), ::OpenAPI::toJsonValue(m_parameters));
    }
    if (m_permissions.isSet()) {
        obj.insert(QString("permissions"), ::OpenAPI::toJsonValue(m_permissions));
    }
    if (m_weather_score_isSet) {
        obj.insert(QString("weatherScore"), ::OpenAPI::toJsonValue(m_weather_score));
    }
    if (m_pull_request_isSet) {
        obj.insert(QString("pullRequest"), ::OpenAPI::toJsonValue(m_pull_request));
    }
    if (m__links.isSet()) {
        obj.insert(QString("_links"), ::OpenAPI::toJsonValue(m__links));
    }
    if (m_latest_run.isSet()) {
        obj.insert(QString("latestRun"), ::OpenAPI::toJsonValue(m_latest_run));
    }
    return obj;
}

QString OAIBranchImpl::getClass() const {
    return m__class;
}
void OAIBranchImpl::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIBranchImpl::is__class_Set() const{
    return m__class_isSet;
}

bool OAIBranchImpl::is__class_Valid() const{
    return m__class_isValid;
}

QString OAIBranchImpl::getDisplayName() const {
    return m_display_name;
}
void OAIBranchImpl::setDisplayName(const QString &display_name) {
    m_display_name = display_name;
    m_display_name_isSet = true;
}

bool OAIBranchImpl::is_display_name_Set() const{
    return m_display_name_isSet;
}

bool OAIBranchImpl::is_display_name_Valid() const{
    return m_display_name_isValid;
}

qint32 OAIBranchImpl::getEstimatedDurationInMillis() const {
    return m_estimated_duration_in_millis;
}
void OAIBranchImpl::setEstimatedDurationInMillis(const qint32 &estimated_duration_in_millis) {
    m_estimated_duration_in_millis = estimated_duration_in_millis;
    m_estimated_duration_in_millis_isSet = true;
}

bool OAIBranchImpl::is_estimated_duration_in_millis_Set() const{
    return m_estimated_duration_in_millis_isSet;
}

bool OAIBranchImpl::is_estimated_duration_in_millis_Valid() const{
    return m_estimated_duration_in_millis_isValid;
}

QString OAIBranchImpl::getFullDisplayName() const {
    return m_full_display_name;
}
void OAIBranchImpl::setFullDisplayName(const QString &full_display_name) {
    m_full_display_name = full_display_name;
    m_full_display_name_isSet = true;
}

bool OAIBranchImpl::is_full_display_name_Set() const{
    return m_full_display_name_isSet;
}

bool OAIBranchImpl::is_full_display_name_Valid() const{
    return m_full_display_name_isValid;
}

QString OAIBranchImpl::getFullName() const {
    return m_full_name;
}
void OAIBranchImpl::setFullName(const QString &full_name) {
    m_full_name = full_name;
    m_full_name_isSet = true;
}

bool OAIBranchImpl::is_full_name_Set() const{
    return m_full_name_isSet;
}

bool OAIBranchImpl::is_full_name_Valid() const{
    return m_full_name_isValid;
}

QString OAIBranchImpl::getName() const {
    return m_name;
}
void OAIBranchImpl::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIBranchImpl::is_name_Set() const{
    return m_name_isSet;
}

bool OAIBranchImpl::is_name_Valid() const{
    return m_name_isValid;
}

QString OAIBranchImpl::getOrganization() const {
    return m_organization;
}
void OAIBranchImpl::setOrganization(const QString &organization) {
    m_organization = organization;
    m_organization_isSet = true;
}

bool OAIBranchImpl::is_organization_Set() const{
    return m_organization_isSet;
}

bool OAIBranchImpl::is_organization_Valid() const{
    return m_organization_isValid;
}

QList<OAIStringParameterDefinition> OAIBranchImpl::getParameters() const {
    return m_parameters;
}
void OAIBranchImpl::setParameters(const QList<OAIStringParameterDefinition> &parameters) {
    m_parameters = parameters;
    m_parameters_isSet = true;
}

bool OAIBranchImpl::is_parameters_Set() const{
    return m_parameters_isSet;
}

bool OAIBranchImpl::is_parameters_Valid() const{
    return m_parameters_isValid;
}

OAIBranchImplpermissions OAIBranchImpl::getPermissions() const {
    return m_permissions;
}
void OAIBranchImpl::setPermissions(const OAIBranchImplpermissions &permissions) {
    m_permissions = permissions;
    m_permissions_isSet = true;
}

bool OAIBranchImpl::is_permissions_Set() const{
    return m_permissions_isSet;
}

bool OAIBranchImpl::is_permissions_Valid() const{
    return m_permissions_isValid;
}

qint32 OAIBranchImpl::getWeatherScore() const {
    return m_weather_score;
}
void OAIBranchImpl::setWeatherScore(const qint32 &weather_score) {
    m_weather_score = weather_score;
    m_weather_score_isSet = true;
}

bool OAIBranchImpl::is_weather_score_Set() const{
    return m_weather_score_isSet;
}

bool OAIBranchImpl::is_weather_score_Valid() const{
    return m_weather_score_isValid;
}

QString OAIBranchImpl::getPullRequest() const {
    return m_pull_request;
}
void OAIBranchImpl::setPullRequest(const QString &pull_request) {
    m_pull_request = pull_request;
    m_pull_request_isSet = true;
}

bool OAIBranchImpl::is_pull_request_Set() const{
    return m_pull_request_isSet;
}

bool OAIBranchImpl::is_pull_request_Valid() const{
    return m_pull_request_isValid;
}

OAIBranchImpllinks OAIBranchImpl::getLinks() const {
    return m__links;
}
void OAIBranchImpl::setLinks(const OAIBranchImpllinks &_links) {
    m__links = _links;
    m__links_isSet = true;
}

bool OAIBranchImpl::is__links_Set() const{
    return m__links_isSet;
}

bool OAIBranchImpl::is__links_Valid() const{
    return m__links_isValid;
}

OAIPipelineRunImpl OAIBranchImpl::getLatestRun() const {
    return m_latest_run;
}
void OAIBranchImpl::setLatestRun(const OAIPipelineRunImpl &latest_run) {
    m_latest_run = latest_run;
    m_latest_run_isSet = true;
}

bool OAIBranchImpl::is_latest_run_Set() const{
    return m_latest_run_isSet;
}

bool OAIBranchImpl::is_latest_run_Valid() const{
    return m_latest_run_isValid;
}

bool OAIBranchImpl::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_display_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_estimated_duration_in_millis_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_full_display_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_full_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_organization_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_parameters.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_permissions.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_weather_score_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_pull_request_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m__links.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_latest_run.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIBranchImpl::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
