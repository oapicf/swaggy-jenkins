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
 * OAIGithubRepository.h
 *
 * 
 */

#ifndef OAIGithubRepository_H
#define OAIGithubRepository_H

#include <QJsonObject>


#include "OAIGithubRepositorylinks.h"
#include "OAIGithubRepositorypermissions.h"
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIGithubRepository: public OAIObject {
public:
    OAIGithubRepository();
    OAIGithubRepository(QString json);
    ~OAIGithubRepository() override;
    void init();

    QString asJson () const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);

    OAIGithubRepositorylinks getLinks() const;
    void setLinks(const OAIGithubRepositorylinks &_links);

    QString getDefaultBranch() const;
    void setDefaultBranch(const QString &default_branch);

    QString getDescription() const;
    void setDescription(const QString &description);

    QString getName() const;
    void setName(const QString &name);

    OAIGithubRepositorypermissions getPermissions() const;
    void setPermissions(const OAIGithubRepositorypermissions &permissions);

    bool isPrivate() const;
    void setPrivate(const bool &_private);

    QString getFullName() const;
    void setFullName(const QString &full_name);

    virtual bool isSet() const override;

private:
    QString _class;
    bool m__class_isSet;

    OAIGithubRepositorylinks _links;
    bool m__links_isSet;

    QString default_branch;
    bool m_default_branch_isSet;

    QString description;
    bool m_description_isSet;

    QString name;
    bool m_name_isSet;

    OAIGithubRepositorypermissions permissions;
    bool m_permissions_isSet;

    bool _private;
    bool m__private_isSet;

    QString full_name;
    bool m_full_name_isSet;

};

}

#endif // OAIGithubRepository_H
