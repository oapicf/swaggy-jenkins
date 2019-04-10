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
 * OAIPipelineRunNodes.h
 *
 * 
 */

#ifndef OAIPipelineRunNodes_H
#define OAIPipelineRunNodes_H

#include <QJsonObject>


#include "OAIPipelineRunNode.h"
#include <QList>

#include "OAIObject.h"

namespace OpenAPI {

class OAIPipelineRunNodes: public OAIObject {
public:
    OAIPipelineRunNodes();
    OAIPipelineRunNodes(QString json);
    ~OAIPipelineRunNodes() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    virtual bool isSet() const override;

private:
};

}

#endif // OAIPipelineRunNodes_H
