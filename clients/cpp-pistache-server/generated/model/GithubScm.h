/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * GithubScm.h
 *
 * 
 */

#ifndef GithubScm_H_
#define GithubScm_H_


#include <string>
#include "GithubScmlinks.h"
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  GithubScm
{
public:
    GithubScm();
    virtual ~GithubScm() = default;


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

    bool operator==(const GithubScm& rhs) const;
    bool operator!=(const GithubScm& rhs) const;

    /////////////////////////////////////////////
    /// GithubScm members

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
    GithubScmlinks getLinks() const;
    void setLinks(GithubScmlinks const& value);
    bool linksIsSet() const;
    void unset_links();
    /// <summary>
    /// 
    /// </summary>
    std::string getCredentialId() const;
    void setCredentialId(std::string const& value);
    bool credentialIdIsSet() const;
    void unsetCredentialId();
    /// <summary>
    /// 
    /// </summary>
    std::string getId() const;
    void setId(std::string const& value);
    bool idIsSet() const;
    void unsetId();
    /// <summary>
    /// 
    /// </summary>
    std::string getUri() const;
    void setUri(std::string const& value);
    bool uriIsSet() const;
    void unsetUri();

    friend void to_json(nlohmann::json& j, const GithubScm& o);
    friend void from_json(const nlohmann::json& j, GithubScm& o);
protected:
    std::string m__class;
    bool m__classIsSet;
    GithubScmlinks m__links;
    bool m__linksIsSet;
    std::string m_CredentialId;
    bool m_CredentialIdIsSet;
    std::string m_Id;
    bool m_IdIsSet;
    std::string m_Uri;
    bool m_UriIsSet;
    
};

} // namespace org::openapitools::server::model

#endif /* GithubScm_H_ */
