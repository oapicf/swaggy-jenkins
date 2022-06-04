/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.0.0.
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
#include <memory>
#include <vector>
#include <boost/property_tree/ptree.hpp>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  GithubRepositories 
{
public:
    GithubRepositories() = default;
    explicit GithubRepositories(boost::property_tree::ptree const& pt);
    virtual ~GithubRepositories() = default;

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// GithubRepositories members

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<GithubRepositorieslinks> get_Links() const;
    void set_Links(std::shared_ptr<GithubRepositorieslinks> value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<GithubRepository>> getItems() const;
    void setItems(std::vector<std::shared_ptr<GithubRepository>> value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getLastPage() const;
    void setLastPage(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getNextPage() const;
    void setNextPage(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getPageSize() const;
    void setPageSize(int32_t value);

protected:
    //////////////////////////////////////
    // Override these for customization //
    //////////////////////////////////////

    virtual std::string toJsonString_internal(bool prettyJson = false);
    virtual void fromJsonString_internal(std::string const& jsonString);
    virtual boost::property_tree::ptree toPropertyTree_internal();
    virtual void fromPropertyTree_internal(boost::property_tree::ptree const& pt);


protected:
    std::string m__class = "";
    std::shared_ptr<GithubRepositorieslinks> m__links;
    std::vector<std::shared_ptr<GithubRepository>> m_Items;
    int32_t m_LastPage = 0;
    int32_t m_NextPage = 0;
    int32_t m_PageSize = 0;
};

std::vector<GithubRepositories> createGithubRepositoriesVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* GithubRepositories_H_ */
