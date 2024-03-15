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
#include "helpers.h"

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

    GithubRepositories(const GithubRepositories& other) = default; // copy constructor
    GithubRepositories(GithubRepositories&& other) noexcept = default; // move constructor

    GithubRepositories& operator=(const GithubRepositories& other) = default; // copy assignment
    GithubRepositories& operator=(GithubRepositories&& other) noexcept = default; // move assignment

    std::string toJsonString(bool prettyJson = false) const;
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree() const;
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
    GithubRepositorieslinks get_Links() const;
    void set_Links(GithubRepositorieslinks value);

    /// <summary>
    /// 
    /// </summary>
    std::vector<GithubRepository> getItems() const;
    void setItems(std::vector<GithubRepository> value);

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
    std::string m__class = "";
    GithubRepositorieslinks m__links;
    std::vector<GithubRepository> m_Items;
    int32_t m_LastPage = 0;
    int32_t m_NextPage = 0;
    int32_t m_PageSize = 0;
};

std::vector<GithubRepositories> createGithubRepositoriesVectorFromJsonString(const std::string& json);

template<>
inline boost::property_tree::ptree toPt<GithubRepositories>(const GithubRepositories& val) {
    return val.toPropertyTree();
}

template<>
inline GithubRepositories fromPt<GithubRepositories>(const boost::property_tree::ptree& pt) {
    GithubRepositories ret;
    ret.fromPropertyTree(pt);
    return ret;
}

}
}
}
}

#endif /* GithubRepositories_H_ */
