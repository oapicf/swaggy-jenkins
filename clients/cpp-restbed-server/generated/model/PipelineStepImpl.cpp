/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.0.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "PipelineStepImpl.h"

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

PipelineStepImpl::PipelineStepImpl(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}

std::string PipelineStepImpl::toJsonString(bool prettyJson /* = false */)
{
    return toJsonString_internal(prettyJson);
}

void PipelineStepImpl::fromJsonString(std::string const& jsonString)
{
    fromJsonString_internal(jsonString);
}

boost::property_tree::ptree PipelineStepImpl::toPropertyTree()
{
    return toPropertyTree_internal();
}

void PipelineStepImpl::fromPropertyTree(boost::property_tree::ptree const& pt)
{
    fromPropertyTree_internal(pt);
}

std::string PipelineStepImpl::toJsonString_internal(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void PipelineStepImpl::fromJsonString_internal(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree PipelineStepImpl::toPropertyTree_internal()
{
	ptree pt;
	ptree tmp_node;
	pt.put("_class", m__class);
	if (m__links != nullptr) {
		pt.add_child("_links", m__links->toPropertyTree());
	}
	pt.put("displayName", m_DisplayName);
	pt.put("durationInMillis", m_DurationInMillis);
	pt.put("id", m_Id);
	if (m_Input != nullptr) {
		pt.add_child("input", m_Input->toPropertyTree());
	}
	pt.put("result", m_Result);
	pt.put("startTime", m_StartTime);
	pt.put("state", m_State);
	return pt;
}

void PipelineStepImpl::fromPropertyTree_internal(ptree const &pt)
{
	ptree tmp_node;
	m__class = pt.get("_class", "");
	if (pt.get_child_optional("_links")) {
		m__links = std::make_shared<PipelineStepImpllinks>();
		m__links->fromPropertyTree(pt.get_child("_links"));
	}
	m_DisplayName = pt.get("displayName", "");
	m_DurationInMillis = pt.get("durationInMillis", 0);
	m_Id = pt.get("id", "");
	if (pt.get_child_optional("input")) {
		m_Input = std::make_shared<InputStepImpl>();
		m_Input->fromPropertyTree(pt.get_child("input"));
	}
	m_Result = pt.get("result", "");
	m_StartTime = pt.get("startTime", "");
	m_State = pt.get("state", "");
}

std::string PipelineStepImpl::get_Class() const
{
    return m__class;
}

void PipelineStepImpl::set_Class(std::string value)
{
	m__class = value;
}
std::shared_ptr<PipelineStepImpllinks> PipelineStepImpl::get_Links() const
{
    return m__links;
}

void PipelineStepImpl::set_Links(std::shared_ptr<PipelineStepImpllinks> value)
{
	m__links = value;
}
std::string PipelineStepImpl::getDisplayName() const
{
    return m_DisplayName;
}

void PipelineStepImpl::setDisplayName(std::string value)
{
	m_DisplayName = value;
}
int32_t PipelineStepImpl::getDurationInMillis() const
{
    return m_DurationInMillis;
}

void PipelineStepImpl::setDurationInMillis(int32_t value)
{
	m_DurationInMillis = value;
}
std::string PipelineStepImpl::getId() const
{
    return m_Id;
}

void PipelineStepImpl::setId(std::string value)
{
	m_Id = value;
}
std::shared_ptr<InputStepImpl> PipelineStepImpl::getInput() const
{
    return m_Input;
}

void PipelineStepImpl::setInput(std::shared_ptr<InputStepImpl> value)
{
	m_Input = value;
}
std::string PipelineStepImpl::getResult() const
{
    return m_Result;
}

void PipelineStepImpl::setResult(std::string value)
{
	m_Result = value;
}
std::string PipelineStepImpl::getStartTime() const
{
    return m_StartTime;
}

void PipelineStepImpl::setStartTime(std::string value)
{
	m_StartTime = value;
}
std::string PipelineStepImpl::getState() const
{
    return m_State;
}

void PipelineStepImpl::setState(std::string value)
{
	m_State = value;
}

std::vector<PipelineStepImpl> createPipelineStepImplVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<PipelineStepImpl>();
    for (const auto& child: pt) {
        vec.emplace_back(PipelineStepImpl(child.second));
    }

    return vec;
}

}
}
}
}

