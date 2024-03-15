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


#include "NullSCM.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

NullSCM::NullSCM()
{
    m__class = "";
    m__classIsSet = false;
    
}

void NullSCM::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool NullSCM::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool NullSCM::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "NullSCM" : pathPrefix;

        
    return success;
}

bool NullSCM::operator==(const NullSCM& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass()))
    
    ;
}

bool NullSCM::operator!=(const NullSCM& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const NullSCM& o)
{
    j = nlohmann::json::object();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    
}

void from_json(const nlohmann::json& j, NullSCM& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    
}

std::string NullSCM::getClass() const
{
    return m__class;
}
void NullSCM::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool NullSCM::r_classIsSet() const
{
    return m__classIsSet;
}
void NullSCM::unset_class()
{
    m__classIsSet = false;
}


} // namespace org::openapitools::server::model

