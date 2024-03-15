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

#include "OAIPipelineBranchesitem.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIPipelineBranchesitem::OAIPipelineBranchesitem(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIPipelineBranchesitem::OAIPipelineBranchesitem() {
    this->initializeModel();
}

OAIPipelineBranchesitem::~OAIPipelineBranchesitem() {}

void OAIPipelineBranchesitem::initializeModel() {

    m_display_name_isSet = false;
    m_display_name_isValid = false;

    m_estimated_duration_in_millis_isSet = false;
    m_estimated_duration_in_millis_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;

    m_weather_score_isSet = false;
    m_weather_score_isValid = false;

    m_latest_run_isSet = false;
    m_latest_run_isValid = false;

    m_organization_isSet = false;
    m_organization_isValid = false;

    m_pull_request_isSet = false;
    m_pull_request_isValid = false;

    m_total_number_of_pull_requests_isSet = false;
    m_total_number_of_pull_requests_isValid = false;

    m__class_isSet = false;
    m__class_isValid = false;
}

void OAIPipelineBranchesitem::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIPipelineBranchesitem::fromJsonObject(QJsonObject json) {

    m_display_name_isValid = ::OpenAPI::fromJsonValue(m_display_name, json[QString("displayName")]);
    m_display_name_isSet = !json[QString("displayName")].isNull() && m_display_name_isValid;

    m_estimated_duration_in_millis_isValid = ::OpenAPI::fromJsonValue(m_estimated_duration_in_millis, json[QString("estimatedDurationInMillis")]);
    m_estimated_duration_in_millis_isSet = !json[QString("estimatedDurationInMillis")].isNull() && m_estimated_duration_in_millis_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_weather_score_isValid = ::OpenAPI::fromJsonValue(m_weather_score, json[QString("weatherScore")]);
    m_weather_score_isSet = !json[QString("weatherScore")].isNull() && m_weather_score_isValid;

    m_latest_run_isValid = ::OpenAPI::fromJsonValue(m_latest_run, json[QString("latestRun")]);
    m_latest_run_isSet = !json[QString("latestRun")].isNull() && m_latest_run_isValid;

    m_organization_isValid = ::OpenAPI::fromJsonValue(m_organization, json[QString("organization")]);
    m_organization_isSet = !json[QString("organization")].isNull() && m_organization_isValid;

    m_pull_request_isValid = ::OpenAPI::fromJsonValue(m_pull_request, json[QString("pullRequest")]);
    m_pull_request_isSet = !json[QString("pullRequest")].isNull() && m_pull_request_isValid;

    m_total_number_of_pull_requests_isValid = ::OpenAPI::fromJsonValue(m_total_number_of_pull_requests, json[QString("totalNumberOfPullRequests")]);
    m_total_number_of_pull_requests_isSet = !json[QString("totalNumberOfPullRequests")].isNull() && m_total_number_of_pull_requests_isValid;

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;
}

QString OAIPipelineBranchesitem::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIPipelineBranchesitem::asJsonObject() const {
    QJsonObject obj;
    if (m_display_name_isSet) {
        obj.insert(QString("displayName"), ::OpenAPI::toJsonValue(m_display_name));
    }
    if (m_estimated_duration_in_millis_isSet) {
        obj.insert(QString("estimatedDurationInMillis"), ::OpenAPI::toJsonValue(m_estimated_duration_in_millis));
    }
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_weather_score_isSet) {
        obj.insert(QString("weatherScore"), ::OpenAPI::toJsonValue(m_weather_score));
    }
    if (m_latest_run.isSet()) {
        obj.insert(QString("latestRun"), ::OpenAPI::toJsonValue(m_latest_run));
    }
    if (m_organization_isSet) {
        obj.insert(QString("organization"), ::OpenAPI::toJsonValue(m_organization));
    }
    if (m_pull_request.isSet()) {
        obj.insert(QString("pullRequest"), ::OpenAPI::toJsonValue(m_pull_request));
    }
    if (m_total_number_of_pull_requests_isSet) {
        obj.insert(QString("totalNumberOfPullRequests"), ::OpenAPI::toJsonValue(m_total_number_of_pull_requests));
    }
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    return obj;
}

QString OAIPipelineBranchesitem::getDisplayName() const {
    return m_display_name;
}
void OAIPipelineBranchesitem::setDisplayName(const QString &display_name) {
    m_display_name = display_name;
    m_display_name_isSet = true;
}

bool OAIPipelineBranchesitem::is_display_name_Set() const{
    return m_display_name_isSet;
}

bool OAIPipelineBranchesitem::is_display_name_Valid() const{
    return m_display_name_isValid;
}

qint32 OAIPipelineBranchesitem::getEstimatedDurationInMillis() const {
    return m_estimated_duration_in_millis;
}
void OAIPipelineBranchesitem::setEstimatedDurationInMillis(const qint32 &estimated_duration_in_millis) {
    m_estimated_duration_in_millis = estimated_duration_in_millis;
    m_estimated_duration_in_millis_isSet = true;
}

bool OAIPipelineBranchesitem::is_estimated_duration_in_millis_Set() const{
    return m_estimated_duration_in_millis_isSet;
}

bool OAIPipelineBranchesitem::is_estimated_duration_in_millis_Valid() const{
    return m_estimated_duration_in_millis_isValid;
}

QString OAIPipelineBranchesitem::getName() const {
    return m_name;
}
void OAIPipelineBranchesitem::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIPipelineBranchesitem::is_name_Set() const{
    return m_name_isSet;
}

bool OAIPipelineBranchesitem::is_name_Valid() const{
    return m_name_isValid;
}

qint32 OAIPipelineBranchesitem::getWeatherScore() const {
    return m_weather_score;
}
void OAIPipelineBranchesitem::setWeatherScore(const qint32 &weather_score) {
    m_weather_score = weather_score;
    m_weather_score_isSet = true;
}

bool OAIPipelineBranchesitem::is_weather_score_Set() const{
    return m_weather_score_isSet;
}

bool OAIPipelineBranchesitem::is_weather_score_Valid() const{
    return m_weather_score_isValid;
}

OAIPipelineBranchesitemlatestRun OAIPipelineBranchesitem::getLatestRun() const {
    return m_latest_run;
}
void OAIPipelineBranchesitem::setLatestRun(const OAIPipelineBranchesitemlatestRun &latest_run) {
    m_latest_run = latest_run;
    m_latest_run_isSet = true;
}

bool OAIPipelineBranchesitem::is_latest_run_Set() const{
    return m_latest_run_isSet;
}

bool OAIPipelineBranchesitem::is_latest_run_Valid() const{
    return m_latest_run_isValid;
}

QString OAIPipelineBranchesitem::getOrganization() const {
    return m_organization;
}
void OAIPipelineBranchesitem::setOrganization(const QString &organization) {
    m_organization = organization;
    m_organization_isSet = true;
}

bool OAIPipelineBranchesitem::is_organization_Set() const{
    return m_organization_isSet;
}

bool OAIPipelineBranchesitem::is_organization_Valid() const{
    return m_organization_isValid;
}

OAIPipelineBranchesitempullRequest OAIPipelineBranchesitem::getPullRequest() const {
    return m_pull_request;
}
void OAIPipelineBranchesitem::setPullRequest(const OAIPipelineBranchesitempullRequest &pull_request) {
    m_pull_request = pull_request;
    m_pull_request_isSet = true;
}

bool OAIPipelineBranchesitem::is_pull_request_Set() const{
    return m_pull_request_isSet;
}

bool OAIPipelineBranchesitem::is_pull_request_Valid() const{
    return m_pull_request_isValid;
}

qint32 OAIPipelineBranchesitem::getTotalNumberOfPullRequests() const {
    return m_total_number_of_pull_requests;
}
void OAIPipelineBranchesitem::setTotalNumberOfPullRequests(const qint32 &total_number_of_pull_requests) {
    m_total_number_of_pull_requests = total_number_of_pull_requests;
    m_total_number_of_pull_requests_isSet = true;
}

bool OAIPipelineBranchesitem::is_total_number_of_pull_requests_Set() const{
    return m_total_number_of_pull_requests_isSet;
}

bool OAIPipelineBranchesitem::is_total_number_of_pull_requests_Valid() const{
    return m_total_number_of_pull_requests_isValid;
}

QString OAIPipelineBranchesitem::getClass() const {
    return m__class;
}
void OAIPipelineBranchesitem::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIPipelineBranchesitem::is__class_Set() const{
    return m__class_isSet;
}

bool OAIPipelineBranchesitem::is__class_Valid() const{
    return m__class_isValid;
}

bool OAIPipelineBranchesitem::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_display_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_estimated_duration_in_millis_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_weather_score_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_latest_run.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_organization_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_pull_request.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_total_number_of_pull_requests_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIPipelineBranchesitem::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
