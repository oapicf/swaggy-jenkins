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

#ifndef GithubOrganizationlinks_H_
#define GithubOrganizationlinks_H_



#include <string>
#include "Link.h"
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
class  GithubOrganizationlinks 
{
public:
    GithubOrganizationlinks() = default;
    explicit GithubOrganizationlinks(boost::property_tree::ptree const& pt);
    virtual ~GithubOrganizationlinks() = default;

    std::string toJsonString(bool prettyJson = false);
    void fromJsonString(std::string const& jsonString);
    boost::property_tree::ptree toPropertyTree();
    void fromPropertyTree(boost::property_tree::ptree const& pt);

    /////////////////////////////////////////////
    /// GithubOrganizationlinks members

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Link> getRepositories() const;
    void setRepositories(std::shared_ptr<Link> value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Link> getSelf() const;
    void setSelf(std::shared_ptr<Link> value);

    /// <summary>
    /// 
    /// </summary>
    std::string get_Class() const;
    void set_Class(std::string value);

protected:
    //////////////////////////////////////
    // Override these for customization //
    //////////////////////////////////////

    virtual std::string toJsonString_internal(bool prettyJson = false);
    virtual void fromJsonString_internal(std::string const& jsonString);
    virtual boost::property_tree::ptree toPropertyTree_internal();
    virtual void fromPropertyTree_internal(boost::property_tree::ptree const& pt);


protected:
    std::shared_ptr<Link> m_Repositories;
    std::shared_ptr<Link> m_Self;
    std::string m__class = "";
};

std::vector<GithubOrganizationlinks> createGithubOrganizationlinksVectorFromJsonString(const std::string& json);

}
}
}
}

#endif /* GithubOrganizationlinks_H_ */
