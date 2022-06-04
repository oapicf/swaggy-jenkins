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


#include "QueueBlockedItem.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

QueueBlockedItem::QueueBlockedItem()
{
    m__class = "";
    m__classIsSet = false;
    m_ActionsIsSet = false;
    m_Blocked = false;
    m_BlockedIsSet = false;
    m_Buildable = false;
    m_BuildableIsSet = false;
    m_Id = 0;
    m_IdIsSet = false;
    m_InQueueSince = 0;
    m_InQueueSinceIsSet = false;
    m_Params = "";
    m_ParamsIsSet = false;
    m_Stuck = false;
    m_StuckIsSet = false;
    m_TaskIsSet = false;
    m_Url = "";
    m_UrlIsSet = false;
    m_Why = "";
    m_WhyIsSet = false;
    m_BuildableStartMilliseconds = 0;
    m_BuildableStartMillisecondsIsSet = false;
    
}

void QueueBlockedItem::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool QueueBlockedItem::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool QueueBlockedItem::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "QueueBlockedItem" : pathPrefix;

             
    if (actionsIsSet())
    {
        const std::vector<org::openapitools::server::model::CauseAction>& value = m_Actions;
        const std::string currentValuePath = _pathPrefix + ".actions";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const org::openapitools::server::model::CauseAction& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".actions") && success;
 
                i++;
            }
        }

    }
                                            
    return success;
}

bool QueueBlockedItem::operator==(const QueueBlockedItem& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!actionsIsSet() && !rhs.actionsIsSet()) || (actionsIsSet() && rhs.actionsIsSet() && getActions() == rhs.getActions())) &&
    
    
    ((!blockedIsSet() && !rhs.blockedIsSet()) || (blockedIsSet() && rhs.blockedIsSet() && isBlocked() == rhs.isBlocked())) &&
    
    
    ((!buildableIsSet() && !rhs.buildableIsSet()) || (buildableIsSet() && rhs.buildableIsSet() && isBuildable() == rhs.isBuildable())) &&
    
    
    ((!idIsSet() && !rhs.idIsSet()) || (idIsSet() && rhs.idIsSet() && getId() == rhs.getId())) &&
    
    
    ((!inQueueSinceIsSet() && !rhs.inQueueSinceIsSet()) || (inQueueSinceIsSet() && rhs.inQueueSinceIsSet() && getInQueueSince() == rhs.getInQueueSince())) &&
    
    
    ((!paramsIsSet() && !rhs.paramsIsSet()) || (paramsIsSet() && rhs.paramsIsSet() && getParams() == rhs.getParams())) &&
    
    
    ((!stuckIsSet() && !rhs.stuckIsSet()) || (stuckIsSet() && rhs.stuckIsSet() && isStuck() == rhs.isStuck())) &&
    
    
    ((!taskIsSet() && !rhs.taskIsSet()) || (taskIsSet() && rhs.taskIsSet() && getTask() == rhs.getTask())) &&
    
    
    ((!urlIsSet() && !rhs.urlIsSet()) || (urlIsSet() && rhs.urlIsSet() && getUrl() == rhs.getUrl())) &&
    
    
    ((!whyIsSet() && !rhs.whyIsSet()) || (whyIsSet() && rhs.whyIsSet() && getWhy() == rhs.getWhy())) &&
    
    
    ((!buildableStartMillisecondsIsSet() && !rhs.buildableStartMillisecondsIsSet()) || (buildableStartMillisecondsIsSet() && rhs.buildableStartMillisecondsIsSet() && getBuildableStartMilliseconds() == rhs.getBuildableStartMilliseconds()))
    
    ;
}

bool QueueBlockedItem::operator!=(const QueueBlockedItem& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const QueueBlockedItem& o)
{
    j = nlohmann::json();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.actionsIsSet() || !o.m_Actions.empty())
        j["actions"] = o.m_Actions;
    if(o.blockedIsSet())
        j["blocked"] = o.m_Blocked;
    if(o.buildableIsSet())
        j["buildable"] = o.m_Buildable;
    if(o.idIsSet())
        j["id"] = o.m_Id;
    if(o.inQueueSinceIsSet())
        j["inQueueSince"] = o.m_InQueueSince;
    if(o.paramsIsSet())
        j["params"] = o.m_Params;
    if(o.stuckIsSet())
        j["stuck"] = o.m_Stuck;
    if(o.taskIsSet())
        j["task"] = o.m_Task;
    if(o.urlIsSet())
        j["url"] = o.m_Url;
    if(o.whyIsSet())
        j["why"] = o.m_Why;
    if(o.buildableStartMillisecondsIsSet())
        j["buildableStartMilliseconds"] = o.m_BuildableStartMilliseconds;
    
}

void from_json(const nlohmann::json& j, QueueBlockedItem& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("actions") != j.end())
    {
        j.at("actions").get_to(o.m_Actions);
        o.m_ActionsIsSet = true;
    } 
    if(j.find("blocked") != j.end())
    {
        j.at("blocked").get_to(o.m_Blocked);
        o.m_BlockedIsSet = true;
    } 
    if(j.find("buildable") != j.end())
    {
        j.at("buildable").get_to(o.m_Buildable);
        o.m_BuildableIsSet = true;
    } 
    if(j.find("id") != j.end())
    {
        j.at("id").get_to(o.m_Id);
        o.m_IdIsSet = true;
    } 
    if(j.find("inQueueSince") != j.end())
    {
        j.at("inQueueSince").get_to(o.m_InQueueSince);
        o.m_InQueueSinceIsSet = true;
    } 
    if(j.find("params") != j.end())
    {
        j.at("params").get_to(o.m_Params);
        o.m_ParamsIsSet = true;
    } 
    if(j.find("stuck") != j.end())
    {
        j.at("stuck").get_to(o.m_Stuck);
        o.m_StuckIsSet = true;
    } 
    if(j.find("task") != j.end())
    {
        j.at("task").get_to(o.m_Task);
        o.m_TaskIsSet = true;
    } 
    if(j.find("url") != j.end())
    {
        j.at("url").get_to(o.m_Url);
        o.m_UrlIsSet = true;
    } 
    if(j.find("why") != j.end())
    {
        j.at("why").get_to(o.m_Why);
        o.m_WhyIsSet = true;
    } 
    if(j.find("buildableStartMilliseconds") != j.end())
    {
        j.at("buildableStartMilliseconds").get_to(o.m_BuildableStartMilliseconds);
        o.m_BuildableStartMillisecondsIsSet = true;
    } 
    
}

std::string QueueBlockedItem::getClass() const
{
    return m__class;
}
void QueueBlockedItem::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool QueueBlockedItem::r_classIsSet() const
{
    return m__classIsSet;
}
void QueueBlockedItem::unset_class()
{
    m__classIsSet = false;
}
std::vector<org::openapitools::server::model::CauseAction> QueueBlockedItem::getActions() const
{
    return m_Actions;
}
void QueueBlockedItem::setActions(std::vector<org::openapitools::server::model::CauseAction> const& value)
{
    m_Actions = value;
    m_ActionsIsSet = true;
}
bool QueueBlockedItem::actionsIsSet() const
{
    return m_ActionsIsSet;
}
void QueueBlockedItem::unsetActions()
{
    m_ActionsIsSet = false;
}
bool QueueBlockedItem::isBlocked() const
{
    return m_Blocked;
}
void QueueBlockedItem::setBlocked(bool const value)
{
    m_Blocked = value;
    m_BlockedIsSet = true;
}
bool QueueBlockedItem::blockedIsSet() const
{
    return m_BlockedIsSet;
}
void QueueBlockedItem::unsetBlocked()
{
    m_BlockedIsSet = false;
}
bool QueueBlockedItem::isBuildable() const
{
    return m_Buildable;
}
void QueueBlockedItem::setBuildable(bool const value)
{
    m_Buildable = value;
    m_BuildableIsSet = true;
}
bool QueueBlockedItem::buildableIsSet() const
{
    return m_BuildableIsSet;
}
void QueueBlockedItem::unsetBuildable()
{
    m_BuildableIsSet = false;
}
int32_t QueueBlockedItem::getId() const
{
    return m_Id;
}
void QueueBlockedItem::setId(int32_t const value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool QueueBlockedItem::idIsSet() const
{
    return m_IdIsSet;
}
void QueueBlockedItem::unsetId()
{
    m_IdIsSet = false;
}
int32_t QueueBlockedItem::getInQueueSince() const
{
    return m_InQueueSince;
}
void QueueBlockedItem::setInQueueSince(int32_t const value)
{
    m_InQueueSince = value;
    m_InQueueSinceIsSet = true;
}
bool QueueBlockedItem::inQueueSinceIsSet() const
{
    return m_InQueueSinceIsSet;
}
void QueueBlockedItem::unsetInQueueSince()
{
    m_InQueueSinceIsSet = false;
}
std::string QueueBlockedItem::getParams() const
{
    return m_Params;
}
void QueueBlockedItem::setParams(std::string const& value)
{
    m_Params = value;
    m_ParamsIsSet = true;
}
bool QueueBlockedItem::paramsIsSet() const
{
    return m_ParamsIsSet;
}
void QueueBlockedItem::unsetParams()
{
    m_ParamsIsSet = false;
}
bool QueueBlockedItem::isStuck() const
{
    return m_Stuck;
}
void QueueBlockedItem::setStuck(bool const value)
{
    m_Stuck = value;
    m_StuckIsSet = true;
}
bool QueueBlockedItem::stuckIsSet() const
{
    return m_StuckIsSet;
}
void QueueBlockedItem::unsetStuck()
{
    m_StuckIsSet = false;
}
org::openapitools::server::model::FreeStyleProject QueueBlockedItem::getTask() const
{
    return m_Task;
}
void QueueBlockedItem::setTask(org::openapitools::server::model::FreeStyleProject const& value)
{
    m_Task = value;
    m_TaskIsSet = true;
}
bool QueueBlockedItem::taskIsSet() const
{
    return m_TaskIsSet;
}
void QueueBlockedItem::unsetTask()
{
    m_TaskIsSet = false;
}
std::string QueueBlockedItem::getUrl() const
{
    return m_Url;
}
void QueueBlockedItem::setUrl(std::string const& value)
{
    m_Url = value;
    m_UrlIsSet = true;
}
bool QueueBlockedItem::urlIsSet() const
{
    return m_UrlIsSet;
}
void QueueBlockedItem::unsetUrl()
{
    m_UrlIsSet = false;
}
std::string QueueBlockedItem::getWhy() const
{
    return m_Why;
}
void QueueBlockedItem::setWhy(std::string const& value)
{
    m_Why = value;
    m_WhyIsSet = true;
}
bool QueueBlockedItem::whyIsSet() const
{
    return m_WhyIsSet;
}
void QueueBlockedItem::unsetWhy()
{
    m_WhyIsSet = false;
}
int32_t QueueBlockedItem::getBuildableStartMilliseconds() const
{
    return m_BuildableStartMilliseconds;
}
void QueueBlockedItem::setBuildableStartMilliseconds(int32_t const value)
{
    m_BuildableStartMilliseconds = value;
    m_BuildableStartMillisecondsIsSet = true;
}
bool QueueBlockedItem::buildableStartMillisecondsIsSet() const
{
    return m_BuildableStartMillisecondsIsSet;
}
void QueueBlockedItem::unsetBuildableStartMilliseconds()
{
    m_BuildableStartMillisecondsIsSet = false;
}


} // namespace org::openapitools::server::model

