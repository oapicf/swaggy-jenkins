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


#include "QueueItemImpl.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

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

QueueItemImpl::~QueueItemImpl()
{
}

void QueueItemImpl::validate()
{
    // TODO: implement validation
}

nlohmann::json QueueItemImpl::toJson() const
{
    nlohmann::json val = nlohmann::json::object();

    if(m__classIsSet)
    {
        val["_class"] = ModelBase::toJson(m__class);
    }
    if(m_ExpectedBuildNumberIsSet)
    {
        val["expectedBuildNumber"] = m_ExpectedBuildNumber;
    }
    if(m_IdIsSet)
    {
        val["id"] = ModelBase::toJson(m_Id);
    }
    if(m_PipelineIsSet)
    {
        val["pipeline"] = ModelBase::toJson(m_Pipeline);
    }
    if(m_QueuedTimeIsSet)
    {
        val["queuedTime"] = m_QueuedTime;
    }
    

    return val;
}

void QueueItemImpl::fromJson(nlohmann::json& val)
{
    if(val.find("_class") != val.end())
    {
        setClass(val.at("_class"));
    }
    if(val.find("expectedBuildNumber") != val.end())
    {
        setExpectedBuildNumber(val.at("expectedBuildNumber"));
    }
    if(val.find("id") != val.end())
    {
        setId(val.at("id"));
    }
    if(val.find("pipeline") != val.end())
    {
        setPipeline(val.at("pipeline"));
    }
    if(val.find("queuedTime") != val.end())
    {
        setQueuedTime(val.at("queuedTime"));
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
bool QueueItemImpl::classIsSet() const
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

}
}
}
}

