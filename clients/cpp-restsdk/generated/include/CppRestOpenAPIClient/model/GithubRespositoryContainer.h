/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * GithubRespositoryContainer.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_GithubRespositoryContainer_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_GithubRespositoryContainer_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include "CppRestOpenAPIClient/model/GithubRespositoryContainerlinks.h"
#include "CppRestOpenAPIClient/model/GithubRepositories.h"
#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {

class GithubRespositoryContainerlinks;
class GithubRepositories;

/// <summary>
/// 
/// </summary>
class  GithubRespositoryContainer
    : public ModelBase
{
public:
    GithubRespositoryContainer();
    virtual ~GithubRespositoryContainer();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// GithubRespositoryContainer members

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getClass() const;
    bool r_classIsSet() const;
    void unset_class();

    void setClass(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<GithubRespositoryContainerlinks> getLinks() const;
    bool linksIsSet() const;
    void unset_links();

    void setLinks(const std::shared_ptr<GithubRespositoryContainerlinks>& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<GithubRepositories> getRepositories() const;
    bool repositoriesIsSet() const;
    void unsetRepositories();

    void setRepositories(const std::shared_ptr<GithubRepositories>& value);


protected:
    utility::string_t m__class;
    bool m__classIsSet;
    std::shared_ptr<GithubRespositoryContainerlinks> m__links;
    bool m__linksIsSet;
    std::shared_ptr<GithubRepositories> m_Repositories;
    bool m_RepositoriesIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_GithubRespositoryContainer_H_ */
