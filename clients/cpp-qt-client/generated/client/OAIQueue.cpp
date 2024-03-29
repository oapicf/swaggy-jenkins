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

#include "OAIQueue.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIQueue::OAIQueue(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIQueue::OAIQueue() {
    this->initializeModel();
}

OAIQueue::~OAIQueue() {}

void OAIQueue::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_items_isSet = false;
    m_items_isValid = false;
}

void OAIQueue::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIQueue::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(m__class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_items_isValid = ::OpenAPI::fromJsonValue(m_items, json[QString("items")]);
    m_items_isSet = !json[QString("items")].isNull() && m_items_isValid;
}

QString OAIQueue::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIQueue::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(m__class));
    }
    if (m_items.size() > 0) {
        obj.insert(QString("items"), ::OpenAPI::toJsonValue(m_items));
    }
    return obj;
}

QString OAIQueue::getClass() const {
    return m__class;
}
void OAIQueue::setClass(const QString &_class) {
    m__class = _class;
    m__class_isSet = true;
}

bool OAIQueue::is__class_Set() const{
    return m__class_isSet;
}

bool OAIQueue::is__class_Valid() const{
    return m__class_isValid;
}

QList<OAIQueueBlockedItem> OAIQueue::getItems() const {
    return m_items;
}
void OAIQueue::setItems(const QList<OAIQueueBlockedItem> &items) {
    m_items = items;
    m_items_isSet = true;
}

bool OAIQueue::is_items_Set() const{
    return m_items_isSet;
}

bool OAIQueue::is_items_Valid() const{
    return m_items_isValid;
}

bool OAIQueue::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_items.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIQueue::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
