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

#include "OAIFreeStyleProject.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIFreeStyleProject::OAIFreeStyleProject(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIFreeStyleProject::OAIFreeStyleProject() {
    this->initializeModel();
}

OAIFreeStyleProject::~OAIFreeStyleProject() {}

void OAIFreeStyleProject::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;

    m_color_isSet = false;
    m_color_isValid = false;

    m_actions_isSet = false;
    m_actions_isValid = false;

    m_description_isSet = false;
    m_description_isValid = false;

    m_display_name_isSet = false;
    m_display_name_isValid = false;

    m_display_name_or_null_isSet = false;
    m_display_name_or_null_isValid = false;

    m_full_display_name_isSet = false;
    m_full_display_name_isValid = false;

    m_full_name_isSet = false;
    m_full_name_isValid = false;

    m_buildable_isSet = false;
    m_buildable_isValid = false;

    m_builds_isSet = false;
    m_builds_isValid = false;

    m_first_build_isSet = false;
    m_first_build_isValid = false;

    m_health_report_isSet = false;
    m_health_report_isValid = false;

    m_in_queue_isSet = false;
    m_in_queue_isValid = false;

    m_keep_dependencies_isSet = false;
    m_keep_dependencies_isValid = false;

    m_last_build_isSet = false;
    m_last_build_isValid = false;

    m_last_completed_build_isSet = false;
    m_last_completed_build_isValid = false;

    m_last_failed_build_isSet = false;
    m_last_failed_build_isValid = false;

    m_last_stable_build_isSet = false;
    m_last_stable_build_isValid = false;

    m_last_successful_build_isSet = false;
    m_last_successful_build_isValid = false;

    m_last_unstable_build_isSet = false;
    m_last_unstable_build_isValid = false;

    m_last_unsuccessful_build_isSet = false;
    m_last_unsuccessful_build_isValid = false;

    m_next_build_number_isSet = false;
    m_next_build_number_isValid = false;

    m_queue_item_isSet = false;
    m_queue_item_isValid = false;

    m_concurrent_build_isSet = false;
    m_concurrent_build_isValid = false;

    m_scm_isSet = false;
    m_scm_isValid = false;
}

void OAIFreeStyleProject::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIFreeStyleProject::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;

    m_color_isValid = ::OpenAPI::fromJsonValue(color, json[QString("color")]);
    m_color_isSet = !json[QString("color")].isNull() && m_color_isValid;

    m_actions_isValid = ::OpenAPI::fromJsonValue(actions, json[QString("actions")]);
    m_actions_isSet = !json[QString("actions")].isNull() && m_actions_isValid;

    m_description_isValid = ::OpenAPI::fromJsonValue(description, json[QString("description")]);
    m_description_isSet = !json[QString("description")].isNull() && m_description_isValid;

    m_display_name_isValid = ::OpenAPI::fromJsonValue(display_name, json[QString("displayName")]);
    m_display_name_isSet = !json[QString("displayName")].isNull() && m_display_name_isValid;

    m_display_name_or_null_isValid = ::OpenAPI::fromJsonValue(display_name_or_null, json[QString("displayNameOrNull")]);
    m_display_name_or_null_isSet = !json[QString("displayNameOrNull")].isNull() && m_display_name_or_null_isValid;

    m_full_display_name_isValid = ::OpenAPI::fromJsonValue(full_display_name, json[QString("fullDisplayName")]);
    m_full_display_name_isSet = !json[QString("fullDisplayName")].isNull() && m_full_display_name_isValid;

    m_full_name_isValid = ::OpenAPI::fromJsonValue(full_name, json[QString("fullName")]);
    m_full_name_isSet = !json[QString("fullName")].isNull() && m_full_name_isValid;

    m_buildable_isValid = ::OpenAPI::fromJsonValue(buildable, json[QString("buildable")]);
    m_buildable_isSet = !json[QString("buildable")].isNull() && m_buildable_isValid;

    m_builds_isValid = ::OpenAPI::fromJsonValue(builds, json[QString("builds")]);
    m_builds_isSet = !json[QString("builds")].isNull() && m_builds_isValid;

    m_first_build_isValid = ::OpenAPI::fromJsonValue(first_build, json[QString("firstBuild")]);
    m_first_build_isSet = !json[QString("firstBuild")].isNull() && m_first_build_isValid;

    m_health_report_isValid = ::OpenAPI::fromJsonValue(health_report, json[QString("healthReport")]);
    m_health_report_isSet = !json[QString("healthReport")].isNull() && m_health_report_isValid;

    m_in_queue_isValid = ::OpenAPI::fromJsonValue(in_queue, json[QString("inQueue")]);
    m_in_queue_isSet = !json[QString("inQueue")].isNull() && m_in_queue_isValid;

    m_keep_dependencies_isValid = ::OpenAPI::fromJsonValue(keep_dependencies, json[QString("keepDependencies")]);
    m_keep_dependencies_isSet = !json[QString("keepDependencies")].isNull() && m_keep_dependencies_isValid;

    m_last_build_isValid = ::OpenAPI::fromJsonValue(last_build, json[QString("lastBuild")]);
    m_last_build_isSet = !json[QString("lastBuild")].isNull() && m_last_build_isValid;

    m_last_completed_build_isValid = ::OpenAPI::fromJsonValue(last_completed_build, json[QString("lastCompletedBuild")]);
    m_last_completed_build_isSet = !json[QString("lastCompletedBuild")].isNull() && m_last_completed_build_isValid;

    m_last_failed_build_isValid = ::OpenAPI::fromJsonValue(last_failed_build, json[QString("lastFailedBuild")]);
    m_last_failed_build_isSet = !json[QString("lastFailedBuild")].isNull() && m_last_failed_build_isValid;

    m_last_stable_build_isValid = ::OpenAPI::fromJsonValue(last_stable_build, json[QString("lastStableBuild")]);
    m_last_stable_build_isSet = !json[QString("lastStableBuild")].isNull() && m_last_stable_build_isValid;

    m_last_successful_build_isValid = ::OpenAPI::fromJsonValue(last_successful_build, json[QString("lastSuccessfulBuild")]);
    m_last_successful_build_isSet = !json[QString("lastSuccessfulBuild")].isNull() && m_last_successful_build_isValid;

    m_last_unstable_build_isValid = ::OpenAPI::fromJsonValue(last_unstable_build, json[QString("lastUnstableBuild")]);
    m_last_unstable_build_isSet = !json[QString("lastUnstableBuild")].isNull() && m_last_unstable_build_isValid;

    m_last_unsuccessful_build_isValid = ::OpenAPI::fromJsonValue(last_unsuccessful_build, json[QString("lastUnsuccessfulBuild")]);
    m_last_unsuccessful_build_isSet = !json[QString("lastUnsuccessfulBuild")].isNull() && m_last_unsuccessful_build_isValid;

    m_next_build_number_isValid = ::OpenAPI::fromJsonValue(next_build_number, json[QString("nextBuildNumber")]);
    m_next_build_number_isSet = !json[QString("nextBuildNumber")].isNull() && m_next_build_number_isValid;

    m_queue_item_isValid = ::OpenAPI::fromJsonValue(queue_item, json[QString("queueItem")]);
    m_queue_item_isSet = !json[QString("queueItem")].isNull() && m_queue_item_isValid;

    m_concurrent_build_isValid = ::OpenAPI::fromJsonValue(concurrent_build, json[QString("concurrentBuild")]);
    m_concurrent_build_isSet = !json[QString("concurrentBuild")].isNull() && m_concurrent_build_isValid;

    m_scm_isValid = ::OpenAPI::fromJsonValue(scm, json[QString("scm")]);
    m_scm_isSet = !json[QString("scm")].isNull() && m_scm_isValid;
}

QString OAIFreeStyleProject::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIFreeStyleProject::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(name));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(url));
    }
    if (m_color_isSet) {
        obj.insert(QString("color"), ::OpenAPI::toJsonValue(color));
    }
    if (actions.size() > 0) {
        obj.insert(QString("actions"), ::OpenAPI::toJsonValue(actions));
    }
    if (m_description_isSet) {
        obj.insert(QString("description"), ::OpenAPI::toJsonValue(description));
    }
    if (m_display_name_isSet) {
        obj.insert(QString("displayName"), ::OpenAPI::toJsonValue(display_name));
    }
    if (m_display_name_or_null_isSet) {
        obj.insert(QString("displayNameOrNull"), ::OpenAPI::toJsonValue(display_name_or_null));
    }
    if (m_full_display_name_isSet) {
        obj.insert(QString("fullDisplayName"), ::OpenAPI::toJsonValue(full_display_name));
    }
    if (m_full_name_isSet) {
        obj.insert(QString("fullName"), ::OpenAPI::toJsonValue(full_name));
    }
    if (m_buildable_isSet) {
        obj.insert(QString("buildable"), ::OpenAPI::toJsonValue(buildable));
    }
    if (builds.size() > 0) {
        obj.insert(QString("builds"), ::OpenAPI::toJsonValue(builds));
    }
    if (first_build.isSet()) {
        obj.insert(QString("firstBuild"), ::OpenAPI::toJsonValue(first_build));
    }
    if (health_report.size() > 0) {
        obj.insert(QString("healthReport"), ::OpenAPI::toJsonValue(health_report));
    }
    if (m_in_queue_isSet) {
        obj.insert(QString("inQueue"), ::OpenAPI::toJsonValue(in_queue));
    }
    if (m_keep_dependencies_isSet) {
        obj.insert(QString("keepDependencies"), ::OpenAPI::toJsonValue(keep_dependencies));
    }
    if (last_build.isSet()) {
        obj.insert(QString("lastBuild"), ::OpenAPI::toJsonValue(last_build));
    }
    if (last_completed_build.isSet()) {
        obj.insert(QString("lastCompletedBuild"), ::OpenAPI::toJsonValue(last_completed_build));
    }
    if (m_last_failed_build_isSet) {
        obj.insert(QString("lastFailedBuild"), ::OpenAPI::toJsonValue(last_failed_build));
    }
    if (last_stable_build.isSet()) {
        obj.insert(QString("lastStableBuild"), ::OpenAPI::toJsonValue(last_stable_build));
    }
    if (last_successful_build.isSet()) {
        obj.insert(QString("lastSuccessfulBuild"), ::OpenAPI::toJsonValue(last_successful_build));
    }
    if (m_last_unstable_build_isSet) {
        obj.insert(QString("lastUnstableBuild"), ::OpenAPI::toJsonValue(last_unstable_build));
    }
    if (m_last_unsuccessful_build_isSet) {
        obj.insert(QString("lastUnsuccessfulBuild"), ::OpenAPI::toJsonValue(last_unsuccessful_build));
    }
    if (m_next_build_number_isSet) {
        obj.insert(QString("nextBuildNumber"), ::OpenAPI::toJsonValue(next_build_number));
    }
    if (m_queue_item_isSet) {
        obj.insert(QString("queueItem"), ::OpenAPI::toJsonValue(queue_item));
    }
    if (m_concurrent_build_isSet) {
        obj.insert(QString("concurrentBuild"), ::OpenAPI::toJsonValue(concurrent_build));
    }
    if (scm.isSet()) {
        obj.insert(QString("scm"), ::OpenAPI::toJsonValue(scm));
    }
    return obj;
}

QString OAIFreeStyleProject::getClass() const {
    return _class;
}
void OAIFreeStyleProject::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAIFreeStyleProject::is__class_Set() const{
    return m__class_isSet;
}

bool OAIFreeStyleProject::is__class_Valid() const{
    return m__class_isValid;
}

QString OAIFreeStyleProject::getName() const {
    return name;
}
void OAIFreeStyleProject::setName(const QString &name) {
    this->name = name;
    this->m_name_isSet = true;
}

bool OAIFreeStyleProject::is_name_Set() const{
    return m_name_isSet;
}

bool OAIFreeStyleProject::is_name_Valid() const{
    return m_name_isValid;
}

QString OAIFreeStyleProject::getUrl() const {
    return url;
}
void OAIFreeStyleProject::setUrl(const QString &url) {
    this->url = url;
    this->m_url_isSet = true;
}

bool OAIFreeStyleProject::is_url_Set() const{
    return m_url_isSet;
}

bool OAIFreeStyleProject::is_url_Valid() const{
    return m_url_isValid;
}

QString OAIFreeStyleProject::getColor() const {
    return color;
}
void OAIFreeStyleProject::setColor(const QString &color) {
    this->color = color;
    this->m_color_isSet = true;
}

bool OAIFreeStyleProject::is_color_Set() const{
    return m_color_isSet;
}

bool OAIFreeStyleProject::is_color_Valid() const{
    return m_color_isValid;
}

QList<OAIFreeStyleProjectactions> OAIFreeStyleProject::getActions() const {
    return actions;
}
void OAIFreeStyleProject::setActions(const QList<OAIFreeStyleProjectactions> &actions) {
    this->actions = actions;
    this->m_actions_isSet = true;
}

bool OAIFreeStyleProject::is_actions_Set() const{
    return m_actions_isSet;
}

bool OAIFreeStyleProject::is_actions_Valid() const{
    return m_actions_isValid;
}

QString OAIFreeStyleProject::getDescription() const {
    return description;
}
void OAIFreeStyleProject::setDescription(const QString &description) {
    this->description = description;
    this->m_description_isSet = true;
}

bool OAIFreeStyleProject::is_description_Set() const{
    return m_description_isSet;
}

bool OAIFreeStyleProject::is_description_Valid() const{
    return m_description_isValid;
}

QString OAIFreeStyleProject::getDisplayName() const {
    return display_name;
}
void OAIFreeStyleProject::setDisplayName(const QString &display_name) {
    this->display_name = display_name;
    this->m_display_name_isSet = true;
}

bool OAIFreeStyleProject::is_display_name_Set() const{
    return m_display_name_isSet;
}

bool OAIFreeStyleProject::is_display_name_Valid() const{
    return m_display_name_isValid;
}

QString OAIFreeStyleProject::getDisplayNameOrNull() const {
    return display_name_or_null;
}
void OAIFreeStyleProject::setDisplayNameOrNull(const QString &display_name_or_null) {
    this->display_name_or_null = display_name_or_null;
    this->m_display_name_or_null_isSet = true;
}

bool OAIFreeStyleProject::is_display_name_or_null_Set() const{
    return m_display_name_or_null_isSet;
}

bool OAIFreeStyleProject::is_display_name_or_null_Valid() const{
    return m_display_name_or_null_isValid;
}

QString OAIFreeStyleProject::getFullDisplayName() const {
    return full_display_name;
}
void OAIFreeStyleProject::setFullDisplayName(const QString &full_display_name) {
    this->full_display_name = full_display_name;
    this->m_full_display_name_isSet = true;
}

bool OAIFreeStyleProject::is_full_display_name_Set() const{
    return m_full_display_name_isSet;
}

bool OAIFreeStyleProject::is_full_display_name_Valid() const{
    return m_full_display_name_isValid;
}

QString OAIFreeStyleProject::getFullName() const {
    return full_name;
}
void OAIFreeStyleProject::setFullName(const QString &full_name) {
    this->full_name = full_name;
    this->m_full_name_isSet = true;
}

bool OAIFreeStyleProject::is_full_name_Set() const{
    return m_full_name_isSet;
}

bool OAIFreeStyleProject::is_full_name_Valid() const{
    return m_full_name_isValid;
}

bool OAIFreeStyleProject::isBuildable() const {
    return buildable;
}
void OAIFreeStyleProject::setBuildable(const bool &buildable) {
    this->buildable = buildable;
    this->m_buildable_isSet = true;
}

bool OAIFreeStyleProject::is_buildable_Set() const{
    return m_buildable_isSet;
}

bool OAIFreeStyleProject::is_buildable_Valid() const{
    return m_buildable_isValid;
}

QList<OAIFreeStyleBuild> OAIFreeStyleProject::getBuilds() const {
    return builds;
}
void OAIFreeStyleProject::setBuilds(const QList<OAIFreeStyleBuild> &builds) {
    this->builds = builds;
    this->m_builds_isSet = true;
}

bool OAIFreeStyleProject::is_builds_Set() const{
    return m_builds_isSet;
}

bool OAIFreeStyleProject::is_builds_Valid() const{
    return m_builds_isValid;
}

OAIFreeStyleBuild OAIFreeStyleProject::getFirstBuild() const {
    return first_build;
}
void OAIFreeStyleProject::setFirstBuild(const OAIFreeStyleBuild &first_build) {
    this->first_build = first_build;
    this->m_first_build_isSet = true;
}

bool OAIFreeStyleProject::is_first_build_Set() const{
    return m_first_build_isSet;
}

bool OAIFreeStyleProject::is_first_build_Valid() const{
    return m_first_build_isValid;
}

QList<OAIFreeStyleProjecthealthReport> OAIFreeStyleProject::getHealthReport() const {
    return health_report;
}
void OAIFreeStyleProject::setHealthReport(const QList<OAIFreeStyleProjecthealthReport> &health_report) {
    this->health_report = health_report;
    this->m_health_report_isSet = true;
}

bool OAIFreeStyleProject::is_health_report_Set() const{
    return m_health_report_isSet;
}

bool OAIFreeStyleProject::is_health_report_Valid() const{
    return m_health_report_isValid;
}

bool OAIFreeStyleProject::isInQueue() const {
    return in_queue;
}
void OAIFreeStyleProject::setInQueue(const bool &in_queue) {
    this->in_queue = in_queue;
    this->m_in_queue_isSet = true;
}

bool OAIFreeStyleProject::is_in_queue_Set() const{
    return m_in_queue_isSet;
}

bool OAIFreeStyleProject::is_in_queue_Valid() const{
    return m_in_queue_isValid;
}

bool OAIFreeStyleProject::isKeepDependencies() const {
    return keep_dependencies;
}
void OAIFreeStyleProject::setKeepDependencies(const bool &keep_dependencies) {
    this->keep_dependencies = keep_dependencies;
    this->m_keep_dependencies_isSet = true;
}

bool OAIFreeStyleProject::is_keep_dependencies_Set() const{
    return m_keep_dependencies_isSet;
}

bool OAIFreeStyleProject::is_keep_dependencies_Valid() const{
    return m_keep_dependencies_isValid;
}

OAIFreeStyleBuild OAIFreeStyleProject::getLastBuild() const {
    return last_build;
}
void OAIFreeStyleProject::setLastBuild(const OAIFreeStyleBuild &last_build) {
    this->last_build = last_build;
    this->m_last_build_isSet = true;
}

bool OAIFreeStyleProject::is_last_build_Set() const{
    return m_last_build_isSet;
}

bool OAIFreeStyleProject::is_last_build_Valid() const{
    return m_last_build_isValid;
}

OAIFreeStyleBuild OAIFreeStyleProject::getLastCompletedBuild() const {
    return last_completed_build;
}
void OAIFreeStyleProject::setLastCompletedBuild(const OAIFreeStyleBuild &last_completed_build) {
    this->last_completed_build = last_completed_build;
    this->m_last_completed_build_isSet = true;
}

bool OAIFreeStyleProject::is_last_completed_build_Set() const{
    return m_last_completed_build_isSet;
}

bool OAIFreeStyleProject::is_last_completed_build_Valid() const{
    return m_last_completed_build_isValid;
}

QString OAIFreeStyleProject::getLastFailedBuild() const {
    return last_failed_build;
}
void OAIFreeStyleProject::setLastFailedBuild(const QString &last_failed_build) {
    this->last_failed_build = last_failed_build;
    this->m_last_failed_build_isSet = true;
}

bool OAIFreeStyleProject::is_last_failed_build_Set() const{
    return m_last_failed_build_isSet;
}

bool OAIFreeStyleProject::is_last_failed_build_Valid() const{
    return m_last_failed_build_isValid;
}

OAIFreeStyleBuild OAIFreeStyleProject::getLastStableBuild() const {
    return last_stable_build;
}
void OAIFreeStyleProject::setLastStableBuild(const OAIFreeStyleBuild &last_stable_build) {
    this->last_stable_build = last_stable_build;
    this->m_last_stable_build_isSet = true;
}

bool OAIFreeStyleProject::is_last_stable_build_Set() const{
    return m_last_stable_build_isSet;
}

bool OAIFreeStyleProject::is_last_stable_build_Valid() const{
    return m_last_stable_build_isValid;
}

OAIFreeStyleBuild OAIFreeStyleProject::getLastSuccessfulBuild() const {
    return last_successful_build;
}
void OAIFreeStyleProject::setLastSuccessfulBuild(const OAIFreeStyleBuild &last_successful_build) {
    this->last_successful_build = last_successful_build;
    this->m_last_successful_build_isSet = true;
}

bool OAIFreeStyleProject::is_last_successful_build_Set() const{
    return m_last_successful_build_isSet;
}

bool OAIFreeStyleProject::is_last_successful_build_Valid() const{
    return m_last_successful_build_isValid;
}

QString OAIFreeStyleProject::getLastUnstableBuild() const {
    return last_unstable_build;
}
void OAIFreeStyleProject::setLastUnstableBuild(const QString &last_unstable_build) {
    this->last_unstable_build = last_unstable_build;
    this->m_last_unstable_build_isSet = true;
}

bool OAIFreeStyleProject::is_last_unstable_build_Set() const{
    return m_last_unstable_build_isSet;
}

bool OAIFreeStyleProject::is_last_unstable_build_Valid() const{
    return m_last_unstable_build_isValid;
}

QString OAIFreeStyleProject::getLastUnsuccessfulBuild() const {
    return last_unsuccessful_build;
}
void OAIFreeStyleProject::setLastUnsuccessfulBuild(const QString &last_unsuccessful_build) {
    this->last_unsuccessful_build = last_unsuccessful_build;
    this->m_last_unsuccessful_build_isSet = true;
}

bool OAIFreeStyleProject::is_last_unsuccessful_build_Set() const{
    return m_last_unsuccessful_build_isSet;
}

bool OAIFreeStyleProject::is_last_unsuccessful_build_Valid() const{
    return m_last_unsuccessful_build_isValid;
}

qint32 OAIFreeStyleProject::getNextBuildNumber() const {
    return next_build_number;
}
void OAIFreeStyleProject::setNextBuildNumber(const qint32 &next_build_number) {
    this->next_build_number = next_build_number;
    this->m_next_build_number_isSet = true;
}

bool OAIFreeStyleProject::is_next_build_number_Set() const{
    return m_next_build_number_isSet;
}

bool OAIFreeStyleProject::is_next_build_number_Valid() const{
    return m_next_build_number_isValid;
}

QString OAIFreeStyleProject::getQueueItem() const {
    return queue_item;
}
void OAIFreeStyleProject::setQueueItem(const QString &queue_item) {
    this->queue_item = queue_item;
    this->m_queue_item_isSet = true;
}

bool OAIFreeStyleProject::is_queue_item_Set() const{
    return m_queue_item_isSet;
}

bool OAIFreeStyleProject::is_queue_item_Valid() const{
    return m_queue_item_isValid;
}

bool OAIFreeStyleProject::isConcurrentBuild() const {
    return concurrent_build;
}
void OAIFreeStyleProject::setConcurrentBuild(const bool &concurrent_build) {
    this->concurrent_build = concurrent_build;
    this->m_concurrent_build_isSet = true;
}

bool OAIFreeStyleProject::is_concurrent_build_Set() const{
    return m_concurrent_build_isSet;
}

bool OAIFreeStyleProject::is_concurrent_build_Valid() const{
    return m_concurrent_build_isValid;
}

OAINullSCM OAIFreeStyleProject::getScm() const {
    return scm;
}
void OAIFreeStyleProject::setScm(const OAINullSCM &scm) {
    this->scm = scm;
    this->m_scm_isSet = true;
}

bool OAIFreeStyleProject::is_scm_Set() const{
    return m_scm_isSet;
}

bool OAIFreeStyleProject::is_scm_Valid() const{
    return m_scm_isValid;
}

bool OAIFreeStyleProject::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_color_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (actions.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_description_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_display_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_display_name_or_null_isSet) {
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

        if (m_buildable_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (builds.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (first_build.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (health_report.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_in_queue_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_keep_dependencies_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (last_build.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (last_completed_build.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_last_failed_build_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (last_stable_build.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (last_successful_build.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_last_unstable_build_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_last_unsuccessful_build_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_next_build_number_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_queue_item_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_concurrent_build_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (scm.isSet()) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIFreeStyleProject::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
