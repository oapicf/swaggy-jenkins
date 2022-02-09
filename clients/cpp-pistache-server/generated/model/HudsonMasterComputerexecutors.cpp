/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.2-pre.0
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "HudsonMasterComputerexecutors.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

HudsonMasterComputerexecutors::HudsonMasterComputerexecutors()
{
    m_CurrentExecutableIsSet = false;
    m_Idle = false;
    m_IdleIsSet = false;
    m_LikelyStuck = false;
    m_LikelyStuckIsSet = false;
    m_number = 0;
    m_numberIsSet = false;
    m_Progress = 0;
    m_ProgressIsSet = false;
    m__class = "";
    m__classIsSet = false;
    
}

void HudsonMasterComputerexecutors::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool HudsonMasterComputerexecutors::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool HudsonMasterComputerexecutors::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "HudsonMasterComputerexecutors" : pathPrefix;

                            
    return success;
}

bool HudsonMasterComputerexecutors::operator==(const HudsonMasterComputerexecutors& rhs) const
{
    return
    
    
    
    ((!currentExecutableIsSet() && !rhs.currentExecutableIsSet()) || (currentExecutableIsSet() && rhs.currentExecutableIsSet() && getCurrentExecutable() == rhs.getCurrentExecutable())) &&
    
    
    ((!idleIsSet() && !rhs.idleIsSet()) || (idleIsSet() && rhs.idleIsSet() && isIdle() == rhs.isIdle())) &&
    
    
    ((!likelyStuckIsSet() && !rhs.likelyStuckIsSet()) || (likelyStuckIsSet() && rhs.likelyStuckIsSet() && isLikelyStuck() == rhs.isLikelyStuck())) &&
    
    
    ((!numberIsSet() && !rhs.numberIsSet()) || (numberIsSet() && rhs.numberIsSet() && getNumber() == rhs.getNumber())) &&
    
    
    ((!progressIsSet() && !rhs.progressIsSet()) || (progressIsSet() && rhs.progressIsSet() && getProgress() == rhs.getProgress())) &&
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass()))
    
    ;
}

bool HudsonMasterComputerexecutors::operator!=(const HudsonMasterComputerexecutors& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const HudsonMasterComputerexecutors& o)
{
    j = nlohmann::json();
    if(o.currentExecutableIsSet())
        j["currentExecutable"] = o.m_CurrentExecutable;
    if(o.idleIsSet())
        j["idle"] = o.m_Idle;
    if(o.likelyStuckIsSet())
        j["likelyStuck"] = o.m_LikelyStuck;
    if(o.numberIsSet())
        j["number"] = o.m_number;
    if(o.progressIsSet())
        j["progress"] = o.m_Progress;
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    
}

void from_json(const nlohmann::json& j, HudsonMasterComputerexecutors& o)
{
    if(j.find("currentExecutable") != j.end())
    {
        j.at("currentExecutable").get_to(o.m_CurrentExecutable);
        o.m_CurrentExecutableIsSet = true;
    } 
    if(j.find("idle") != j.end())
    {
        j.at("idle").get_to(o.m_Idle);
        o.m_IdleIsSet = true;
    } 
    if(j.find("likelyStuck") != j.end())
    {
        j.at("likelyStuck").get_to(o.m_LikelyStuck);
        o.m_LikelyStuckIsSet = true;
    } 
    if(j.find("number") != j.end())
    {
        j.at("number").get_to(o.m_number);
        o.m_numberIsSet = true;
    } 
    if(j.find("progress") != j.end())
    {
        j.at("progress").get_to(o.m_Progress);
        o.m_ProgressIsSet = true;
    } 
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    
}

FreeStyleBuild HudsonMasterComputerexecutors::getCurrentExecutable() const
{
    return m_CurrentExecutable;
}
void HudsonMasterComputerexecutors::setCurrentExecutable(FreeStyleBuild const& value)
{
    m_CurrentExecutable = value;
    m_CurrentExecutableIsSet = true;
}
bool HudsonMasterComputerexecutors::currentExecutableIsSet() const
{
    return m_CurrentExecutableIsSet;
}
void HudsonMasterComputerexecutors::unsetCurrentExecutable()
{
    m_CurrentExecutableIsSet = false;
}
bool HudsonMasterComputerexecutors::isIdle() const
{
    return m_Idle;
}
void HudsonMasterComputerexecutors::setIdle(bool const value)
{
    m_Idle = value;
    m_IdleIsSet = true;
}
bool HudsonMasterComputerexecutors::idleIsSet() const
{
    return m_IdleIsSet;
}
void HudsonMasterComputerexecutors::unsetIdle()
{
    m_IdleIsSet = false;
}
bool HudsonMasterComputerexecutors::isLikelyStuck() const
{
    return m_LikelyStuck;
}
void HudsonMasterComputerexecutors::setLikelyStuck(bool const value)
{
    m_LikelyStuck = value;
    m_LikelyStuckIsSet = true;
}
bool HudsonMasterComputerexecutors::likelyStuckIsSet() const
{
    return m_LikelyStuckIsSet;
}
void HudsonMasterComputerexecutors::unsetLikelyStuck()
{
    m_LikelyStuckIsSet = false;
}
int32_t HudsonMasterComputerexecutors::getNumber() const
{
    return m_number;
}
void HudsonMasterComputerexecutors::setNumber(int32_t const value)
{
    m_number = value;
    m_numberIsSet = true;
}
bool HudsonMasterComputerexecutors::numberIsSet() const
{
    return m_numberIsSet;
}
void HudsonMasterComputerexecutors::unsetnumber()
{
    m_numberIsSet = false;
}
int32_t HudsonMasterComputerexecutors::getProgress() const
{
    return m_Progress;
}
void HudsonMasterComputerexecutors::setProgress(int32_t const value)
{
    m_Progress = value;
    m_ProgressIsSet = true;
}
bool HudsonMasterComputerexecutors::progressIsSet() const
{
    return m_ProgressIsSet;
}
void HudsonMasterComputerexecutors::unsetProgress()
{
    m_ProgressIsSet = false;
}
std::string HudsonMasterComputerexecutors::getClass() const
{
    return m__class;
}
void HudsonMasterComputerexecutors::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool HudsonMasterComputerexecutors::r_classIsSet() const
{
    return m__classIsSet;
}
void HudsonMasterComputerexecutors::unset_class()
{
    m__classIsSet = false;
}


} // namespace org::openapitools::server::model

