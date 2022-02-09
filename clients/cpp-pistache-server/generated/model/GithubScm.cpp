/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.2-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "GithubScm.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

GithubScm::GithubScm()
{
    m__class = "";
    m__classIsSet = false;
    m__linksIsSet = false;
    m_CredentialId = "";
    m_CredentialIdIsSet = false;
    m_Id = "";
    m_IdIsSet = false;
    m_Uri = "";
    m_UriIsSet = false;
    
}

void GithubScm::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool GithubScm::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool GithubScm::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "GithubScm" : pathPrefix;

                        
    return success;
}

bool GithubScm::operator==(const GithubScm& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!linksIsSet() && !rhs.linksIsSet()) || (linksIsSet() && rhs.linksIsSet() && getLinks() == rhs.getLinks())) &&
    
    
    ((!credentialIdIsSet() && !rhs.credentialIdIsSet()) || (credentialIdIsSet() && rhs.credentialIdIsSet() && getCredentialId() == rhs.getCredentialId())) &&
    
    
    ((!idIsSet() && !rhs.idIsSet()) || (idIsSet() && rhs.idIsSet() && getId() == rhs.getId())) &&
    
    
    ((!uriIsSet() && !rhs.uriIsSet()) || (uriIsSet() && rhs.uriIsSet() && getUri() == rhs.getUri()))
    
    ;
}

bool GithubScm::operator!=(const GithubScm& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const GithubScm& o)
{
    j = nlohmann::json();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.linksIsSet())
        j["_links"] = o.m__links;
    if(o.credentialIdIsSet())
        j["credentialId"] = o.m_CredentialId;
    if(o.idIsSet())
        j["id"] = o.m_Id;
    if(o.uriIsSet())
        j["uri"] = o.m_Uri;
    
}

void from_json(const nlohmann::json& j, GithubScm& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("_links") != j.end())
    {
        j.at("_links").get_to(o.m__links);
        o.m__linksIsSet = true;
    } 
    if(j.find("credentialId") != j.end())
    {
        j.at("credentialId").get_to(o.m_CredentialId);
        o.m_CredentialIdIsSet = true;
    } 
    if(j.find("id") != j.end())
    {
        j.at("id").get_to(o.m_Id);
        o.m_IdIsSet = true;
    } 
    if(j.find("uri") != j.end())
    {
        j.at("uri").get_to(o.m_Uri);
        o.m_UriIsSet = true;
    } 
    
}

std::string GithubScm::getClass() const
{
    return m__class;
}
void GithubScm::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool GithubScm::r_classIsSet() const
{
    return m__classIsSet;
}
void GithubScm::unset_class()
{
    m__classIsSet = false;
}
GithubScmlinks GithubScm::getLinks() const
{
    return m__links;
}
void GithubScm::setLinks(GithubScmlinks const& value)
{
    m__links = value;
    m__linksIsSet = true;
}
bool GithubScm::linksIsSet() const
{
    return m__linksIsSet;
}
void GithubScm::unset_links()
{
    m__linksIsSet = false;
}
std::string GithubScm::getCredentialId() const
{
    return m_CredentialId;
}
void GithubScm::setCredentialId(std::string const& value)
{
    m_CredentialId = value;
    m_CredentialIdIsSet = true;
}
bool GithubScm::credentialIdIsSet() const
{
    return m_CredentialIdIsSet;
}
void GithubScm::unsetCredentialId()
{
    m_CredentialIdIsSet = false;
}
std::string GithubScm::getId() const
{
    return m_Id;
}
void GithubScm::setId(std::string const& value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool GithubScm::idIsSet() const
{
    return m_IdIsSet;
}
void GithubScm::unsetId()
{
    m_IdIsSet = false;
}
std::string GithubScm::getUri() const
{
    return m_Uri;
}
void GithubScm::setUri(std::string const& value)
{
    m_Uri = value;
    m_UriIsSet = true;
}
bool GithubScm::uriIsSet() const
{
    return m_UriIsSet;
}
void GithubScm::unsetUri()
{
    m_UriIsSet = false;
}


} // namespace org::openapitools::server::model

