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


#include "PipelineRunNode.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

PipelineRunNode::PipelineRunNode()
{
    m__class = "";
    m__classIsSet = false;
    m_DisplayName = "";
    m_DisplayNameIsSet = false;
    m_DurationInMillis = 0;
    m_DurationInMillisIsSet = false;
    m_EdgesIsSet = false;
    m_Id = "";
    m_IdIsSet = false;
    m_Result = "";
    m_ResultIsSet = false;
    m_StartTime = "";
    m_StartTimeIsSet = false;
    m_State = "";
    m_StateIsSet = false;
    
}

void PipelineRunNode::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool PipelineRunNode::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool PipelineRunNode::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "PipelineRunNode" : pathPrefix;

                     
    if (edgesIsSet())
    {
        const std::vector<org::openapitools::server::model::PipelineRunNodeedges>& value = m_Edges;
        const std::string currentValuePath = _pathPrefix + ".edges";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const org::openapitools::server::model::PipelineRunNodeedges& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".edges") && success;
 
                i++;
            }
        }

    }
                    
    return success;
}

bool PipelineRunNode::operator==(const PipelineRunNode& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!displayNameIsSet() && !rhs.displayNameIsSet()) || (displayNameIsSet() && rhs.displayNameIsSet() && getDisplayName() == rhs.getDisplayName())) &&
    
    
    ((!durationInMillisIsSet() && !rhs.durationInMillisIsSet()) || (durationInMillisIsSet() && rhs.durationInMillisIsSet() && getDurationInMillis() == rhs.getDurationInMillis())) &&
    
    
    ((!edgesIsSet() && !rhs.edgesIsSet()) || (edgesIsSet() && rhs.edgesIsSet() && getEdges() == rhs.getEdges())) &&
    
    
    ((!idIsSet() && !rhs.idIsSet()) || (idIsSet() && rhs.idIsSet() && getId() == rhs.getId())) &&
    
    
    ((!resultIsSet() && !rhs.resultIsSet()) || (resultIsSet() && rhs.resultIsSet() && getResult() == rhs.getResult())) &&
    
    
    ((!startTimeIsSet() && !rhs.startTimeIsSet()) || (startTimeIsSet() && rhs.startTimeIsSet() && getStartTime() == rhs.getStartTime())) &&
    
    
    ((!stateIsSet() && !rhs.stateIsSet()) || (stateIsSet() && rhs.stateIsSet() && getState() == rhs.getState()))
    
    ;
}

bool PipelineRunNode::operator!=(const PipelineRunNode& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const PipelineRunNode& o)
{
    j = nlohmann::json::object();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.displayNameIsSet())
        j["displayName"] = o.m_DisplayName;
    if(o.durationInMillisIsSet())
        j["durationInMillis"] = o.m_DurationInMillis;
    if(o.edgesIsSet() || !o.m_Edges.empty())
        j["edges"] = o.m_Edges;
    if(o.idIsSet())
        j["id"] = o.m_Id;
    if(o.resultIsSet())
        j["result"] = o.m_Result;
    if(o.startTimeIsSet())
        j["startTime"] = o.m_StartTime;
    if(o.stateIsSet())
        j["state"] = o.m_State;
    
}

void from_json(const nlohmann::json& j, PipelineRunNode& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("displayName") != j.end())
    {
        j.at("displayName").get_to(o.m_DisplayName);
        o.m_DisplayNameIsSet = true;
    } 
    if(j.find("durationInMillis") != j.end())
    {
        j.at("durationInMillis").get_to(o.m_DurationInMillis);
        o.m_DurationInMillisIsSet = true;
    } 
    if(j.find("edges") != j.end())
    {
        j.at("edges").get_to(o.m_Edges);
        o.m_EdgesIsSet = true;
    } 
    if(j.find("id") != j.end())
    {
        j.at("id").get_to(o.m_Id);
        o.m_IdIsSet = true;
    } 
    if(j.find("result") != j.end())
    {
        j.at("result").get_to(o.m_Result);
        o.m_ResultIsSet = true;
    } 
    if(j.find("startTime") != j.end())
    {
        j.at("startTime").get_to(o.m_StartTime);
        o.m_StartTimeIsSet = true;
    } 
    if(j.find("state") != j.end())
    {
        j.at("state").get_to(o.m_State);
        o.m_StateIsSet = true;
    } 
    
}

std::string PipelineRunNode::getClass() const
{
    return m__class;
}
void PipelineRunNode::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool PipelineRunNode::r_classIsSet() const
{
    return m__classIsSet;
}
void PipelineRunNode::unset_class()
{
    m__classIsSet = false;
}
std::string PipelineRunNode::getDisplayName() const
{
    return m_DisplayName;
}
void PipelineRunNode::setDisplayName(std::string const& value)
{
    m_DisplayName = value;
    m_DisplayNameIsSet = true;
}
bool PipelineRunNode::displayNameIsSet() const
{
    return m_DisplayNameIsSet;
}
void PipelineRunNode::unsetDisplayName()
{
    m_DisplayNameIsSet = false;
}
int32_t PipelineRunNode::getDurationInMillis() const
{
    return m_DurationInMillis;
}
void PipelineRunNode::setDurationInMillis(int32_t const value)
{
    m_DurationInMillis = value;
    m_DurationInMillisIsSet = true;
}
bool PipelineRunNode::durationInMillisIsSet() const
{
    return m_DurationInMillisIsSet;
}
void PipelineRunNode::unsetDurationInMillis()
{
    m_DurationInMillisIsSet = false;
}
std::vector<org::openapitools::server::model::PipelineRunNodeedges> PipelineRunNode::getEdges() const
{
    return m_Edges;
}
void PipelineRunNode::setEdges(std::vector<org::openapitools::server::model::PipelineRunNodeedges> const& value)
{
    m_Edges = value;
    m_EdgesIsSet = true;
}
bool PipelineRunNode::edgesIsSet() const
{
    return m_EdgesIsSet;
}
void PipelineRunNode::unsetEdges()
{
    m_EdgesIsSet = false;
}
std::string PipelineRunNode::getId() const
{
    return m_Id;
}
void PipelineRunNode::setId(std::string const& value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool PipelineRunNode::idIsSet() const
{
    return m_IdIsSet;
}
void PipelineRunNode::unsetId()
{
    m_IdIsSet = false;
}
std::string PipelineRunNode::getResult() const
{
    return m_Result;
}
void PipelineRunNode::setResult(std::string const& value)
{
    m_Result = value;
    m_ResultIsSet = true;
}
bool PipelineRunNode::resultIsSet() const
{
    return m_ResultIsSet;
}
void PipelineRunNode::unsetResult()
{
    m_ResultIsSet = false;
}
std::string PipelineRunNode::getStartTime() const
{
    return m_StartTime;
}
void PipelineRunNode::setStartTime(std::string const& value)
{
    m_StartTime = value;
    m_StartTimeIsSet = true;
}
bool PipelineRunNode::startTimeIsSet() const
{
    return m_StartTimeIsSet;
}
void PipelineRunNode::unsetStartTime()
{
    m_StartTimeIsSet = false;
}
std::string PipelineRunNode::getState() const
{
    return m_State;
}
void PipelineRunNode::setState(std::string const& value)
{
    m_State = value;
    m_StateIsSet = true;
}
bool PipelineRunNode::stateIsSet() const
{
    return m_StateIsSet;
}
void PipelineRunNode::unsetState()
{
    m_StateIsSet = false;
}


} // namespace org::openapitools::server::model

