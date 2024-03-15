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


#include "InputStepImpl.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

InputStepImpl::InputStepImpl()
{
    m__class = "";
    m__classIsSet = false;
    m__linksIsSet = false;
    m_Id = "";
    m_IdIsSet = false;
    m_Message = "";
    m_MessageIsSet = false;
    m_Ok = "";
    m_OkIsSet = false;
    m_ParametersIsSet = false;
    m_Submitter = "";
    m_SubmitterIsSet = false;
    
}

void InputStepImpl::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool InputStepImpl::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool InputStepImpl::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "InputStepImpl" : pathPrefix;

                             
    if (parametersIsSet())
    {
        const std::vector<org::openapitools::server::model::StringParameterDefinition>& value = m_Parameters;
        const std::string currentValuePath = _pathPrefix + ".parameters";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const org::openapitools::server::model::StringParameterDefinition& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".parameters") && success;
 
                i++;
            }
        }

    }
        
    return success;
}

bool InputStepImpl::operator==(const InputStepImpl& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!linksIsSet() && !rhs.linksIsSet()) || (linksIsSet() && rhs.linksIsSet() && getLinks() == rhs.getLinks())) &&
    
    
    ((!idIsSet() && !rhs.idIsSet()) || (idIsSet() && rhs.idIsSet() && getId() == rhs.getId())) &&
    
    
    ((!messageIsSet() && !rhs.messageIsSet()) || (messageIsSet() && rhs.messageIsSet() && getMessage() == rhs.getMessage())) &&
    
    
    ((!okIsSet() && !rhs.okIsSet()) || (okIsSet() && rhs.okIsSet() && getOk() == rhs.getOk())) &&
    
    
    ((!parametersIsSet() && !rhs.parametersIsSet()) || (parametersIsSet() && rhs.parametersIsSet() && getParameters() == rhs.getParameters())) &&
    
    
    ((!submitterIsSet() && !rhs.submitterIsSet()) || (submitterIsSet() && rhs.submitterIsSet() && getSubmitter() == rhs.getSubmitter()))
    
    ;
}

bool InputStepImpl::operator!=(const InputStepImpl& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const InputStepImpl& o)
{
    j = nlohmann::json::object();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.linksIsSet())
        j["_links"] = o.m__links;
    if(o.idIsSet())
        j["id"] = o.m_Id;
    if(o.messageIsSet())
        j["message"] = o.m_Message;
    if(o.okIsSet())
        j["ok"] = o.m_Ok;
    if(o.parametersIsSet() || !o.m_Parameters.empty())
        j["parameters"] = o.m_Parameters;
    if(o.submitterIsSet())
        j["submitter"] = o.m_Submitter;
    
}

void from_json(const nlohmann::json& j, InputStepImpl& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("_links") != j.end())
    {
        j.at("_links").get_to(o.m__links);
        o.m__linksIsSet = true;
    } 
    if(j.find("id") != j.end())
    {
        j.at("id").get_to(o.m_Id);
        o.m_IdIsSet = true;
    } 
    if(j.find("message") != j.end())
    {
        j.at("message").get_to(o.m_Message);
        o.m_MessageIsSet = true;
    } 
    if(j.find("ok") != j.end())
    {
        j.at("ok").get_to(o.m_Ok);
        o.m_OkIsSet = true;
    } 
    if(j.find("parameters") != j.end())
    {
        j.at("parameters").get_to(o.m_Parameters);
        o.m_ParametersIsSet = true;
    } 
    if(j.find("submitter") != j.end())
    {
        j.at("submitter").get_to(o.m_Submitter);
        o.m_SubmitterIsSet = true;
    } 
    
}

std::string InputStepImpl::getClass() const
{
    return m__class;
}
void InputStepImpl::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool InputStepImpl::r_classIsSet() const
{
    return m__classIsSet;
}
void InputStepImpl::unset_class()
{
    m__classIsSet = false;
}
org::openapitools::server::model::InputStepImpllinks InputStepImpl::getLinks() const
{
    return m__links;
}
void InputStepImpl::setLinks(org::openapitools::server::model::InputStepImpllinks const& value)
{
    m__links = value;
    m__linksIsSet = true;
}
bool InputStepImpl::linksIsSet() const
{
    return m__linksIsSet;
}
void InputStepImpl::unset_links()
{
    m__linksIsSet = false;
}
std::string InputStepImpl::getId() const
{
    return m_Id;
}
void InputStepImpl::setId(std::string const& value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool InputStepImpl::idIsSet() const
{
    return m_IdIsSet;
}
void InputStepImpl::unsetId()
{
    m_IdIsSet = false;
}
std::string InputStepImpl::getMessage() const
{
    return m_Message;
}
void InputStepImpl::setMessage(std::string const& value)
{
    m_Message = value;
    m_MessageIsSet = true;
}
bool InputStepImpl::messageIsSet() const
{
    return m_MessageIsSet;
}
void InputStepImpl::unsetMessage()
{
    m_MessageIsSet = false;
}
std::string InputStepImpl::getOk() const
{
    return m_Ok;
}
void InputStepImpl::setOk(std::string const& value)
{
    m_Ok = value;
    m_OkIsSet = true;
}
bool InputStepImpl::okIsSet() const
{
    return m_OkIsSet;
}
void InputStepImpl::unsetOk()
{
    m_OkIsSet = false;
}
std::vector<org::openapitools::server::model::StringParameterDefinition> InputStepImpl::getParameters() const
{
    return m_Parameters;
}
void InputStepImpl::setParameters(std::vector<org::openapitools::server::model::StringParameterDefinition> const& value)
{
    m_Parameters = value;
    m_ParametersIsSet = true;
}
bool InputStepImpl::parametersIsSet() const
{
    return m_ParametersIsSet;
}
void InputStepImpl::unsetParameters()
{
    m_ParametersIsSet = false;
}
std::string InputStepImpl::getSubmitter() const
{
    return m_Submitter;
}
void InputStepImpl::setSubmitter(std::string const& value)
{
    m_Submitter = value;
    m_SubmitterIsSet = true;
}
bool InputStepImpl::submitterIsSet() const
{
    return m_SubmitterIsSet;
}
void InputStepImpl::unsetSubmitter()
{
    m_SubmitterIsSet = false;
}


} // namespace org::openapitools::server::model

