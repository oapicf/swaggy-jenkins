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


#include "CauseUserIdCause.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

CauseUserIdCause::CauseUserIdCause()
{
    m__class = "";
    m__classIsSet = false;
    m_ShortDescription = "";
    m_ShortDescriptionIsSet = false;
    m_UserId = "";
    m_UserIdIsSet = false;
    m_UserName = "";
    m_UserNameIsSet = false;
    
}

void CauseUserIdCause::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool CauseUserIdCause::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool CauseUserIdCause::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "CauseUserIdCause" : pathPrefix;

                    
    return success;
}

bool CauseUserIdCause::operator==(const CauseUserIdCause& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!shortDescriptionIsSet() && !rhs.shortDescriptionIsSet()) || (shortDescriptionIsSet() && rhs.shortDescriptionIsSet() && getShortDescription() == rhs.getShortDescription())) &&
    
    
    ((!userIdIsSet() && !rhs.userIdIsSet()) || (userIdIsSet() && rhs.userIdIsSet() && getUserId() == rhs.getUserId())) &&
    
    
    ((!userNameIsSet() && !rhs.userNameIsSet()) || (userNameIsSet() && rhs.userNameIsSet() && getUserName() == rhs.getUserName()))
    
    ;
}

bool CauseUserIdCause::operator!=(const CauseUserIdCause& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const CauseUserIdCause& o)
{
    j = nlohmann::json();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.shortDescriptionIsSet())
        j["shortDescription"] = o.m_ShortDescription;
    if(o.userIdIsSet())
        j["userId"] = o.m_UserId;
    if(o.userNameIsSet())
        j["userName"] = o.m_UserName;
    
}

void from_json(const nlohmann::json& j, CauseUserIdCause& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("shortDescription") != j.end())
    {
        j.at("shortDescription").get_to(o.m_ShortDescription);
        o.m_ShortDescriptionIsSet = true;
    } 
    if(j.find("userId") != j.end())
    {
        j.at("userId").get_to(o.m_UserId);
        o.m_UserIdIsSet = true;
    } 
    if(j.find("userName") != j.end())
    {
        j.at("userName").get_to(o.m_UserName);
        o.m_UserNameIsSet = true;
    } 
    
}

std::string CauseUserIdCause::getClass() const
{
    return m__class;
}
void CauseUserIdCause::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool CauseUserIdCause::r_classIsSet() const
{
    return m__classIsSet;
}
void CauseUserIdCause::unset_class()
{
    m__classIsSet = false;
}
std::string CauseUserIdCause::getShortDescription() const
{
    return m_ShortDescription;
}
void CauseUserIdCause::setShortDescription(std::string const& value)
{
    m_ShortDescription = value;
    m_ShortDescriptionIsSet = true;
}
bool CauseUserIdCause::shortDescriptionIsSet() const
{
    return m_ShortDescriptionIsSet;
}
void CauseUserIdCause::unsetShortDescription()
{
    m_ShortDescriptionIsSet = false;
}
std::string CauseUserIdCause::getUserId() const
{
    return m_UserId;
}
void CauseUserIdCause::setUserId(std::string const& value)
{
    m_UserId = value;
    m_UserIdIsSet = true;
}
bool CauseUserIdCause::userIdIsSet() const
{
    return m_UserIdIsSet;
}
void CauseUserIdCause::unsetUserId()
{
    m_UserIdIsSet = false;
}
std::string CauseUserIdCause::getUserName() const
{
    return m_UserName;
}
void CauseUserIdCause::setUserName(std::string const& value)
{
    m_UserName = value;
    m_UserNameIsSet = true;
}
bool CauseUserIdCause::userNameIsSet() const
{
    return m_UserNameIsSet;
}
void CauseUserIdCause::unsetUserName()
{
    m_UserNameIsSet = false;
}


} // namespace org::openapitools::server::model

