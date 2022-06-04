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

#include "OAIAllView.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIAllView::OAIAllView(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIAllView::OAIAllView() {
    this->initializeModel();
}

OAIAllView::~OAIAllView() {}

void OAIAllView::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;

    m_url_isSet = false;
    m_url_isValid = false;
}

void OAIAllView::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIAllView::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_url_isValid = ::OpenAPI::fromJsonValue(url, json[QString("url")]);
    m_url_isSet = !json[QString("url")].isNull() && m_url_isValid;
}

QString OAIAllView::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIAllView::asJsonObject() const {
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
    return obj;
}

QString OAIAllView::getClass() const {
    return _class;
}
void OAIAllView::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAIAllView::is__class_Set() const{
    return m__class_isSet;
}

bool OAIAllView::is__class_Valid() const{
    return m__class_isValid;
}

QString OAIAllView::getName() const {
    return name;
}
void OAIAllView::setName(const QString &name) {
    this->name = name;
    this->m_name_isSet = true;
}

bool OAIAllView::is_name_Set() const{
    return m_name_isSet;
}

bool OAIAllView::is_name_Valid() const{
    return m_name_isValid;
}

QString OAIAllView::getUrl() const {
    return url;
}
void OAIAllView::setUrl(const QString &url) {
    this->url = url;
    this->m_url_isSet = true;
}

bool OAIAllView::is_url_Set() const{
    return m_url_isSet;
}

bool OAIAllView::is_url_Valid() const{
    return m_url_isValid;
}

bool OAIAllView::isSet() const {
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
    } while (false);
    return isObjectUpdated;
}

bool OAIAllView::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
