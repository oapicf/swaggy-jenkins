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


#include "StringParameterValue.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

StringParameterValue::StringParameterValue()
{
    m__class = "";
    m__classIsSet = false;
    m_Name = "";
    m_NameIsSet = false;
    m_Value = "";
    m_ValueIsSet = false;
    
}

void StringParameterValue::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool StringParameterValue::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool StringParameterValue::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "StringParameterValue" : pathPrefix;

                
    return success;
}

bool StringParameterValue::operator==(const StringParameterValue& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!nameIsSet() && !rhs.nameIsSet()) || (nameIsSet() && rhs.nameIsSet() && getName() == rhs.getName())) &&
    
    
    ((!valueIsSet() && !rhs.valueIsSet()) || (valueIsSet() && rhs.valueIsSet() && getValue() == rhs.getValue()))
    
    ;
}

bool StringParameterValue::operator!=(const StringParameterValue& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const StringParameterValue& o)
{
    j = nlohmann::json();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.nameIsSet())
        j["name"] = o.m_Name;
    if(o.valueIsSet())
        j["value"] = o.m_Value;
    
}

void from_json(const nlohmann::json& j, StringParameterValue& o)
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
    if(j.find("value") != j.end())
    {
        j.at("value").get_to(o.m_Value);
        o.m_ValueIsSet = true;
    } 
    
}

std::string StringParameterValue::getClass() const
{
    return m__class;
}
void StringParameterValue::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool StringParameterValue::r_classIsSet() const
{
    return m__classIsSet;
}
void StringParameterValue::unset_class()
{
    m__classIsSet = false;
}
std::string StringParameterValue::getName() const
{
    return m_Name;
}
void StringParameterValue::setName(std::string const& value)
{
    m_Name = value;
    m_NameIsSet = true;
}
bool StringParameterValue::nameIsSet() const
{
    return m_NameIsSet;
}
void StringParameterValue::unsetName()
{
    m_NameIsSet = false;
}
std::string StringParameterValue::getValue() const
{
    return m_Value;
}
void StringParameterValue::setValue(std::string const& value)
{
    m_Value = value;
    m_ValueIsSet = true;
}
bool StringParameterValue::valueIsSet() const
{
    return m_ValueIsSet;
}
void StringParameterValue::unsetValue()
{
    m_ValueIsSet = false;
}


} // namespace org::openapitools::server::model

