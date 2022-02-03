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


#include "Label1.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

Label1::Label1()
{
    m__class = "";
    m__classIsSet = false;
    
}

void Label1::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool Label1::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool Label1::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "Label1" : pathPrefix;

        
    return success;
}

bool Label1::operator==(const Label1& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass()))
    
    ;
}

bool Label1::operator!=(const Label1& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const Label1& o)
{
    j = nlohmann::json();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    
}

void from_json(const nlohmann::json& j, Label1& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    
}

std::string Label1::getClass() const
{
    return m__class;
}
void Label1::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool Label1::r_classIsSet() const
{
    return m__classIsSet;
}
void Label1::unset_class()
{
    m__classIsSet = false;
}


} // namespace org::openapitools::server::model

