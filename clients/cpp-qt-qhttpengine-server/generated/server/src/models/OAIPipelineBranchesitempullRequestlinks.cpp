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

#include "OAIPipelineBranchesitempullRequestlinks.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIPipelineBranchesitempullRequestlinks::OAIPipelineBranchesitempullRequestlinks(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIPipelineBranchesitempullRequestlinks::OAIPipelineBranchesitempullRequestlinks() {
    this->initializeModel();
}

OAIPipelineBranchesitempullRequestlinks::~OAIPipelineBranchesitempullRequestlinks() {}

void OAIPipelineBranchesitempullRequestlinks::initializeModel() {

    m_self_isSet = false;
    m_self_isValid = false;

    m__class_isSet = false;
    m__class_isValid = false;
}

void OAIPipelineBranchesitempullRequestlinks::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIPipelineBranchesitempullRequestlinks::fromJsonObject(QJsonObject json) {

    m_self_isValid = ::OpenAPI::fromJsonValue(self, json[QString("self")]);
    m_self_isSet = !json[QString("self")].isNull() && m_self_isValid;

    m__class_isValid = ::OpenAPI::fromJsonValue(_class, json[QString("_class")]);
    m__class_isSet = !json[QString("_class")].isNull() && m__class_isValid;
}

QString OAIPipelineBranchesitempullRequestlinks::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIPipelineBranchesitempullRequestlinks::asJsonObject() const {
    QJsonObject obj;
    if (m_self_isSet) {
        obj.insert(QString("self"), ::OpenAPI::toJsonValue(self));
    }
    if (m__class_isSet) {
        obj.insert(QString("_class"), ::OpenAPI::toJsonValue(_class));
    }
    return obj;
}

QString OAIPipelineBranchesitempullRequestlinks::getSelf() const {
    return self;
}
void OAIPipelineBranchesitempullRequestlinks::setSelf(const QString &self) {
    this->self = self;
    this->m_self_isSet = true;
}

bool OAIPipelineBranchesitempullRequestlinks::is_self_Set() const{
    return m_self_isSet;
}

bool OAIPipelineBranchesitempullRequestlinks::is_self_Valid() const{
    return m_self_isValid;
}

QString OAIPipelineBranchesitempullRequestlinks::getClass() const {
    return _class;
}
void OAIPipelineBranchesitempullRequestlinks::setClass(const QString &_class) {
    this->_class = _class;
    this->m__class_isSet = true;
}

bool OAIPipelineBranchesitempullRequestlinks::is__class_Set() const{
    return m__class_isSet;
}

bool OAIPipelineBranchesitempullRequestlinks::is__class_Valid() const{
    return m__class_isValid;
}

bool OAIPipelineBranchesitempullRequestlinks::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_self_isSet) {
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

bool OAIPipelineBranchesitempullRequestlinks::isValid() const {
    // only required properties are required for the object to be considered valid
    return true;
}

} // namespace OpenAPI
