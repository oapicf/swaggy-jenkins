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


#include "StringParameterValue.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

StringParameterValue::StringParameterValue()
{
    m__class = "";
    m__classIsSet = false;
    m_Name = "";
    m_NameIsSet = false;
    m_Value = "";
    m_ValueIsSet = false;
    
}

StringParameterValue::~StringParameterValue()
{
}

void StringParameterValue::validate()
{
    // TODO: implement validation
}

nlohmann::json StringParameterValue::toJson() const
{
    nlohmann::json val = nlohmann::json::object();

    if(m__classIsSet)
    {
        val["_class"] = ModelBase::toJson(m__class);
    }
    if(m_NameIsSet)
    {
        val["name"] = ModelBase::toJson(m_Name);
    }
    if(m_ValueIsSet)
    {
        val["value"] = ModelBase::toJson(m_Value);
    }
    

    return val;
}

void StringParameterValue::fromJson(nlohmann::json& val)
{
    if(val.find("_class") != val.end())
    {
        setClass(val.at("_class"));
    }
    if(val.find("name") != val.end())
    {
        setName(val.at("name"));
    }
    if(val.find("value") != val.end())
    {
        setValue(val.at("value"));
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
bool StringParameterValue::classIsSet() const
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

}
}
}
}

