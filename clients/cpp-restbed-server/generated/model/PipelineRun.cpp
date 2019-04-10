/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "PipelineRun.h"

#include <string>
#include <sstream>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

using boost::property_tree::ptree;
using boost::property_tree::read_json;
using boost::property_tree::write_json;

namespace org {
namespace openapitools {
namespace server {
namespace model {

PipelineRun::PipelineRun()
{
    m__class = "";
    m_DurationInMillis = 0;
    m_EstimatedDurationInMillis = 0;
    m_EnQueueTime = "";
    m_EndTime = "";
    m_Id = "";
    m_Organization = "";
    m_Pipeline = "";
    m_Result = "";
    m_RunSummary = "";
    m_StartTime = "";
    m_State = "";
    m_Type = "";
    m_CommitId = "";
    
}

PipelineRun::~PipelineRun()
{
}

std::string PipelineRun::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	pt.put("_class", m__class);
	pt.put("DurationInMillis", m_DurationInMillis);
	pt.put("EstimatedDurationInMillis", m_EstimatedDurationInMillis);
	pt.put("EnQueueTime", m_EnQueueTime);
	pt.put("EndTime", m_EndTime);
	pt.put("Id", m_Id);
	pt.put("Organization", m_Organization);
	pt.put("Pipeline", m_Pipeline);
	pt.put("Result", m_Result);
	pt.put("RunSummary", m_RunSummary);
	pt.put("StartTime", m_StartTime);
	pt.put("State", m_State);
	pt.put("Type", m_Type);
	pt.put("CommitId", m_CommitId);
	write_json(ss, pt, false);
	return ss.str();
}

void PipelineRun::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	m__class = pt.get("_class", "");
	m_DurationInMillis = pt.get("DurationInMillis", 0);
	m_EstimatedDurationInMillis = pt.get("EstimatedDurationInMillis", 0);
	m_EnQueueTime = pt.get("EnQueueTime", "");
	m_EndTime = pt.get("EndTime", "");
	m_Id = pt.get("Id", "");
	m_Organization = pt.get("Organization", "");
	m_Pipeline = pt.get("Pipeline", "");
	m_Result = pt.get("Result", "");
	m_RunSummary = pt.get("RunSummary", "");
	m_StartTime = pt.get("StartTime", "");
	m_State = pt.get("State", "");
	m_Type = pt.get("Type", "");
	m_CommitId = pt.get("CommitId", "");
}

std::string PipelineRun::getClass() const
{
    return m__class;
}
void PipelineRun::setClass(std::string value)
{
    m__class = value;
}
std::vector<std::shared_ptr<PipelineRunartifacts>> PipelineRun::getArtifacts() const
{
    return m_Artifacts;
}
void PipelineRun::setArtifacts(std::vector<std::shared_ptr<PipelineRunartifacts>> value)
{
    m_Artifacts = value;
}
int32_t PipelineRun::getDurationInMillis() const
{
    return m_DurationInMillis;
}
void PipelineRun::setDurationInMillis(int32_t value)
{
    m_DurationInMillis = value;
}
int32_t PipelineRun::getEstimatedDurationInMillis() const
{
    return m_EstimatedDurationInMillis;
}
void PipelineRun::setEstimatedDurationInMillis(int32_t value)
{
    m_EstimatedDurationInMillis = value;
}
std::string PipelineRun::getEnQueueTime() const
{
    return m_EnQueueTime;
}
void PipelineRun::setEnQueueTime(std::string value)
{
    m_EnQueueTime = value;
}
std::string PipelineRun::getEndTime() const
{
    return m_EndTime;
}
void PipelineRun::setEndTime(std::string value)
{
    m_EndTime = value;
}
std::string PipelineRun::getId() const
{
    return m_Id;
}
void PipelineRun::setId(std::string value)
{
    m_Id = value;
}
std::string PipelineRun::getOrganization() const
{
    return m_Organization;
}
void PipelineRun::setOrganization(std::string value)
{
    m_Organization = value;
}
std::string PipelineRun::getPipeline() const
{
    return m_Pipeline;
}
void PipelineRun::setPipeline(std::string value)
{
    m_Pipeline = value;
}
std::string PipelineRun::getResult() const
{
    return m_Result;
}
void PipelineRun::setResult(std::string value)
{
    m_Result = value;
}
std::string PipelineRun::getRunSummary() const
{
    return m_RunSummary;
}
void PipelineRun::setRunSummary(std::string value)
{
    m_RunSummary = value;
}
std::string PipelineRun::getStartTime() const
{
    return m_StartTime;
}
void PipelineRun::setStartTime(std::string value)
{
    m_StartTime = value;
}
std::string PipelineRun::getState() const
{
    return m_State;
}
void PipelineRun::setState(std::string value)
{
    m_State = value;
}
std::string PipelineRun::getType() const
{
    return m_Type;
}
void PipelineRun::setType(std::string value)
{
    m_Type = value;
}
std::string PipelineRun::getCommitId() const
{
    return m_CommitId;
}
void PipelineRun::setCommitId(std::string value)
{
    m_CommitId = value;
}

}
}
}
}

