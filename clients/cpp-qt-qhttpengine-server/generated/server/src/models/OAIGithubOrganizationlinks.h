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

/*
 * OAIGithubOrganizationlinks.h
 *
 * 
 */

#ifndef OAIGithubOrganizationlinks_H
#define OAIGithubOrganizationlinks_H

#include <QJsonObject>

#include "OAILink.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIGithubOrganizationlinks : public OAIObject {
public:
    OAIGithubOrganizationlinks();
    OAIGithubOrganizationlinks(QString json);
    ~OAIGithubOrganizationlinks() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAILink getRepositories() const;
    void setRepositories(const OAILink &repositories);
    bool is_repositories_Set() const;
    bool is_repositories_Valid() const;

    OAILink getSelf() const;
    void setSelf(const OAILink &self);
    bool is_self_Set() const;
    bool is_self_Valid() const;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAILink repositories;
    bool m_repositories_isSet;
    bool m_repositories_isValid;

    OAILink self;
    bool m_self_isSet;
    bool m_self_isValid;

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIGithubOrganizationlinks)

#endif // OAIGithubOrganizationlinks_H
