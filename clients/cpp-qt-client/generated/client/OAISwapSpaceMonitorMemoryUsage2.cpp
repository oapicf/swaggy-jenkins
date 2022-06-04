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

#include "OAISwapSpaceMonitorMemoryUsage2.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAISwapSpaceMonitorMemoryUsage2::OAISwapSpaceMonitorMemoryUsage2(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAISwapSpaceMonitorMemoryUsage2::OAISwapSpaceMonitorMemoryUsage2() {
    this->initializeModel();
}

OAISwapSpaceMonitorMemoryUsage2::~OAISwapSpaceMonitorMemoryUsage2() {}

void OAISwapSpaceMonitorMemoryUsage2::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m_available_physical_memory_isSet = false;
    m_available_physical_memory_isValid = false;

    m_available_swap_space_isSet = false;
    m_available_swap_space_isValid = false;

    m_total_physical_memory_isSet = false;
    m_total_physical_memory_isValid = false;

    m_total_swap_space_isSet = false;
    m_total_swap_space_isValid = false;
}

void OAISwapSpaceMonitorMemoryUsage2::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAISwapSpaceMonitorMemoryUsage2::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m_available_physical_memory_isValid = ::OpenAPI::fromJsonValue(available_physical_memory, json[QString("availablePhysicalMemory")]);
    m_available_physical_memory_isSet = !json[QString("availablePhysicalMemory")].isNull() && m_available_physical_memory_isValid;

    m_available_swap_space_isValid = ::OpenAPI::fromJsonValue(available_swap_space, json[QString("availableSwapSpace")]);
    m_available_swap_space_isSet = !json[QString("availableSwapSpace")].isNull() && m_available_swap_space_isValid;

    m_total_physical_memory_isValid = ::OpenAPI::fromJsonValue(total_physical_memory, json[QString("totalPhysicalMemory")]);
    m_total_physical_memory_isSet = !json[QString("totalPhysicalMemory")].isNull() && m_total_physical_memory_isValid;

    m_total_swap_space_isValid = ::OpenAPI::fromJsonValue(total_swap_space, json[QString("totalSwapSpace")]);
    m_total_swap_space_isSet = !json[QString("totalSwapSpace")].isNull() && m_total_swap_space_isValid;
}

QString OAISwapSpaceMonitorMemoryUsage2::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAISwapSpaceMonitorMemoryUsage2::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    if (m_available_physical_memory_isSet) {
        obj.insert(QString("availablePhysicalMemory"), ::OpenAPI::toJsonValue(available_physical_memory));
    }
    if (m_available_swap_space_isSet) {
        obj.insert(QString("availableSwapSpace"), ::OpenAPI::toJsonValue(available_swap_space));
    }
    if (m_total_physical_memory_isSet) {
        obj.insert(QString("totalPhysicalMemory"), ::OpenAPI::toJsonValue(total_physical_memory));
    }
    if (m_total_swap_space_isSet) {
        obj.insert(QString("totalSwapSpace"), ::OpenAPI::toJsonValue(total_swap_space));
    }
    return obj;
}

QString OAISwapSpaceMonitorMemoryUsage2::getClass() const {
    return _class;
}
void OAISwapSpaceMonitorMemoryUsage2::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAISwapSpaceMonitorMemoryUsage2::is__class_Set() const{
    return m__class_isSet;
}

bool OAISwapSpaceMonitorMemoryUsage2::is__class_Valid() const{
    return m__class_isValid;
}

qint32 OAISwapSpaceMonitorMemoryUsage2::getAvailablePhysicalMemory() const {
    return available_physical_memory;
}
void OAISwapSpaceMonitorMemoryUsage2::setAvailablePhysicalMemory(const qint32 &available_physical_memory) {
    this->available_physical_memory = available_physical_memory;
    this->m_available_physical_memory_isSet = true;
}

bool OAISwapSpaceMonitorMemoryUsage2::is_available_physical_memory_Set() const{
    return m_available_physical_memory_isSet;
}

bool OAISwapSpaceMonitorMemoryUsage2::is_available_physical_memory_Valid() const{
    return m_available_physical_memory_isValid;
}

qint32 OAISwapSpaceMonitorMemoryUsage2::getAvailableSwapSpace() const {
    return available_swap_space;
}
void OAISwapSpaceMonitorMemoryUsage2::setAvailableSwapSpace(const qint32 &available_swap_space) {
    this->available_swap_space = available_swap_space;
    this->m_available_swap_space_isSet = true;
}

bool OAISwapSpaceMonitorMemoryUsage2::is_available_swap_space_Set() const{
    return m_available_swap_space_isSet;
}

bool OAISwapSpaceMonitorMemoryUsage2::is_available_swap_space_Valid() const{
    return m_available_swap_space_isValid;
}

qint32 OAISwapSpaceMonitorMemoryUsage2::getTotalPhysicalMemory() const {
    return total_physical_memory;
}
void OAISwapSpaceMonitorMemoryUsage2::setTotalPhysicalMemory(const qint32 &total_physical_memory) {
    this->total_physical_memory = total_physical_memory;
    this->m_total_physical_memory_isSet = true;
}

bool OAISwapSpaceMonitorMemoryUsage2::is_total_physical_memory_Set() const{
    return m_total_physical_memory_isSet;
}

bool OAISwapSpaceMonitorMemoryUsage2::is_total_physical_memory_Valid() const{
    return m_total_physical_memory_isValid;
}

qint32 OAISwapSpaceMonitorMemoryUsage2::getTotalSwapSpace() const {
    return total_swap_space;
}
void OAISwapSpaceMonitorMemoryUsage2::setTotalSwapSpace(const qint32 &total_swap_space) {
    this->total_swap_space = total_swap_space;
    this->m_total_swap_space_isSet = true;
}

bool OAISwapSpaceMonitorMemoryUsage2::is_total_swap_space_Set() const{
    return m_total_swap_space_isSet;
}

bool OAISwapSpaceMonitorMemoryUsage2::is_total_swap_space_Valid() const{
    return m_total_swap_space_isValid;
}

bool OAISwapSpaceMonitorMemoryUsage2::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_available_physical_memory_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_available_swap_space_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_total_physical_memory_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_total_swap_space_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAISwapSpaceMonitorMemoryUsage2::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
