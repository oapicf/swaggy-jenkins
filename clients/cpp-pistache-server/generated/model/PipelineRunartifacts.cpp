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


#include "PipelineRunartifacts.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

PipelineRunartifacts::PipelineRunartifacts()
{
    m_Name = "";
    m_NameIsSet = false;
    m_Size = 0;
    m_SizeIsSet = false;
    m_Url = "";
    m_UrlIsSet = false;
    m__class = "";
    m__classIsSet = false;
    
}

void PipelineRunartifacts::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool PipelineRunartifacts::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool PipelineRunartifacts::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "PipelineRunartifacts" : pathPrefix;

                    
    return success;
}

bool PipelineRunartifacts::operator==(const PipelineRunartifacts& rhs) const
{
    return
    
    
    
    ((!nameIsSet() && !rhs.nameIsSet()) || (nameIsSet() && rhs.nameIsSet() && getName() == rhs.getName())) &&
    
    
    ((!sizeIsSet() && !rhs.sizeIsSet()) || (sizeIsSet() && rhs.sizeIsSet() && getSize() == rhs.getSize())) &&
    
    
    ((!urlIsSet() && !rhs.urlIsSet()) || (urlIsSet() && rhs.urlIsSet() && getUrl() == rhs.getUrl())) &&
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass()))
    
    ;
}

bool PipelineRunartifacts::operator!=(const PipelineRunartifacts& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const PipelineRunartifacts& o)
{
    j = nlohmann::json();
    if(o.nameIsSet())
        j["name"] = o.m_Name;
    if(o.sizeIsSet())
        j["size"] = o.m_Size;
    if(o.urlIsSet())
        j["url"] = o.m_Url;
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    
}

void from_json(const nlohmann::json& j, PipelineRunartifacts& o)
{
    if(j.find("name") != j.end())
    {
        j.at("name").get_to(o.m_Name);
        o.m_NameIsSet = true;
    } 
    if(j.find("size") != j.end())
    {
        j.at("size").get_to(o.m_Size);
        o.m_SizeIsSet = true;
    } 
    if(j.find("url") != j.end())
    {
        j.at("url").get_to(o.m_Url);
        o.m_UrlIsSet = true;
    } 
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    
}

std::string PipelineRunartifacts::getName() const
{
    return m_Name;
}
void PipelineRunartifacts::setName(std::string const& value)
{
    m_Name = value;
    m_NameIsSet = true;
}
bool PipelineRunartifacts::nameIsSet() const
{
    return m_NameIsSet;
}
void PipelineRunartifacts::unsetName()
{
    m_NameIsSet = false;
}
int32_t PipelineRunartifacts::getSize() const
{
    return m_Size;
}
void PipelineRunartifacts::setSize(int32_t const value)
{
    m_Size = value;
    m_SizeIsSet = true;
}
bool PipelineRunartifacts::sizeIsSet() const
{
    return m_SizeIsSet;
}
void PipelineRunartifacts::unsetSize()
{
    m_SizeIsSet = false;
}
std::string PipelineRunartifacts::getUrl() const
{
    return m_Url;
}
void PipelineRunartifacts::setUrl(std::string const& value)
{
    m_Url = value;
    m_UrlIsSet = true;
}
bool PipelineRunartifacts::urlIsSet() const
{
    return m_UrlIsSet;
}
void PipelineRunartifacts::unsetUrl()
{
    m_UrlIsSet = false;
}
std::string PipelineRunartifacts::getClass() const
{
    return m__class;
}
void PipelineRunartifacts::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool PipelineRunartifacts::r_classIsSet() const
{
    return m__classIsSet;
}
void PipelineRunartifacts::unset_class()
{
    m__classIsSet = false;
}


} // namespace org::openapitools::server::model

