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

#include "OAIListView.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIListView::OAIListView(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIListView::OAIListView() {
    this->initializeModel();
}

OAIListView::~OAIListView() {}

void OAIListView::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_description_isSet = false;
    m_description_isValid = false;

    m_jobs_isSet = false;
    m_jobs_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;
}

void OAIListView::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIListView::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_description_isValid = ::OpenAPI::fromJsonValue(m_description, json[QString("description")]);
    m_description_isSet = !json[QString("description")].isNull() && m_description_isValid;

    m_jobs_isValid = ::OpenAPI::fromJsonValue(m_jobs, json[QString("jobs")]);
    m_jobs_isSet = !json[QString("jobs")].isNull() && m_jobs_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(m_url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;
}

QString OAIListView::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIListView::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    if (m_description_isSet) {
        obj.insert(QString("description"), ::OpenAPI::toJsonValue(m_description));
    }
    if (m_jobs.size() > 0) {
        obj.insert(QString("jobs"), ::OpenAPI::toJsonValue(m_jobs));
    }
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(m_url));
    }
    return obj;
}

QString OAIListView::getClass() const {
    return m__class;
}
void OAIListView::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIListView::is__class_Set() const{
    return m__class_isSet;
}

bool OAIListView::is__class_Valid() const{
    return m__class_isValid;
}

QString OAIListView::getDescription() const {
    return m_description;
}
void OAIListView::setDescription(const QString &description) {
    m_description = description;
    m_description_isSet = true;
}

bool OAIListView::is_description_Set() const{
    return m_description_isSet;
}

bool OAIListView::is_description_Valid() const{
    return m_description_isValid;
}

QList<OAIFreeStyleProject> OAIListView::getJobs() const {
    return m_jobs;
}
void OAIListView::setJobs(const QList<OAIFreeStyleProject> &jobs) {
    m_jobs = jobs;
    m_jobs_isSet = true;
}

bool OAIListView::is_jobs_Set() const{
    return m_jobs_isSet;
}

bool OAIListView::is_jobs_Valid() const{
    return m_jobs_isValid;
}

QString OAIListView::getName() const {
    return m_name;
}
void OAIListView::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIListView::is_name_Set() const{
    return m_name_isSet;
}

bool OAIListView::is_name_Valid() const{
    return m_name_isValid;
}

QString OAIListView::getUrl() const {
    return m_url;
}
void OAIListView::setUrl(const QString &url) {
    m_url = url;
    m_url_isSet = true;
}

bool OAIListView::is_url_Set() const{
    return m_url_isSet;
}

bool OAIListView::is_url_Valid() const{
    return m_url_isValid;
}

bool OAIListView::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_description_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_jobs.size() > 0) {
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
    } while (false);
    return isObjectUpdated;
}

bool OAIListView::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
