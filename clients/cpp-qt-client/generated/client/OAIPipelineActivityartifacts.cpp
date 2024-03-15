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

#include "OAIPipelineActivityartifacts.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIPipelineActivityartifacts::OAIPipelineActivityartifacts(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIPipelineActivityartifacts::OAIPipelineActivityartifacts() {
    this->initializeModel();
}

OAIPipelineActivityartifacts::~OAIPipelineActivityartifacts() {}

void OAIPipelineActivityartifacts::initializeModel() {

    m_name_isSet = false;
    m_name_isValid = false;

    m_size_isSet = false;
    m_size_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;

    m__class_isSet = false;
    m__class_isValid = false;
}

void OAIPipelineActivityartifacts::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIPipelineActivityartifacts::fromJsonObject(QJsonObject json) {

    m_name_isValid = ::OpenAPI::fromJsonValue(m_name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_size_isValid = ::OpenAPI::fromJsonValue(m_size, json[QString("size")]);
    m_size_isSet = !json[QString("size")].isNull() && m_size_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(m_url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;
}

QString OAIPipelineActivityartifacts::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIPipelineActivityartifacts::asJsonObject() const {
    QJsonObject obj;
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(m_name));
    }
    if (m_size_isSet) {
        obj.insert(QString("size"), ::OpenAPI::toJsonValue(m_size));
    }
    if (m_url_isSet) {
        obj.insert(QString("url"), ::OpenAPI::toJsonValue(m_url));
    }
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    return obj;
}

QString OAIPipelineActivityartifacts::getName() const {
    return m_name;
}
void OAIPipelineActivityartifacts::setName(const QString &name) {
    m_name = name;
    m_name_isSet = true;
}

bool OAIPipelineActivityartifacts::is_name_Set() const{
    return m_name_isSet;
}

bool OAIPipelineActivityartifacts::is_name_Valid() const{
    return m_name_isValid;
}

qint32 OAIPipelineActivityartifacts::getSize() const {
    return m_size;
}
void OAIPipelineActivityartifacts::setSize(const qint32 &size) {
    m_size = size;
    m_size_isSet = true;
}

bool OAIPipelineActivityartifacts::is_size_Set() const{
    return m_size_isSet;
}

bool OAIPipelineActivityartifacts::is_size_Valid() const{
    return m_size_isValid;
}

QString OAIPipelineActivityartifacts::getUrl() const {
    return m_url;
}
void OAIPipelineActivityartifacts::setUrl(const QString &url) {
    m_url = url;
    m_url_isSet = true;
}

bool OAIPipelineActivityartifacts::is_url_Set() const{
    return m_url_isSet;
}

bool OAIPipelineActivityartifacts::is_url_Valid() const{
    return m_url_isValid;
}

QString OAIPipelineActivityartifacts::getClass() const {
    return m__class;
}
void OAIPipelineActivityartifacts::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIPipelineActivityartifacts::is__class_Set() const{
    return m__class_isSet;
}

bool OAIPipelineActivityartifacts::is__class_Valid() const{
    return m__class_isValid;
}

bool OAIPipelineActivityartifacts::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_size_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_url_isSet) {
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

bool OAIPipelineActivityartifacts::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
