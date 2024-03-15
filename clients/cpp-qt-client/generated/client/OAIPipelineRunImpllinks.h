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

/*
 * OAIPipelineRunImpllinks.h
 *
 * 
 */

#ifndef OAIPipelineRunImpllinks_H
#define OAIPipelineRunImpllinks_H

#include <QJsonObject>

#include "OAILink.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAILink;

class OAIPipelineRunImpllinks : public OAIObject {
public:
    OAIPipelineRunImpllinks();
    OAIPipelineRunImpllinks(QString json);
    ~OAIPipelineRunImpllinks() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAILink getNodes() const;
    void setNodes(const OAILink &nodes);
    bool is_nodes_Set() const;
    bool is_nodes_Valid() const;

    OAILink getLog() const;
    void setLog(const OAILink &log);
    bool is_log_Set() const;
    bool is_log_Valid() const;

    OAILink getSelf() const;
    void setSelf(const OAILink &self);
    bool is_self_Set() const;
    bool is_self_Valid() const;

    OAILink getActions() const;
    void setActions(const OAILink &actions);
    bool is_actions_Set() const;
    bool is_actions_Valid() const;

    OAILink getSteps() const;
    void setSteps(const OAILink &steps);
    bool is_steps_Set() const;
    bool is_steps_Valid() const;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAILink m_nodes;
    bool m_nodes_isSet;
    bool m_nodes_isValid;

    OAILink m_log;
    bool m_log_isSet;
    bool m_log_isValid;

    OAILink m_self;
    bool m_self_isSet;
    bool m_self_isValid;

    OAILink m_actions;
    bool m_actions_isSet;
    bool m_actions_isValid;

    OAILink m_steps;
    bool m_steps_isSet;
    bool m_steps_isValid;

    QString m__class;
    bool m__class_isSet;
    bool m__class_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIPipelineRunImpllinks)

#endif // OAIPipelineRunImpllinks_H
