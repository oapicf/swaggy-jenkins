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


#include "User.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

User::User()
{
    m__class = "";
    m__classIsSet = false;
    m_Id = "";
    m_IdIsSet = false;
    m_FullName = "";
    m_FullNameIsSet = false;
    m_Email = "";
    m_EmailIsSet = false;
    m_Name = "";
    m_NameIsSet = false;
    
}

void User::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool User::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool User::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "User" : pathPrefix;

                        
    return success;
}

bool User::operator==(const User& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!idIsSet() && !rhs.idIsSet()) || (idIsSet() && rhs.idIsSet() && getId() == rhs.getId())) &&
    
    
    ((!fullNameIsSet() && !rhs.fullNameIsSet()) || (fullNameIsSet() && rhs.fullNameIsSet() && getFullName() == rhs.getFullName())) &&
    
    
    ((!emailIsSet() && !rhs.emailIsSet()) || (emailIsSet() && rhs.emailIsSet() && getEmail() == rhs.getEmail())) &&
    
    
    ((!nameIsSet() && !rhs.nameIsSet()) || (nameIsSet() && rhs.nameIsSet() && getName() == rhs.getName()))
    
    ;
}

bool User::operator!=(const User& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const User& o)
{
    j = nlohmann::json::object();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.idIsSet())
        j["id"] = o.m_Id;
    if(o.fullNameIsSet())
        j["fullName"] = o.m_FullName;
    if(o.emailIsSet())
        j["email"] = o.m_Email;
    if(o.nameIsSet())
        j["name"] = o.m_Name;
    
}

void from_json(const nlohmann::json& j, User& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("id") != j.end())
    {
        j.at("id").get_to(o.m_Id);
        o.m_IdIsSet = true;
    } 
    if(j.find("fullName") != j.end())
    {
        j.at("fullName").get_to(o.m_FullName);
        o.m_FullNameIsSet = true;
    } 
    if(j.find("email") != j.end())
    {
        j.at("email").get_to(o.m_Email);
        o.m_EmailIsSet = true;
    } 
    if(j.find("name") != j.end())
    {
        j.at("name").get_to(o.m_Name);
        o.m_NameIsSet = true;
    } 
    
}

std::string User::getClass() const
{
    return m__class;
}
void User::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool User::r_classIsSet() const
{
    return m__classIsSet;
}
void User::unset_class()
{
    m__classIsSet = false;
}
std::string User::getId() const
{
    return m_Id;
}
void User::setId(std::string const& value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool User::idIsSet() const
{
    return m_IdIsSet;
}
void User::unsetId()
{
    m_IdIsSet = false;
}
std::string User::getFullName() const
{
    return m_FullName;
}
void User::setFullName(std::string const& value)
{
    m_FullName = value;
    m_FullNameIsSet = true;
}
bool User::fullNameIsSet() const
{
    return m_FullNameIsSet;
}
void User::unsetFullName()
{
    m_FullNameIsSet = false;
}
std::string User::getEmail() const
{
    return m_Email;
}
void User::setEmail(std::string const& value)
{
    m_Email = value;
    m_EmailIsSet = true;
}
bool User::emailIsSet() const
{
    return m_EmailIsSet;
}
void User::unsetEmail()
{
    m_EmailIsSet = false;
}
std::string User::getName() const
{
    return m_Name;
}
void User::setName(std::string const& value)
{
    m_Name = value;
    m_NameIsSet = true;
}
bool User::nameIsSet() const
{
    return m_NameIsSet;
}
void User::unsetName()
{
    m_NameIsSet = false;
}


} // namespace org::openapitools::server::model

