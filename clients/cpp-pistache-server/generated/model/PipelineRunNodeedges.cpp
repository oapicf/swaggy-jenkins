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


#include "PipelineRunNodeedges.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

PipelineRunNodeedges::PipelineRunNodeedges()
{
    m_Id = "";
    m_IdIsSet = false;
    m__class = "";
    m__classIsSet = false;
    
}

void PipelineRunNodeedges::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool PipelineRunNodeedges::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool PipelineRunNodeedges::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "PipelineRunNodeedges" : pathPrefix;

            
    return success;
}

bool PipelineRunNodeedges::operator==(const PipelineRunNodeedges& rhs) const
{
    return
    
    
    
    ((!idIsSet() && !rhs.idIsSet()) || (idIsSet() && rhs.idIsSet() && getId() == rhs.getId())) &&
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass()))
    
    ;
}

bool PipelineRunNodeedges::operator!=(const PipelineRunNodeedges& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const PipelineRunNodeedges& o)
{
    j = nlohmann::json();
    if(o.idIsSet())
        j["id"] = o.m_Id;
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    
}

void from_json(const nlohmann::json& j, PipelineRunNodeedges& o)
{
    if(j.find("id") != j.end())
    {
        j.at("id").get_to(o.m_Id);
        o.m_IdIsSet = true;
    } 
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    
}

std::string PipelineRunNodeedges::getId() const
{
    return m_Id;
}
void PipelineRunNodeedges::setId(std::string const& value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool PipelineRunNodeedges::idIsSet() const
{
    return m_IdIsSet;
}
void PipelineRunNodeedges::unsetId()
{
    m_IdIsSet = false;
}
std::string PipelineRunNodeedges::getClass() const
{
    return m__class;
}
void PipelineRunNodeedges::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool PipelineRunNodeedges::r_classIsSet() const
{
    return m__classIsSet;
}
void PipelineRunNodeedges::unset_class()
{
    m__classIsSet = false;
}


} // namespace org::openapitools::server::model

