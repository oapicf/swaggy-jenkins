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

#include "OAIHudsonassignedLabels.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIHudsonassignedLabels::OAIHudsonassignedLabels(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIHudsonassignedLabels::OAIHudsonassignedLabels() {
    this->initializeModel();
}

OAIHudsonassignedLabels::~OAIHudsonassignedLabels() {}

void OAIHudsonassignedLabels::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;
}

void OAIHudsonassignedLabels::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIHudsonassignedLabels::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;
}

QString OAIHudsonassignedLabels::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIHudsonassignedLabels::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    return obj;
}

QString OAIHudsonassignedLabels::getClass() const {
    return m__class;
}
void OAIHudsonassignedLabels::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIHudsonassignedLabels::is__class_Set() const{
    return m__class_isSet;
}

bool OAIHudsonassignedLabels::is__class_Valid() const{
    return m__class_isValid;
}

bool OAIHudsonassignedLabels::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIHudsonassignedLabels::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
