/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


#include "OAIOrganisations.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIOrganisations::OAIOrganisations(QString json) {
    init();
    this->fromJson(json);
}

OAIOrganisations::OAIOrganisations() {
    init();
}

OAIOrganisations::~OAIOrganisations() {
    this->cleanup();
}

void
OAIOrganisations::init() {
}

void
OAIOrganisations::cleanup() {
}

OAIOrganisations*
OAIOrganisations::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIOrganisations::fromJsonObject(QJsonObject pJson) {
}

QString
OAIOrganisations::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIOrganisations::asJsonObject() {
    QJsonObject obj;

    return obj;
}


bool
OAIOrganisations::isSet(){
    bool isObjectUpdated = false;
    do{
    }while(false);
    return isObjectUpdated;
}
}

