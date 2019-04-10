/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* OpenAPI spec version: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "GenericResource.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

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

GenericResource::~GenericResource()
{
}

void GenericResource::validate()
{
    // TODO: implement validation
}

nlohmann::json GenericResource::toJson() const
{
    nlohmann::json val = nlohmann::json::object();

    if(m__classIsSet)
    {
        val["_class"] = ModelBase::toJson(m__class);
    }
    if(m_DisplayNameIsSet)
    {
        val["displayName"] = ModelBase::toJson(m_DisplayName);
    }
    if(m_DurationInMillisIsSet)
    {
        val["durationInMillis"] = m_DurationInMillis;
    }
    if(m_IdIsSet)
    {
        val["id"] = ModelBase::toJson(m_Id);
    }
    if(m_ResultIsSet)
    {
        val["result"] = ModelBase::toJson(m_Result);
    }
    if(m_StartTimeIsSet)
    {
        val["startTime"] = ModelBase::toJson(m_StartTime);
    }
    

    return val;
}

void GenericResource::fromJson(nlohmann::json& val)
{
    if(val.find("_class") != val.end())
    {
        setClass(val.at("_class"));
    }
    if(val.find("displayName") != val.end())
    {
        setDisplayName(val.at("displayName"));
    }
    if(val.find("durationInMillis") != val.end())
    {
        setDurationInMillis(val.at("durationInMillis"));
    }
    if(val.find("id") != val.end())
    {
        setId(val.at("id"));
    }
    if(val.find("result") != val.end())
    {
        setResult(val.at("result"));
    }
    if(val.find("startTime") != val.end())
    {
        setStartTime(val.at("startTime"));
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
bool GenericResource::classIsSet() const
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

}
}
}
}

