/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "PipelineBranchesitem.h"

#include <string>
#include <vector>
#include <sstream>
#include <stdexcept>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

using boost::property_tree::ptree;
using boost::property_tree::read_json;
using boost::property_tree::write_json;

namespace org {
namespace openapitools {
namespace server {
namespace model {

PipelineBranchesitem::PipelineBranchesitem(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}

std::string PipelineBranchesitem::toJsonString(bool prettyJson /* = false */)
{
    return toJsonString_internal(prettyJson);
}

void PipelineBranchesitem::fromJsonString(std::string const& jsonString)
{
    fromJsonString_internal(jsonString);
}

boost::property_tree::ptree PipelineBranchesitem::toPropertyTree()
{
    return toPropertyTree_internal();
}

void PipelineBranchesitem::fromPropertyTree(boost::property_tree::ptree const& pt)
{
    fromPropertyTree_internal(pt);
}

std::string PipelineBranchesitem::toJsonString_internal(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void PipelineBranchesitem::fromJsonString_internal(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree PipelineBranchesitem::toPropertyTree_internal()
{
	ptree pt;
	ptree tmp_node;
	pt.put("displayName", m_DisplayName);
	pt.put("estimatedDurationInMillis", m_EstimatedDurationInMillis);
	pt.put("name", m_Name);
	pt.put("weatherScore", m_WeatherScore);
	if (m_LatestRun != nullptr) {
		pt.add_child("latestRun", m_LatestRun->toPropertyTree());
	}
	pt.put("organization", m_Organization);
	if (m_PullRequest != nullptr) {
		pt.add_child("pullRequest", m_PullRequest->toPropertyTree());
	}
	pt.put("totalNumberOfPullRequests", m_TotalNumberOfPullRequests);
	pt.put("_class", m__class);
	return pt;
}

void PipelineBranchesitem::fromPropertyTree_internal(ptree const &pt)
{
	ptree tmp_node;
	m_DisplayName = pt.get("displayName", "");
	m_EstimatedDurationInMillis = pt.get("estimatedDurationInMillis", 0);
	m_Name = pt.get("name", "");
	m_WeatherScore = pt.get("weatherScore", 0);
	if (pt.get_child_optional("latestRun")) {
		m_LatestRun = std::make_shared<PipelineBranchesitemlatestRun>();
		m_LatestRun->fromPropertyTree(pt.get_child("latestRun"));
	}
	m_Organization = pt.get("organization", "");
	if (pt.get_child_optional("pullRequest")) {
		m_PullRequest = std::make_shared<PipelineBranchesitempullRequest>();
		m_PullRequest->fromPropertyTree(pt.get_child("pullRequest"));
	}
	m_TotalNumberOfPullRequests = pt.get("totalNumberOfPullRequests", 0);
	m__class = pt.get("_class", "");
}

std::string PipelineBranchesitem::getDisplayName() const
{
    return m_DisplayName;
}

void PipelineBranchesitem::setDisplayName(std::string value)
{
	m_DisplayName = value;
}
int32_t PipelineBranchesitem::getEstimatedDurationInMillis() const
{
    return m_EstimatedDurationInMillis;
}

void PipelineBranchesitem::setEstimatedDurationInMillis(int32_t value)
{
	m_EstimatedDurationInMillis = value;
}
std::string PipelineBranchesitem::getName() const
{
    return m_Name;
}

void PipelineBranchesitem::setName(std::string value)
{
	m_Name = value;
}
int32_t PipelineBranchesitem::getWeatherScore() const
{
    return m_WeatherScore;
}

void PipelineBranchesitem::setWeatherScore(int32_t value)
{
	m_WeatherScore = value;
}
std::shared_ptr<PipelineBranchesitemlatestRun> PipelineBranchesitem::getLatestRun() const
{
    return m_LatestRun;
}

void PipelineBranchesitem::setLatestRun(std::shared_ptr<PipelineBranchesitemlatestRun> value)
{
	m_LatestRun = value;
}
std::string PipelineBranchesitem::getOrganization() const
{
    return m_Organization;
}

void PipelineBranchesitem::setOrganization(std::string value)
{
	m_Organization = value;
}
std::shared_ptr<PipelineBranchesitempullRequest> PipelineBranchesitem::getPullRequest() const
{
    return m_PullRequest;
}

void PipelineBranchesitem::setPullRequest(std::shared_ptr<PipelineBranchesitempullRequest> value)
{
	m_PullRequest = value;
}
int32_t PipelineBranchesitem::getTotalNumberOfPullRequests() const
{
    return m_TotalNumberOfPullRequests;
}

void PipelineBranchesitem::setTotalNumberOfPullRequests(int32_t value)
{
	m_TotalNumberOfPullRequests = value;
}
std::string PipelineBranchesitem::get_Class() const
{
    return m__class;
}

void PipelineBranchesitem::set_Class(std::string value)
{
	m__class = value;
}

std::vector<PipelineBranchesitem> createPipelineBranchesitemVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<PipelineBranchesitem>();
    for (const auto& child: pt) {
        vec.emplace_back(PipelineBranchesitem(child.second));
    }

    return vec;
}

}
}
}
}

