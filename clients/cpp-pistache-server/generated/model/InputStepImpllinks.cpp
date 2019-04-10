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


#include "InputStepImpllinks.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

InputStepImpllinks::InputStepImpllinks()
{
    m_SelfIsSet = false;
    m__class = "";
    m__classIsSet = false;
    
}

InputStepImpllinks::~InputStepImpllinks()
{
}

void InputStepImpllinks::validate()
{
    // TODO: implement validation
}

nlohmann::json InputStepImpllinks::toJson() const
{
    nlohmann::json val = nlohmann::json::object();

    if(m_SelfIsSet)
    {
        val["self"] = ModelBase::toJson(m_Self);
    }
    if(m__classIsSet)
    {
        val["_class"] = ModelBase::toJson(m__class);
    }
    

    return val;
}

void InputStepImpllinks::fromJson(nlohmann::json& val)
{
    if(val.find("self") != val.end())
    {
        if(!val["self"].is_null())
        {
            Link newItem;
            newItem.fromJson(val["self"]);
            setSelf( newItem );
        }
        
    }
    if(val.find("_class") != val.end())
    {
        setClass(val.at("_class"));
    }
    
}


Link InputStepImpllinks::getSelf() const
{
    return m_Self;
}
void InputStepImpllinks::setSelf(Link const& value)
{
    m_Self = value;
    m_SelfIsSet = true;
}
bool InputStepImpllinks::selfIsSet() const
{
    return m_SelfIsSet;
}
void InputStepImpllinks::unsetSelf()
{
    m_SelfIsSet = false;
}
std::string InputStepImpllinks::getClass() const
{
    return m__class;
}
void InputStepImpllinks::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool InputStepImpllinks::classIsSet() const
{
    return m__classIsSet;
}
void InputStepImpllinks::unset_class()
{
    m__classIsSet = false;
}

}
}
}
}

