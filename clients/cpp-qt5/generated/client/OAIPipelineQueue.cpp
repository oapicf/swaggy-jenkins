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


#include "OAIPipelineQueue.h"

#include "OAIHelpers.h"

#include <QJsonDocument>
#include <QJsonArray>
#include <QObject>
#include <QDebug>

namespace OpenAPI {

OAIPipelineQueue::OAIPipelineQueue(QString json) {
    init();
    this->fromJson(json);
}

OAIPipelineQueue::OAIPipelineQueue() {
    init();
}

OAIPipelineQueue::~OAIPipelineQueue() {
    this->cleanup();
}

void
OAIPipelineQueue::init() {
}

void
OAIPipelineQueue::cleanup() {
}

OAIPipelineQueue*
OAIPipelineQueue::fromJson(QString json) {
    QByteArray array (json.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
    return this;
}

void
OAIPipelineQueue::fromJsonObject(QJsonObject pJson) {
}

QString
OAIPipelineQueue::asJson ()
{
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject
OAIPipelineQueue::asJsonObject() {
    QJsonObject obj;

    return obj;
}


bool
OAIPipelineQueue::isSet(){
    bool isObjectUpdated = false;
    do{
    }while(false);
    return isObjectUpdated;
}
}

