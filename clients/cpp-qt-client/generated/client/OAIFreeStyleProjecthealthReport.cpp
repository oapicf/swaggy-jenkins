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

#include "OAIFreeStyleProjecthealthReport.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIFreeStyleProjecthealthReport::OAIFreeStyleProjecthealthReport(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIFreeStyleProjecthealthReport::OAIFreeStyleProjecthealthReport() {
    this->initializeModel();
}

OAIFreeStyleProjecthealthReport::~OAIFreeStyleProjecthealthReport() {}

void OAIFreeStyleProjecthealthReport::initializeModel() {

    m_description_isSet = false;
    m_description_isValid = false;

    m_icon_class_name_isSet = false;
    m_icon_class_name_isValid = false;

    m_icon_url_isSet = false;
    m_icon_url_isValid = false;

    m_score_isSet = false;
    m_score_isValid = false;

    m__class_isSet = false;
    m__class_isValid = false;
}

void OAIFreeStyleProjecthealthReport::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIFreeStyleProjecthealthReport::fromJsonObject(QJsonObject json) {

    m_description_isValid = ::OpenAPI::fromJsonValue(m_description, json[QString("description")]);
    m_description_isSet = !json[QString("description")].isNull() && m_description_isValid;

    m_icon_class_name_isValid = ::OpenAPI::fromJsonValue(m_icon_class_name, json[QString("iconClassName")]);
    m_icon_class_name_isSet = !json[QString("iconClassName")].isNull() && m_icon_class_name_isValid;

    m_icon_url_isValid = ::OpenAPI::fromJsonValue(m_icon_url, json[QString("iconUrl")]);
    m_icon_url_isSet = !json[QString("iconUrl")].isNull() && m_icon_url_isValid;

    m_score_isValid = ::OpenAPI::fromJsonValue(m_score, json[QString("score")]);
    m_score_isSet = !json[QString("score")].isNull() && m_score_isValid;

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;
}

QString OAIFreeStyleProjecthealthReport::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIFreeStyleProjecthealthReport::asJsonObject() const {
    QJsonObject obj;
    if (m_description_isSet) {
        obj.insert(QString("description"), ::OpenAPI::toJsonValue(m_description));
    }
    if (m_icon_class_name_isSet) {
        obj.insert(QString("iconClassName"), ::OpenAPI::toJsonValue(m_icon_class_name));
    }
    if (m_icon_url_isSet) {
        obj.insert(QString("iconUrl"), ::OpenAPI::toJsonValue(m_icon_url));
    }
    if (m_score_isSet) {
        obj.insert(QString("score"), ::OpenAPI::toJsonValue(m_score));
    }
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    return obj;
}

QString OAIFreeStyleProjecthealthReport::getDescription() const {
    return m_description;
}
void OAIFreeStyleProjecthealthReport::setDescription(const QString &description) {
    m_description = description;
    m_description_isSet = true;
}

bool OAIFreeStyleProjecthealthReport::is_description_Set() const{
    return m_description_isSet;
}

bool OAIFreeStyleProjecthealthReport::is_description_Valid() const{
    return m_description_isValid;
}

QString OAIFreeStyleProjecthealthReport::getIconClassName() const {
    return m_icon_class_name;
}
void OAIFreeStyleProjecthealthReport::setIconClassName(const QString &icon_class_name) {
    m_icon_class_name = icon_class_name;
    m_icon_class_name_isSet = true;
}

bool OAIFreeStyleProjecthealthReport::is_icon_class_name_Set() const{
    return m_icon_class_name_isSet;
}

bool OAIFreeStyleProjecthealthReport::is_icon_class_name_Valid() const{
    return m_icon_class_name_isValid;
}

QString OAIFreeStyleProjecthealthReport::getIconUrl() const {
    return m_icon_url;
}
void OAIFreeStyleProjecthealthReport::setIconUrl(const QString &icon_url) {
    m_icon_url = icon_url;
    m_icon_url_isSet = true;
}

bool OAIFreeStyleProjecthealthReport::is_icon_url_Set() const{
    return m_icon_url_isSet;
}

bool OAIFreeStyleProjecthealthReport::is_icon_url_Valid() const{
    return m_icon_url_isValid;
}

qint32 OAIFreeStyleProjecthealthReport::getScore() const {
    return m_score;
}
void OAIFreeStyleProjecthealthReport::setScore(const qint32 &score) {
    m_score = score;
    m_score_isSet = true;
}

bool OAIFreeStyleProjecthealthReport::is_score_Set() const{
    return m_score_isSet;
}

bool OAIFreeStyleProjecthealthReport::is_score_Valid() const{
    return m_score_isValid;
}

QString OAIFreeStyleProjecthealthReport::getClass() const {
    return m__class;
}
void OAIFreeStyleProjecthealthReport::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIFreeStyleProjecthealthReport::is__class_Set() const{
    return m__class_isSet;
}

bool OAIFreeStyleProjecthealthReport::is__class_Valid() const{
    return m__class_isValid;
}

bool OAIFreeStyleProjecthealthReport::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_description_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_icon_class_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_icon_url_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_score_isSet) {
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

bool OAIFreeStyleProjecthealthReport::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
