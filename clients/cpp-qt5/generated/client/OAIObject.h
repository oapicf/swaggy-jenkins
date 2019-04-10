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

#ifndef _OAI_OBJECT_H_
#define _OAI_OBJECT_H_

#include <QJsonObject>
#include <QJsonDocument>

namespace OpenAPI {

class OAIObject {
  public:
    virtual QJsonObject asJsonObject() {
        if(jObj != nullptr){
            return *jObj;
        }
        return QJsonObject();
    }

    OAIObject() {
        jObj = nullptr;
    }

    virtual ~OAIObject() {
        if(jObj != nullptr){
            delete jObj;
        }
    }

    virtual OAIObject* fromJson(QString jsonString) {
        QJsonDocument doc = QJsonDocument::fromJson(jsonString.toUtf8());
        auto ret = new OAIObject();
        ret->fromJsonObject(doc.object());
        return ret;
    }

    virtual void fromJsonObject(QJsonObject json) {
        if(jObj != nullptr)
        {
            delete jObj;
        }
        jObj = new QJsonObject(json);
    }

    virtual QString asJson() {
        if(jObj != nullptr)
        {
            QJsonDocument doc(*jObj);
            return doc.toJson(QJsonDocument::Compact);
        }
        return QString();
    }

    virtual bool isSet() {
        return false;
    }
private :
   QJsonObject *jObj;
};

}

#endif /* _OAI_OBJECT_H_ */
