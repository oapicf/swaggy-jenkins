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
 * OAIPipelineBranchesitempullRequest.h
 *
 * 
 */

#ifndef OAIPipelineBranchesitempullRequest_H
#define OAIPipelineBranchesitempullRequest_H

#include <QJsonObject>

#include "OAIPipelineBranchesitempullRequestlinks.h"
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAIPipelineBranchesitempullRequest : public OAIObject {
public:
    OAIPipelineBranchesitempullRequest();
    OAIPipelineBranchesitempullRequest(QString json);
    ~OAIPipelineBranchesitempullRequest() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    OAIPipelineBranchesitempullRequestlinks getLinks() const;
    void setLinks(const OAIPipelineBranchesitempullRequestlinks &_links);
    bool is__links_Set() const;
    bool is__links_Valid() const;

    QString getAuthor() const;
    void setAuthor(const QString &author);
    bool is_author_Set() const;
    bool is_author_Valid() const;

    QString getId() const;
    void setId(const QString &id);
    bool is_id_Set() const;
    bool is_id_Valid() const;

    QString getTitle() const;
    void setTitle(const QString &title);
    bool is_title_Set() const;
    bool is_title_Valid() const;

    QString getUrl() const;
    void setUrl(const QString &url);
    bool is_url_Set() const;
    bool is_url_Valid() const;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    OAIPipelineBranchesitempullRequestlinks _links;
    bool m__links_isSet;
    bool m__links_isValid;

    QString author;
    bool m_author_isSet;
    bool m_author_isValid;

    QString id;
    bool m_id_isSet;
    bool m_id_isValid;

    QString title;
    bool m_title_isSet;
    bool m_title_isValid;

    QString url;
    bool m_url_isSet;
    bool m_url_isValid;

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIPipelineBranchesitempullRequest)

#endif // OAIPipelineBranchesitempullRequest_H
