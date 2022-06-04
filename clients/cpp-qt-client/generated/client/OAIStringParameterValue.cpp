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

#include "OAIStringParameterValue.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIStringParameterValue::OAIStringParameterValue(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIStringParameterValue::OAIStringParameterValue() {
    this->initializeModel();
}

OAIStringParameterValue::~OAIStringParameterValue() {}

void OAIStringParameterValue::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;

    m_value_isSet = false;
    m_value_isValid = false;
}

void OAIStringParameterValue::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIStringParameterValue::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_value_isValid = ::OpenAPI::fromJsonValue(value, json[QString("value")]);
    m_value_isSet = !json[QString("value")].isNull() && m_value_isValid;
}

QString OAIStringParameterValue::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIStringParameterValue::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(name));
    }
    if (m_value_isSet) {
        obj.insert(QString("value"), ::OpenAPI::toJsonValue(value));
    }
    return obj;
}

QString OAIStringParameterValue::getClass() const {
    return _class;
}
void OAIStringParameterValue::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAIStringParameterValue::is__class_Set() const{
    return m__class_isSet;
}

bool OAIStringParameterValue::is__class_Valid() const{
    return m__class_isValid;
}

QString OAIStringParameterValue::getName() const {
    return name;
}
void OAIStringParameterValue::setName(const QString &name) {
    this->name = name;
    this->m_name_isSet = true;
}

bool OAIStringParameterValue::is_name_Set() const{
    return m_name_isSet;
}

bool OAIStringParameterValue::is_name_Valid() const{
    return m_name_isValid;
}

QString OAIStringParameterValue::getValue() const {
    return value;
}
void OAIStringParameterValue::setValue(const QString &value) {
    this->value = value;
    this->m_value_isSet = true;
}

bool OAIStringParameterValue::is_value_Set() const{
    return m_value_isSet;
}

bool OAIStringParameterValue::is_value_Valid() const{
    return m_value_isValid;
}

bool OAIStringParameterValue::isSet() const {
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

        if (m_value_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIStringParameterValue::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
