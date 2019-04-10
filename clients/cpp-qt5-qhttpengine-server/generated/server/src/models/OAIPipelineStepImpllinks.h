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
 * OAIPipelineStepImpllinks.h
 *
 * 
 */

#ifndef OAIPipelineStepImpllinks_H
#define OAIPipelineStepImpllinks_H

#include <QJsonObject>


#include "OAILink.h"
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIPipelineStepImpllinks: public OAIObject {
public:
    OAIPipelineStepImpllinks();
    OAIPipelineStepImpllinks(QString json);
    ~OAIPipelineStepImpllinks() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAILink getSelf() const;
    void setSelf(const OAILink &self);

    OAILink getActions() const;
    void setActions(const OAILink &actions);

    QString getClass() const;
    void setClass(const QString &_class);

    virtual bool isSet() const override;

private:
    OAILink self;
    bool m_self_isSet;

    OAILink actions;
    bool m_actions_isSet;

    QString _class;
    bool m__class_isSet;

};

}

#endif // OAIPipelineStepImpllinks_H
