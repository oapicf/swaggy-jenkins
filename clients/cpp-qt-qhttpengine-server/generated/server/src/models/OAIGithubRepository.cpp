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

#include "OAIGithubRepository.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIGithubRepository::OAIGithubRepository(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIGithubRepository::OAIGithubRepository() {
    this->initializeModel();
}

OAIGithubRepository::~OAIGithubRepository() {}

void OAIGithubRepository::initializeModel() {

    m__class_isSet = false;
    m__class_isValid = false;

    m__links_isSet = false;
    m__links_isValid = false;

    m_default_branch_isSet = false;
    m_default_branch_isValid = false;

    m_description_isSet = false;
    m_description_isValid = false;

    m_name_isSet = false;
    m_name_isValid = false;

    m_permissions_isSet = false;
    m_permissions_isValid = false;

    m_r_private_isSet = false;
    m_r_private_isValid = false;

    m_full_name_isSet = false;
    m_full_name_isValid = false;
}

void OAIGithubRepository::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIGithubRepository::fromJsonObject(QJsonObject json) {

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;

    m__links_isValid = ::OpenAPI::fromJsonValue(_links, json[QString("_links")]);
    m__links_isSet = !json[QString("_links")].isNull() && m__links_isValid;

    m_default_branch_isValid = ::OpenAPI::fromJsonValue(default_branch, json[QString("defaultBranch")]);
    m_default_branch_isSet = !json[QString("defaultBranch")].isNull() && m_default_branch_isValid;

    m_description_isValid = ::OpenAPI::fromJsonValue(description, json[QString("description")]);
    m_description_isSet = !json[QString("description")].isNull() && m_description_isValid;

    m_name_isValid = ::OpenAPI::fromJsonValue(name, json[QString("name")]);
    m_name_isSet = !json[QString("name")].isNull() && m_name_isValid;

    m_permissions_isValid = ::OpenAPI::fromJsonValue(permissions, json[QString("permissions")]);
    m_permissions_isSet = !json[QString("permissions")].isNull() && m_permissions_isValid;

    m_r_private_isValid = ::OpenAPI::fromJsonValue(r_private, json[QString("private")]);
    m_r_private_isSet = !json[QString("private")].isNull() && m_r_private_isValid;

    m_full_name_isValid = ::OpenAPI::fromJsonValue(full_name, json[QString("fullName")]);
    m_full_name_isSet = !json[QString("fullName")].isNull() && m_full_name_isValid;
}

QString OAIGithubRepository::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIGithubRepository::asJsonObject() const {
    QJsonObject obj;
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    if (_links.isSet()) {
        obj.insert(QString("_links"), ::OpenAPI::toJsonValue(_links));
    }
    if (m_default_branch_isSet) {
        obj.insert(QString("defaultBranch"), ::OpenAPI::toJsonValue(default_branch));
    }
    if (m_description_isSet) {
        obj.insert(QString("description"), ::OpenAPI::toJsonValue(description));
    }
    if (m_name_isSet) {
        obj.insert(QString("name"), ::OpenAPI::toJsonValue(name));
    }
    if (permissions.isSet()) {
        obj.insert(QString("permissions"), ::OpenAPI::toJsonValue(permissions));
    }
    if (m_r_private_isSet) {
        obj.insert(QString("private"), ::OpenAPI::toJsonValue(r_private));
    }
    if (m_full_name_isSet) {
        obj.insert(QString("fullName"), ::OpenAPI::toJsonValue(full_name));
    }
    return obj;
}

QString OAIGithubRepository::getClass() const {
    return _class;
}
void OAIGithubRepository::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAIGithubRepository::is__class_Set() const{
    return m__class_isSet;
}

bool OAIGithubRepository::is__class_Valid() const{
    return m__class_isValid;
}

OAIGithubRepositorylinks OAIGithubRepository::getLinks() const {
    return _links;
}
void OAIGithubRepository::setLinks(const OAIGithubRepositorylinks &_links) {
    this->_links = _links;
    this->m__links_isSet = true;
}

bool OAIGithubRepository::is__links_Set() const{
    return m__links_isSet;
}

bool OAIGithubRepository::is__links_Valid() const{
    return m__links_isValid;
}

QString OAIGithubRepository::getDefaultBranch() const {
    return default_branch;
}
void OAIGithubRepository::setDefaultBranch(const QString &default_branch) {
    this->default_branch = default_branch;
    this->m_default_branch_isSet = true;
}

bool OAIGithubRepository::is_default_branch_Set() const{
    return m_default_branch_isSet;
}

bool OAIGithubRepository::is_default_branch_Valid() const{
    return m_default_branch_isValid;
}

QString OAIGithubRepository::getDescription() const {
    return description;
}
void OAIGithubRepository::setDescription(const QString &description) {
    this->description = description;
    this->m_description_isSet = true;
}

bool OAIGithubRepository::is_description_Set() const{
    return m_description_isSet;
}

bool OAIGithubRepository::is_description_Valid() const{
    return m_description_isValid;
}

QString OAIGithubRepository::getName() const {
    return name;
}
void OAIGithubRepository::setName(const QString &name) {
    this->name = name;
    this->m_name_isSet = true;
}

bool OAIGithubRepository::is_name_Set() const{
    return m_name_isSet;
}

bool OAIGithubRepository::is_name_Valid() const{
    return m_name_isValid;
}

OAIGithubRepositorypermissions OAIGithubRepository::getPermissions() const {
    return permissions;
}
void OAIGithubRepository::setPermissions(const OAIGithubRepositorypermissions &permissions) {
    this->permissions = permissions;
    this->m_permissions_isSet = true;
}

bool OAIGithubRepository::is_permissions_Set() const{
    return m_permissions_isSet;
}

bool OAIGithubRepository::is_permissions_Valid() const{
    return m_permissions_isValid;
}

bool OAIGithubRepository::isRPrivate() const {
    return r_private;
}
void OAIGithubRepository::setRPrivate(const bool &r_private) {
    this->r_private = r_private;
    this->m_r_private_isSet = true;
}

bool OAIGithubRepository::is_r_private_Set() const{
    return m_r_private_isSet;
}

bool OAIGithubRepository::is_r_private_Valid() const{
    return m_r_private_isValid;
}

QString OAIGithubRepository::getFullName() const {
    return full_name;
}
void OAIGithubRepository::setFullName(const QString &full_name) {
    this->full_name = full_name;
    this->m_full_name_isSet = true;
}

bool OAIGithubRepository::is_full_name_Set() const{
    return m_full_name_isSet;
}

bool OAIGithubRepository::is_full_name_Valid() const{
    return m_full_name_isValid;
}

bool OAIGithubRepository::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m__class_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (_links.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_default_branch_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_description_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_name_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (permissions.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_r_private_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_full_name_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIGithubRepository::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
