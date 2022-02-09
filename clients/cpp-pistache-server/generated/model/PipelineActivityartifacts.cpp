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


#include "PipelineActivityartifacts.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

PipelineActivityartifacts::PipelineActivityartifacts()
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

void PipelineActivityartifacts::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool PipelineActivityartifacts::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool PipelineActivityartifacts::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "PipelineActivityartifacts" : pathPrefix;

                    
    return success;
}

bool PipelineActivityartifacts::operator==(const PipelineActivityartifacts& rhs) const
{
    return
    
    
    
    ((!nameIsSet() && !rhs.nameIsSet()) || (nameIsSet() && rhs.nameIsSet() && getName() == rhs.getName())) &&
    
    
    ((!sizeIsSet() && !rhs.sizeIsSet()) || (sizeIsSet() && rhs.sizeIsSet() && getSize() == rhs.getSize())) &&
    
    
    ((!urlIsSet() && !rhs.urlIsSet()) || (urlIsSet() && rhs.urlIsSet() && getUrl() == rhs.getUrl())) &&
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass()))
    
    ;
}

bool PipelineActivityartifacts::operator!=(const PipelineActivityartifacts& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const PipelineActivityartifacts& o)
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

void from_json(const nlohmann::json& j, PipelineActivityartifacts& o)
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

std::string PipelineActivityartifacts::getName() const
{
    return m_Name;
}
void PipelineActivityartifacts::setName(std::string const& value)
{
    m_Name = value;
    m_NameIsSet = true;
}
bool PipelineActivityartifacts::nameIsSet() const
{
    return m_NameIsSet;
}
void PipelineActivityartifacts::unsetName()
{
    m_NameIsSet = false;
}
int32_t PipelineActivityartifacts::getSize() const
{
    return m_Size;
}
void PipelineActivityartifacts::setSize(int32_t const value)
{
    m_Size = value;
    m_SizeIsSet = true;
}
bool PipelineActivityartifacts::sizeIsSet() const
{
    return m_SizeIsSet;
}
void PipelineActivityartifacts::unsetSize()
{
    m_SizeIsSet = false;
}
std::string PipelineActivityartifacts::getUrl() const
{
    return m_Url;
}
void PipelineActivityartifacts::setUrl(std::string const& value)
{
    m_Url = value;
    m_UrlIsSet = true;
}
bool PipelineActivityartifacts::urlIsSet() const
{
    return m_UrlIsSet;
}
void PipelineActivityartifacts::unsetUrl()
{
    m_UrlIsSet = false;
}
std::string PipelineActivityartifacts::getClass() const
{
    return m__class;
}
void PipelineActivityartifacts::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool PipelineActivityartifacts::r_classIsSet() const
{
    return m__classIsSet;
}
void PipelineActivityartifacts::unset_class()
{
    m__classIsSet = false;
}


} // namespace org::openapitools::server::model

