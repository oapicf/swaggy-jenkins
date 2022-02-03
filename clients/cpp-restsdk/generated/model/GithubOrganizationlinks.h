/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * GithubOrganizationlinks.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_GithubOrganizationlinks_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_GithubOrganizationlinks_H_


#include "ModelBase.h"

#include "model/Link.h"
#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  GithubOrganizationlinks
    : public ModelBase
{
public:
    GithubOrganizationlinks();
    virtual ~GithubOrganizationlinks();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// GithubOrganizationlinks members

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Link> getRepositories() const;
    bool repositoriesIsSet() const;
    void unsetRepositories();

    void setRepositories(const std::shared_ptr<Link>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Link> getSelf() const;
    bool selfIsSet() const;
    void unsetSelf();

    void setSelf(const std::shared_ptr<Link>& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getClass() const;
    bool r_classIsSet() const;
    void unset_class();

    void setClass(const utility::string_t& value);


protected:
    std::shared_ptr<Link> m_Repositories;
    bool m_RepositoriesIsSet;
    std::shared_ptr<Link> m_Self;
    bool m_SelfIsSet;
    utility::string_t m__class;
    bool m__classIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_GithubOrganizationlinks_H_ */
