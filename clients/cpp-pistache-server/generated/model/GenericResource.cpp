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


#include "GenericResource.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

GenericResource::GenericResource()
{
    m__class = "";
    m__classIsSet = false;
    m_DisplayName = "";
    m_DisplayNameIsSet = false;
    m_DurationInMillis = 0;
    m_DurationInMillisIsSet = false;
    m_Id = "";
    m_IdIsSet = false;
    m_Result = "";
    m_ResultIsSet = false;
    m_StartTime = "";
    m_StartTimeIsSet = false;
    
}

void GenericResource::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool GenericResource::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool GenericResource::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "GenericResource" : pathPrefix;

                            
    return success;
}

bool GenericResource::operator==(const GenericResource& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!displayNameIsSet() && !rhs.displayNameIsSet()) || (displayNameIsSet() && rhs.displayNameIsSet() && getDisplayName() == rhs.getDisplayName())) &&
    
    
    ((!durationInMillisIsSet() && !rhs.durationInMillisIsSet()) || (durationInMillisIsSet() && rhs.durationInMillisIsSet() && getDurationInMillis() == rhs.getDurationInMillis())) &&
    
    
    ((!idIsSet() && !rhs.idIsSet()) || (idIsSet() && rhs.idIsSet() && getId() == rhs.getId())) &&
    
    
    ((!resultIsSet() && !rhs.resultIsSet()) || (resultIsSet() && rhs.resultIsSet() && getResult() == rhs.getResult())) &&
    
    
    ((!startTimeIsSet() && !rhs.startTimeIsSet()) || (startTimeIsSet() && rhs.startTimeIsSet() && getStartTime() == rhs.getStartTime()))
    
    ;
}

bool GenericResource::operator!=(const GenericResource& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const GenericResource& o)
{
    j = nlohmann::json::object();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.displayNameIsSet())
        j["displayName"] = o.m_DisplayName;
    if(o.durationInMillisIsSet())
        j["durationInMillis"] = o.m_DurationInMillis;
    if(o.idIsSet())
        j["id"] = o.m_Id;
    if(o.resultIsSet())
        j["result"] = o.m_Result;
    if(o.startTimeIsSet())
        j["startTime"] = o.m_StartTime;
    
}

void from_json(const nlohmann::json& j, GenericResource& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("displayName") != j.end())
    {
        j.at("displayName").get_to(o.m_DisplayName);
        o.m_DisplayNameIsSet = true;
    } 
    if(j.find("durationInMillis") != j.end())
    {
        j.at("durationInMillis").get_to(o.m_DurationInMillis);
        o.m_DurationInMillisIsSet = true;
    } 
    if(j.find("id") != j.end())
    {
        j.at("id").get_to(o.m_Id);
        o.m_IdIsSet = true;
    } 
    if(j.find("result") != j.end())
    {
        j.at("result").get_to(o.m_Result);
        o.m_ResultIsSet = true;
    } 
    if(j.find("startTime") != j.end())
    {
        j.at("startTime").get_to(o.m_StartTime);
        o.m_StartTimeIsSet = true;
    } 
    
}

std::string GenericResource::getClass() const
{
    return m__class;
}
void GenericResource::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool GenericResource::r_classIsSet() const
{
    return m__classIsSet;
}
void GenericResource::unset_class()
{
    m__classIsSet = false;
}
std::string GenericResource::getDisplayName() const
{
    return m_DisplayName;
}
void GenericResource::setDisplayName(std::string const& value)
{
    m_DisplayName = value;
    m_DisplayNameIsSet = true;
}
bool GenericResource::displayNameIsSet() const
{
    return m_DisplayNameIsSet;
}
void GenericResource::unsetDisplayName()
{
    m_DisplayNameIsSet = false;
}
int32_t GenericResource::getDurationInMillis() const
{
    return m_DurationInMillis;
}
void GenericResource::setDurationInMillis(int32_t const value)
{
    m_DurationInMillis = value;
    m_DurationInMillisIsSet = true;
}
bool GenericResource::durationInMillisIsSet() const
{
    return m_DurationInMillisIsSet;
}
void GenericResource::unsetDurationInMillis()
{
    m_DurationInMillisIsSet = false;
}
std::string GenericResource::getId() const
{
    return m_Id;
}
void GenericResource::setId(std::string const& value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool GenericResource::idIsSet() const
{
    return m_IdIsSet;
}
void GenericResource::unsetId()
{
    m_IdIsSet = false;
}
std::string GenericResource::getResult() const
{
    return m_Result;
}
void GenericResource::setResult(std::string const& value)
{
    m_Result = value;
    m_ResultIsSet = true;
}
bool GenericResource::resultIsSet() const
{
    return m_ResultIsSet;
}
void GenericResource::unsetResult()
{
    m_ResultIsSet = false;
}
std::string GenericResource::getStartTime() const
{
    return m_StartTime;
}
void GenericResource::setStartTime(std::string const& value)
{
    m_StartTime = value;
    m_StartTimeIsSet = true;
}
bool GenericResource::startTimeIsSet() const
{
    return m_StartTimeIsSet;
}
void GenericResource::unsetStartTime()
{
    m_StartTimeIsSet = false;
}


} // namespace org::openapitools::server::model

