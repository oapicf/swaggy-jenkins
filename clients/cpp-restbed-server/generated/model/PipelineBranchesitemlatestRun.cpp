/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "PipelineBranchesitemlatestRun.h"

#include <string>
#include <vector>
#include <map>
#include <sstream>
#include <stdexcept>
#include <regex>
#include <boost/lexical_cast.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include "helpers.h"

using boost::property_tree::ptree;
using boost::property_tree::read_json;
using boost::property_tree::write_json;

namespace org {
namespace openapitools {
namespace server {
namespace model {

PipelineBranchesitemlatestRun::PipelineBranchesitemlatestRun(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}


std::string PipelineBranchesitemlatestRun::toJsonString(bool prettyJson /* = false */) const
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
    // workaround inspired by: https://stackoverflow.com/a/56395440
    std::regex reg("\\\"([0-9]+\\.{0,1}[0-9]*)\\\"");
    std::string result = std::regex_replace(ss.str(), reg, "$1");
    return result;
}

void PipelineBranchesitemlatestRun::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree PipelineBranchesitemlatestRun::toPropertyTree() const
{
	ptree pt;
	ptree tmp_node;
	pt.put("durationInMillis", m_DurationInMillis);
	pt.put("estimatedDurationInMillis", m_EstimatedDurationInMillis);
	pt.put("enQueueTime", m_EnQueueTime);
	pt.put("endTime", m_EndTime);
	pt.put("id", m_Id);
	pt.put("organization", m_Organization);
	pt.put("pipeline", m_Pipeline);
	pt.put("result", m_Result);
	pt.put("runSummary", m_RunSummary);
	pt.put("startTime", m_StartTime);
	pt.put("state", m_State);
	pt.put("type", m_Type);
	pt.put("commitId", m_CommitId);
	pt.put("_class", m__class);
	return pt;
}

void PipelineBranchesitemlatestRun::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	m_DurationInMillis = pt.get("durationInMillis", 0);
	m_EstimatedDurationInMillis = pt.get("estimatedDurationInMillis", 0);
	m_EnQueueTime = pt.get("enQueueTime", "");
	m_EndTime = pt.get("endTime", "");
	m_Id = pt.get("id", "");
	m_Organization = pt.get("organization", "");
	m_Pipeline = pt.get("pipeline", "");
	m_Result = pt.get("result", "");
	m_RunSummary = pt.get("runSummary", "");
	m_StartTime = pt.get("startTime", "");
	m_State = pt.get("state", "");
	m_Type = pt.get("type", "");
	m_CommitId = pt.get("commitId", "");
	m__class = pt.get("_class", "");
}

int32_t PipelineBranchesitemlatestRun::getDurationInMillis() const
{
    return m_DurationInMillis;
}

void PipelineBranchesitemlatestRun::setDurationInMillis(int32_t value)
{
    m_DurationInMillis = value;
}


int32_t PipelineBranchesitemlatestRun::getEstimatedDurationInMillis() const
{
    return m_EstimatedDurationInMillis;
}

void PipelineBranchesitemlatestRun::setEstimatedDurationInMillis(int32_t value)
{
    m_EstimatedDurationInMillis = value;
}


std::string PipelineBranchesitemlatestRun::getEnQueueTime() const
{
    return m_EnQueueTime;
}

void PipelineBranchesitemlatestRun::setEnQueueTime(std::string value)
{
    m_EnQueueTime = value;
}


std::string PipelineBranchesitemlatestRun::getEndTime() const
{
    return m_EndTime;
}

void PipelineBranchesitemlatestRun::setEndTime(std::string value)
{
    m_EndTime = value;
}


std::string PipelineBranchesitemlatestRun::getId() const
{
    return m_Id;
}

void PipelineBranchesitemlatestRun::setId(std::string value)
{
    m_Id = value;
}


std::string PipelineBranchesitemlatestRun::getOrganization() const
{
    return m_Organization;
}

void PipelineBranchesitemlatestRun::setOrganization(std::string value)
{
    m_Organization = value;
}


std::string PipelineBranchesitemlatestRun::getPipeline() const
{
    return m_Pipeline;
}

void PipelineBranchesitemlatestRun::setPipeline(std::string value)
{
    m_Pipeline = value;
}


std::string PipelineBranchesitemlatestRun::getResult() const
{
    return m_Result;
}

void PipelineBranchesitemlatestRun::setResult(std::string value)
{
    m_Result = value;
}


std::string PipelineBranchesitemlatestRun::getRunSummary() const
{
    return m_RunSummary;
}

void PipelineBranchesitemlatestRun::setRunSummary(std::string value)
{
    m_RunSummary = value;
}


std::string PipelineBranchesitemlatestRun::getStartTime() const
{
    return m_StartTime;
}

void PipelineBranchesitemlatestRun::setStartTime(std::string value)
{
    m_StartTime = value;
}


std::string PipelineBranchesitemlatestRun::getState() const
{
    return m_State;
}

void PipelineBranchesitemlatestRun::setState(std::string value)
{
    m_State = value;
}


std::string PipelineBranchesitemlatestRun::getType() const
{
    return m_Type;
}

void PipelineBranchesitemlatestRun::setType(std::string value)
{
    m_Type = value;
}


std::string PipelineBranchesitemlatestRun::getCommitId() const
{
    return m_CommitId;
}

void PipelineBranchesitemlatestRun::setCommitId(std::string value)
{
    m_CommitId = value;
}


std::string PipelineBranchesitemlatestRun::get_Class() const
{
    return m__class;
}

void PipelineBranchesitemlatestRun::set_Class(std::string value)
{
    m__class = value;
}



std::vector<PipelineBranchesitemlatestRun> createPipelineBranchesitemlatestRunVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<PipelineBranchesitemlatestRun>();
    for (const auto& child: pt) {
        vec.emplace_back(PipelineBranchesitemlatestRun(child.second));
    }

    return vec;
}

}
}
}
}

