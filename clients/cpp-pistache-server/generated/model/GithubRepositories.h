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
 * GithubRepositories.h
 *
 * 
 */

#ifndef GithubRepositories_H_
#define GithubRepositories_H_


#include "GithubRepositorieslinks.h"
#include <string>
#include "GithubRepository.h"
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  GithubRepositories
{
public:
    GithubRepositories();
    virtual ~GithubRepositories() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    /// <summary>
    /// Helper overload for validate. Used when one model stores another model and calls it's validate.
    /// Not meant to be called outside that case.
    /// </summary>
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;

    bool operator==(const GithubRepositories& rhs) const;
    bool operator!=(const GithubRepositories& rhs) const;

    /////////////////////////////////////////////
    /// GithubRepositories members

    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::GithubRepositorieslinks getLinks() const;
    void setLinks(org::openapitools::server::model::GithubRepositorieslinks const& value);
    bool linksIsSet() const;
    void unset_links();
    /// <summary>
    /// 
    /// </summary>
    std::vector<org::openapitools::server::model::GithubRepository> getItems() const;
    void setItems(std::vector<org::openapitools::server::model::GithubRepository> const& value);
    bool itemsIsSet() const;
    void unsetItems();
    /// <summary>
    /// 
    /// </summary>
    int32_t getLastPage() const;
    void setLastPage(int32_t const value);
    bool lastPageIsSet() const;
    void unsetLastPage();
    /// <summary>
    /// 
    /// </summary>
    int32_t getNextPage() const;
    void setNextPage(int32_t const value);
    bool nextPageIsSet() const;
    void unsetNextPage();
    /// <summary>
    /// 
    /// </summary>
    int32_t getPageSize() const;
    void setPageSize(int32_t const value);
    bool pageSizeIsSet() const;
    void unsetPageSize();

    friend  void to_json(nlohmann::json& j, const GithubRepositories& o);
    friend  void from_json(const nlohmann::json& j, GithubRepositories& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    org::openapitools::server::model::GithubRepositorieslinks m__links;
    bool m__linksIsSet;
    std::vector<org::openapitools::server::model::GithubRepository> m_Items;
    bool m_ItemsIsSet;
    int32_t m_LastPage;
    bool m_LastPageIsSet;
    int32_t m_NextPage;
    bool m_NextPageIsSet;
    int32_t m_PageSize;
    bool m_PageSizeIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* GithubRepositories_H_ */
