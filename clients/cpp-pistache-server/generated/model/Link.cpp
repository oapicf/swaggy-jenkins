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


#include "Link.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

Link::Link()
{
    m__class = "";
    m__classIsSet = false;
    m_Href = "";
    m_HrefIsSet = false;
    
}

void Link::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool Link::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool Link::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "Link" : pathPrefix;

            
    return success;
}

bool Link::operator==(const Link& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!hrefIsSet() && !rhs.hrefIsSet()) || (hrefIsSet() && rhs.hrefIsSet() && getHref() == rhs.getHref()))
    
    ;
}

bool Link::operator!=(const Link& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const Link& o)
{
    j = nlohmann::json();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.hrefIsSet())
        j["href"] = o.m_Href;
    
}

void from_json(const nlohmann::json& j, Link& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("href") != j.end())
    {
        j.at("href").get_to(o.m_Href);
        o.m_HrefIsSet = true;
    } 
    
}

std::string Link::getClass() const
{
    return m__class;
}
void Link::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool Link::r_classIsSet() const
{
    return m__classIsSet;
}
void Link::unset_class()
{
    m__classIsSet = false;
}
std::string Link::getHref() const
{
    return m_Href;
}
void Link::setHref(std::string const& value)
{
    m_Href = value;
    m_HrefIsSet = true;
}
bool Link::hrefIsSet() const
{
    return m_HrefIsSet;
}
void Link::unsetHref()
{
    m_HrefIsSet = false;
}


} // namespace org::openapitools::server::model

