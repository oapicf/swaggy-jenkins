/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIGithubFile.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGithubFile::OAIGithubFile(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGithubFile::OAIGithubFile() {
    this->initializeModel();
}

OAIGithubFile::~OAIGithubFile() {}

void OAIGithubFile::initializeModel() {

    m_content_isSet = false;
    m_content_isValid = false;

    m__class_isSet = false;
    m__class_isValid = false;
}

void OAIGithubFile::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGithubFile::fromJsonObject(QJsonObject json) {

    m_content_isValid = ::OpenAPI::fromJsonValue(content, json[QString("content")]);
    m_content_isSet = !json[QString("content")].isNull() && m_content_isValid;

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;
}

QString OAIGithubFile::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGithubFile::asJsonObject() const {
    QJsonObject obj;
    if (content.isSet()) {
        obj.insert(QString("content"), ::OpenAPI::toJsonValue(content));
    }
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    return obj;
}

OAIGithubContent OAIGithubFile::getContent() const {
    return content;
}
void OAIGithubFile::setContent(const OAIGithubContent &content) {
    this->content = content;
    this->m_content_isSet = true;
}

bool OAIGithubFile::is_content_Set() const{
    return m_content_isSet;
}

bool OAIGithubFile::is_content_Valid() const{
    return m_content_isValid;
}

QString OAIGithubFile::getClass() const {
    return _class;
}
void OAIGithubFile::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAIGithubFile::is__class_Set() const{
    return m__class_isSet;
}

bool OAIGithubFile::is__class_Valid() const{
    return m__class_isValid;
}

bool OAIGithubFile::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (content.isSet()) {
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

bool OAIGithubFile::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
