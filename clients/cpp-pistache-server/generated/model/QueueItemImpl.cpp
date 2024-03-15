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


#include "QueueItemImpl.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

QueueItemImpl::QueueItemImpl()
{
    m__class = "";
    m__classIsSet = false;
    m_ExpectedBuildNumber = 0;
    m_ExpectedBuildNumberIsSet = false;
    m_Id = "";
    m_IdIsSet = false;
    m_Pipeline = "";
    m_PipelineIsSet = false;
    m_QueuedTime = 0;
    m_QueuedTimeIsSet = false;
    
}

void QueueItemImpl::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool QueueItemImpl::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool QueueItemImpl::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "QueueItemImpl" : pathPrefix;

                        
    return success;
}

bool QueueItemImpl::operator==(const QueueItemImpl& rhs) const
{
    return
    
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass())) &&
    
    
    ((!expectedBuildNumberIsSet() && !rhs.expectedBuildNumberIsSet()) || (expectedBuildNumberIsSet() && rhs.expectedBuildNumberIsSet() && getExpectedBuildNumber() == rhs.getExpectedBuildNumber())) &&
    
    
    ((!idIsSet() && !rhs.idIsSet()) || (idIsSet() && rhs.idIsSet() && getId() == rhs.getId())) &&
    
    
    ((!pipelineIsSet() && !rhs.pipelineIsSet()) || (pipelineIsSet() && rhs.pipelineIsSet() && getPipeline() == rhs.getPipeline())) &&
    
    
    ((!queuedTimeIsSet() && !rhs.queuedTimeIsSet()) || (queuedTimeIsSet() && rhs.queuedTimeIsSet() && getQueuedTime() == rhs.getQueuedTime()))
    
    ;
}

bool QueueItemImpl::operator!=(const QueueItemImpl& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const QueueItemImpl& o)
{
    j = nlohmann::json::object();
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    if(o.expectedBuildNumberIsSet())
        j["expectedBuildNumber"] = o.m_ExpectedBuildNumber;
    if(o.idIsSet())
        j["id"] = o.m_Id;
    if(o.pipelineIsSet())
        j["pipeline"] = o.m_Pipeline;
    if(o.queuedTimeIsSet())
        j["queuedTime"] = o.m_QueuedTime;
    
}

void from_json(const nlohmann::json& j, QueueItemImpl& o)
{
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    if(j.find("expectedBuildNumber") != j.end())
    {
        j.at("expectedBuildNumber").get_to(o.m_ExpectedBuildNumber);
        o.m_ExpectedBuildNumberIsSet = true;
    } 
    if(j.find("id") != j.end())
    {
        j.at("id").get_to(o.m_Id);
        o.m_IdIsSet = true;
    } 
    if(j.find("pipeline") != j.end())
    {
        j.at("pipeline").get_to(o.m_Pipeline);
        o.m_PipelineIsSet = true;
    } 
    if(j.find("queuedTime") != j.end())
    {
        j.at("queuedTime").get_to(o.m_QueuedTime);
        o.m_QueuedTimeIsSet = true;
    } 
    
}

std::string QueueItemImpl::getClass() const
{
    return m__class;
}
void QueueItemImpl::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool QueueItemImpl::r_classIsSet() const
{
    return m__classIsSet;
}
void QueueItemImpl::unset_class()
{
    m__classIsSet = false;
}
int32_t QueueItemImpl::getExpectedBuildNumber() const
{
    return m_ExpectedBuildNumber;
}
void QueueItemImpl::setExpectedBuildNumber(int32_t const value)
{
    m_ExpectedBuildNumber = value;
    m_ExpectedBuildNumberIsSet = true;
}
bool QueueItemImpl::expectedBuildNumberIsSet() const
{
    return m_ExpectedBuildNumberIsSet;
}
void QueueItemImpl::unsetExpectedBuildNumber()
{
    m_ExpectedBuildNumberIsSet = false;
}
std::string QueueItemImpl::getId() const
{
    return m_Id;
}
void QueueItemImpl::setId(std::string const& value)
{
    m_Id = value;
    m_IdIsSet = true;
}
bool QueueItemImpl::idIsSet() const
{
    return m_IdIsSet;
}
void QueueItemImpl::unsetId()
{
    m_IdIsSet = false;
}
std::string QueueItemImpl::getPipeline() const
{
    return m_Pipeline;
}
void QueueItemImpl::setPipeline(std::string const& value)
{
    m_Pipeline = value;
    m_PipelineIsSet = true;
}
bool QueueItemImpl::pipelineIsSet() const
{
    return m_PipelineIsSet;
}
void QueueItemImpl::unsetPipeline()
{
    m_PipelineIsSet = false;
}
int32_t QueueItemImpl::getQueuedTime() const
{
    return m_QueuedTime;
}
void QueueItemImpl::setQueuedTime(int32_t const value)
{
    m_QueuedTime = value;
    m_QueuedTimeIsSet = true;
}
bool QueueItemImpl::queuedTimeIsSet() const
{
    return m_QueuedTimeIsSet;
}
void QueueItemImpl::unsetQueuedTime()
{
    m_QueuedTimeIsSet = false;
}


} // namespace org::openapitools::server::model

