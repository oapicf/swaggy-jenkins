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



#include "PipelineStepImpllinks.h"

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

PipelineStepImpllinks::PipelineStepImpllinks(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}

std::string PipelineStepImpllinks::toJsonString(bool prettyJson /* = false */)
{
    return toJsonString_internal(prettyJson);
}

void PipelineStepImpllinks::fromJsonString(std::string const& jsonString)
{
    fromJsonString_internal(jsonString);
}

boost::property_tree::ptree PipelineStepImpllinks::toPropertyTree()
{
    return toPropertyTree_internal();
}

void PipelineStepImpllinks::fromPropertyTree(boost::property_tree::ptree const& pt)
{
    fromPropertyTree_internal(pt);
}

std::string PipelineStepImpllinks::toJsonString_internal(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void PipelineStepImpllinks::fromJsonString_internal(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree PipelineStepImpllinks::toPropertyTree_internal()
{
	ptree pt;
	ptree tmp_node;
	if (m_Self != nullptr) {
		pt.add_child("self", m_Self->toPropertyTree());
	}
	if (m_Actions != nullptr) {
		pt.add_child("actions", m_Actions->toPropertyTree());
	}
	pt.put("_class", m__class);
	return pt;
}

void PipelineStepImpllinks::fromPropertyTree_internal(ptree const &pt)
{
	ptree tmp_node;
	if (pt.get_child_optional("self")) {
		m_Self = std::make_shared<Link>();
		m_Self->fromPropertyTree(pt.get_child("self"));
	}
	if (pt.get_child_optional("actions")) {
		m_Actions = std::make_shared<Link>();
		m_Actions->fromPropertyTree(pt.get_child("actions"));
	}
	m__class = pt.get("_class", "");
}

std::shared_ptr<Link> PipelineStepImpllinks::getSelf() const
{
    return m_Self;
}

void PipelineStepImpllinks::setSelf(std::shared_ptr<Link> value)
{
	m_Self = value;
}
std::shared_ptr<Link> PipelineStepImpllinks::getActions() const
{
    return m_Actions;
}

void PipelineStepImpllinks::setActions(std::shared_ptr<Link> value)
{
	m_Actions = value;
}
std::string PipelineStepImpllinks::get_Class() const
{
    return m__class;
}

void PipelineStepImpllinks::set_Class(std::string value)
{
	m__class = value;
}

std::vector<PipelineStepImpllinks> createPipelineStepImpllinksVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<PipelineStepImpllinks>();
    for (const auto& child: pt) {
        vec.emplace_back(PipelineStepImpllinks(child.second));
    }

    return vec;
}

}
}
}
}

