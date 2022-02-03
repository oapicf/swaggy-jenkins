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


#include "AllView.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

AllView::AllView()
{
    m__class = "";
    m__classIsSet = false;
    m_Name = "";
    m_NameIsSet = false;
    m_Url = "";
    m_UrlIsSet = false;
    
}

void AllView::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool AllView::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool AllView::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "AllView" : pathPrefix;

                
    return success;
}

bool AllView::operator==(const AllView& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!nameIsSet() && !rhs.nameIsSet()) || (nameIsSet() && rhs.nameIsSet() && getName() == rhs.getName())) &&
    
    
    ((!urlIsSet() && !rhs.urlIsSet()) || (urlIsSet() && rhs.urlIsSet() && getUrl() == rhs.getUrl()))
    
    ;
}

bool AllView::operator!=(const AllView& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const AllView& o)
{
    j = nlohmann::json();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.nameIsSet())
        j["name"] = o.m_Name;
    if(o.urlIsSet())
        j["url"] = o.m_Url;
    
}

void from_json(const nlohmann::json& j, AllView& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("name") != j.end())
    {
        j.at("name").get_to(o.m_Name);
        o.m_NameIsSet = true;
    } 
    if(j.find("url") != j.end())
    {
        j.at("url").get_to(o.m_Url);
        o.m_UrlIsSet = true;
    } 
    
}

std::string AllView::getClass() const
{
    return m__class;
}
void AllView::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool AllView::r_classIsSet() const
{
    return m__classIsSet;
}
void AllView::unset_class()
{
    m__classIsSet = false;
}
std::string AllView::getName() const
{
    return m_Name;
}
void AllView::setName(std::string const& value)
{
    m_Name = value;
    m_NameIsSet = true;
}
bool AllView::nameIsSet() const
{
    return m_NameIsSet;
}
void AllView::unsetName()
{
    m_NameIsSet = false;
}
std::string AllView::getUrl() const
{
    return m_Url;
}
void AllView::setUrl(std::string const& value)
{
    m_Url = value;
    m_UrlIsSet = true;
}
bool AllView::urlIsSet() const
{
    return m_UrlIsSet;
}
void AllView::unsetUrl()
{
    m_UrlIsSet = false;
}


} // namespace org::openapitools::server::model

