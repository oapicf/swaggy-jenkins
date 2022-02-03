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


#include "ExtensionClassContainerImpl1links.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ExtensionClassContainerImpl1links::ExtensionClassContainerImpl1links()
{
    m_SelfIsSet = false;
    m__class = "";
    m__classIsSet = false;
    
}

void ExtensionClassContainerImpl1links::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ExtensionClassContainerImpl1links::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ExtensionClassContainerImpl1links::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ExtensionClassContainerImpl1links" : pathPrefix;

            
    return success;
}

bool ExtensionClassContainerImpl1links::operator==(const ExtensionClassContainerImpl1links& rhs) const
{
    return
    
    
    
    ((!selfIsSet() && !rhs.selfIsSet()) || (selfIsSet() && rhs.selfIsSet() && getSelf() == rhs.getSelf())) &&
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass()))
    
    ;
}

bool ExtensionClassContainerImpl1links::operator!=(const ExtensionClassContainerImpl1links& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ExtensionClassContainerImpl1links& o)
{
    j = nlohmann::json();
    if(o.selfIsSet())
        j["self"] = o.m_Self;
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    
}

void from_json(const nlohmann::json& j, ExtensionClassContainerImpl1links& o)
{
    if(j.find("self") != j.end())
    {
        j.at("self").get_to(o.m_Self);
        o.m_SelfIsSet = true;
    } 
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    
}

Link ExtensionClassContainerImpl1links::getSelf() const
{
    return m_Self;
}
void ExtensionClassContainerImpl1links::setSelf(Link const& value)
{
    m_Self = value;
    m_SelfIsSet = true;
}
bool ExtensionClassContainerImpl1links::selfIsSet() const
{
    return m_SelfIsSet;
}
void ExtensionClassContainerImpl1links::unsetSelf()
{
    m_SelfIsSet = false;
}
std::string ExtensionClassContainerImpl1links::getClass() const
{
    return m__class;
}
void ExtensionClassContainerImpl1links::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool ExtensionClassContainerImpl1links::r_classIsSet() const
{
    return m__classIsSet;
}
void ExtensionClassContainerImpl1links::unset_class()
{
    m__classIsSet = false;
}


} // namespace org::openapitools::server::model

