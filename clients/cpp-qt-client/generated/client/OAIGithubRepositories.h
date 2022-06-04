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
 * OAIGithubRepositories.h
 *
 * 
 */

#ifndef OAIGithubRepositories_H
#define OAIGithubRepositories_H

#include <QJsonObject>

#include "OAIGithubRepositorieslinks.h"
#include "OAIGithubRepository.h"
#include <QList>
#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {
class OAIGithubRepositorieslinks;
class OAIGithubRepository;

class OAIGithubRepositories : public OAIObject {
public:
    OAIGithubRepositories();
    OAIGithubRepositories(QString json);
    ~OAIGithubRepositories() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getClass() const;
    void setClass(const QString &_class);
    bool is__class_Set() const;
    bool is__class_Valid() const;

    OAIGithubRepositorieslinks getLinks() const;
    void setLinks(const OAIGithubRepositorieslinks &_links);
    bool is__links_Set() const;
    bool is__links_Valid() const;

    QList<OAIGithubRepository> getItems() const;
    void setItems(const QList<OAIGithubRepository> &items);
    bool is_items_Set() const;
    bool is_items_Valid() const;

    qint32 getLastPage() const;
    void setLastPage(const qint32 &last_page);
    bool is_last_page_Set() const;
    bool is_last_page_Valid() const;

    qint32 getNextPage() const;
    void setNextPage(const qint32 &next_page);
    bool is_next_page_Set() const;
    bool is_next_page_Valid() const;

    qint32 getPageSize() const;
    void setPageSize(const qint32 &page_size);
    bool is_page_size_Set() const;
    bool is_page_size_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString _class;
    bool m__class_isSet;
    bool m__class_isValid;

    OAIGithubRepositorieslinks _links;
    bool m__links_isSet;
    bool m__links_isValid;

    QList<OAIGithubRepository> items;
    bool m_items_isSet;
    bool m_items_isValid;

    qint32 last_page;
    bool m_last_page_isSet;
    bool m_last_page_isValid;

    qint32 next_page;
    bool m_next_page_isSet;
    bool m_next_page_isValid;

    qint32 page_size;
    bool m_page_size_isSet;
    bool m_page_size_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAIGithubRepositories)

#endif // OAIGithubRepositories_H
