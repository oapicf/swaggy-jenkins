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


#include "DefaultCrumbIssuer.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

DefaultCrumbIssuer::DefaultCrumbIssuer()
{
    m__class = "";
    m__classIsSet = false;
    m_Crumb = "";
    m_CrumbIsSet = false;
    m_CrumbRequestField = "";
    m_CrumbRequestFieldIsSet = false;
    
}

void DefaultCrumbIssuer::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool DefaultCrumbIssuer::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool DefaultCrumbIssuer::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "DefaultCrumbIssuer" : pathPrefix;

                
    return success;
}

bool DefaultCrumbIssuer::operator==(const DefaultCrumbIssuer& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!crumbIsSet() && !rhs.crumbIsSet()) || (crumbIsSet() && rhs.crumbIsSet() && getCrumb() == rhs.getCrumb())) &&
    
    
    ((!crumbRequestFieldIsSet() && !rhs.crumbRequestFieldIsSet()) || (crumbRequestFieldIsSet() && rhs.crumbRequestFieldIsSet() && getCrumbRequestField() == rhs.getCrumbRequestField()))
    
    ;
}

bool DefaultCrumbIssuer::operator!=(const DefaultCrumbIssuer& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const DefaultCrumbIssuer& o)
{
    j = nlohmann::json();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.crumbIsSet())
        j["crumb"] = o.m_Crumb;
    if(o.crumbRequestFieldIsSet())
        j["crumbRequestField"] = o.m_CrumbRequestField;
    
}

void from_json(const nlohmann::json& j, DefaultCrumbIssuer& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("crumb") != j.end())
    {
        j.at("crumb").get_to(o.m_Crumb);
        o.m_CrumbIsSet = true;
    } 
    if(j.find("crumbRequestField") != j.end())
    {
        j.at("crumbRequestField").get_to(o.m_CrumbRequestField);
        o.m_CrumbRequestFieldIsSet = true;
    } 
    
}

std::string DefaultCrumbIssuer::getClass() const
{
    return m__class;
}
void DefaultCrumbIssuer::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool DefaultCrumbIssuer::r_classIsSet() const
{
    return m__classIsSet;
}
void DefaultCrumbIssuer::unset_class()
{
    m__classIsSet = false;
}
std::string DefaultCrumbIssuer::getCrumb() const
{
    return m_Crumb;
}
void DefaultCrumbIssuer::setCrumb(std::string const& value)
{
    m_Crumb = value;
    m_CrumbIsSet = true;
}
bool DefaultCrumbIssuer::crumbIsSet() const
{
    return m_CrumbIsSet;
}
void DefaultCrumbIssuer::unsetCrumb()
{
    m_CrumbIsSet = false;
}
std::string DefaultCrumbIssuer::getCrumbRequestField() const
{
    return m_CrumbRequestField;
}
void DefaultCrumbIssuer::setCrumbRequestField(std::string const& value)
{
    m_CrumbRequestField = value;
    m_CrumbRequestFieldIsSet = true;
}
bool DefaultCrumbIssuer::crumbRequestFieldIsSet() const
{
    return m_CrumbRequestFieldIsSet;
}
void DefaultCrumbIssuer::unsetCrumbRequestField()
{
    m_CrumbRequestFieldIsSet = false;
}


} // namespace org::openapitools::server::model

