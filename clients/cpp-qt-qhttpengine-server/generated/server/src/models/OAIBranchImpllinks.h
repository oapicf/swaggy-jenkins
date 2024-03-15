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
 * OAIBranchImpllinks.h
 *
 * 
 */

#ifndef OAIBranchImpllinks_H
#define OAIBranchImpllinks_H

#include <QJsonObject>

#include "OAILink.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIBranchImpllinks : public OAIObject {
public:
    OAIBranchImpllinks();
    OAIBranchImpllinks(QString json);
    ~OAIBranchImpllinks() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAILink getSelf() const;
    void setSelf(const OAILink &self);
    bool is_self_Set() const;
    bool is_self_Valid() const;

    OAILink getActions() const;
    void setActions(const OAILink &actions);
    bool is_actions_Set() const;
    bool is_actions_Valid() const;

    OAILink getRuns() const;
    void setRuns(const OAILink &runs);
    bool is_runs_Set() const;
    bool is_runs_Valid() const;

    OAILink getQueue() const;
    void setQueue(const OAILink &queue);
    bool is_queue_Set() const;
    bool is_queue_Valid() const;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAILink self;
    bool m_self_isSet;
    bool m_self_isValid;

    OAILink actions;
    bool m_actions_isSet;
    bool m_actions_isValid;

    OAILink runs;
    bool m_runs_isSet;
    bool m_runs_isValid;

    OAILink queue;
    bool m_queue_isSet;
    bool m_queue_isValid;

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIBranchImpllinks)

#endif // OAIBranchImpllinks_H
