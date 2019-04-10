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

/*
 * OAIPipelines.h
 *
 * 
 */

#ifndef OAIPipelines_H_
#define OAIPipelines_H_

#include <QJsonObject>


#include "OAIOAIPipeline.h"
#include <QList>

#include "OAIObject.h"

namespace OpenAPI {

class OAIPipelines: public OAIObject {
public:
    OAIPipelines();
    OAIPipelines(QString json);
    ~OAIPipelines();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIPipelines* fromJson(QString jsonString) override;


    virtual bool isSet() override;

private:
};

}

#endif /* OAIPipelines_H_ */
