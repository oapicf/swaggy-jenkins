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

#include "OAICauseAction.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAICauseAction::OAICauseAction(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAICauseAction::OAICauseAction() {
    this->initializeModel();
}

OAICauseAction::~OAICauseAction() {}

void OAICauseAction::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_causes_isSet = false;
    m_causes_isValid = false;
}

void OAICauseAction::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAICauseAction::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_causes_isValid = ::OpenAPI::fromJsonValue(causes, json[QString("causes")]);
    m_causes_isSet = !json[QString("causes")].isNull() && m_causes_isValid;
}

QString OAICauseAction::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAICauseAction::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    if (causes.size() > 0) {
        obj.insert(QString("causes"), ::OpenAPI::toJsonValue(causes));
    }
    return obj;
}

QString OAICauseAction::getClass() const {
    return _class;
}
void OAICauseAction::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAICauseAction::is__class_Set() const{
    return m__class_isSet;
}

bool OAICauseAction::is__class_Valid() const{
    return m__class_isValid;
}

QList<OAICauseUserIdCause> OAICauseAction::getCauses() const {
    return causes;
}
void OAICauseAction::setCauses(const QList<OAICauseUserIdCause> &causes) {
    this->causes = causes;
    this->m_causes_isSet = true;
}

bool OAICauseAction::is_causes_Set() const{
    return m_causes_isSet;
}

bool OAICauseAction::is_causes_Valid() const{
    return m_causes_isValid;
}

bool OAICauseAction::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (causes.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAICauseAction::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
