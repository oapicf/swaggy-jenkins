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
 * GithubOrganizationlinks.h
 *
 * 
 */

#ifndef GithubOrganizationlinks_H_
#define GithubOrganizationlinks_H_


#include <string>
#include "Link.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  GithubOrganizationlinks
{
public:
    GithubOrganizationlinks();
    virtual ~GithubOrganizationlinks() = default;


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

    bool operator==(const GithubOrganizationlinks& rhs) const;
    bool operator!=(const GithubOrganizationlinks& rhs) const;

    /////////////////////////////////////////////
    /// GithubOrganizationlinks members

    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::Link getRepositories() const;
    void setRepositories(org::openapitools::server::model::Link const& value);
    bool repositoriesIsSet() const;
    void unsetRepositories();
    /// <summary>
    /// 
    /// </summary>
    org::openapitools::server::model::Link getSelf() const;
    void setSelf(org::openapitools::server::model::Link const& value);
    bool selfIsSet() const;
    void unsetSelf();
    /// <summary>
    /// 
    /// </summary>
    std::string getClass() const;
    void setClass(std::string const& value);
    bool r_classIsSet() const;
    void unset_class();

    friend  void to_json(nlohmann::json& j, const GithubOrganizationlinks& o);
    friend  void from_json(const nlohmann::json& j, GithubOrganizationlinks& o);
protected:
    org::openapitools::server::model::Link m_Repositories;
    bool m_RepositoriesIsSet;
    org::openapitools::server::model::Link m_Self;
    bool m_SelfIsSet;
    std::string m__class;
    bool m__classIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* GithubOrganizationlinks_H_ */
