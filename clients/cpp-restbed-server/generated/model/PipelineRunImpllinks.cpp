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



#include "PipelineRunImpllinks.h"

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

PipelineRunImpllinks::PipelineRunImpllinks(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}


std::string PipelineRunImpllinks::toJsonString(bool prettyJson /* = false */) const
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
    // workaround inspired by: https://stackoverflow.com/a/56395440
    std::regex reg("\\\"([0-9]+\\.{0,1}[0-9]*)\\\"");
    std::string result = std::regex_replace(ss.str(), reg, "$1");
    return result;
}

void PipelineRunImpllinks::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree PipelineRunImpllinks::toPropertyTree() const
{
	ptree pt;
	ptree tmp_node;
	pt.add_child("nodes", m_Nodes.toPropertyTree());
	pt.add_child("log", m_Log.toPropertyTree());
	pt.add_child("self", m_Self.toPropertyTree());
	pt.add_child("actions", m_Actions.toPropertyTree());
	pt.add_child("steps", m_Steps.toPropertyTree());
	pt.put("_class", m__class);
	return pt;
}

void PipelineRunImpllinks::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	if (pt.get_child_optional("nodes")) {
        m_Nodes = fromPt<Link>(pt.get_child("nodes"));
	}
	if (pt.get_child_optional("log")) {
        m_Log = fromPt<Link>(pt.get_child("log"));
	}
	if (pt.get_child_optional("self")) {
        m_Self = fromPt<Link>(pt.get_child("self"));
	}
	if (pt.get_child_optional("actions")) {
        m_Actions = fromPt<Link>(pt.get_child("actions"));
	}
	if (pt.get_child_optional("steps")) {
        m_Steps = fromPt<Link>(pt.get_child("steps"));
	}
	m__class = pt.get("_class", "");
}

Link PipelineRunImpllinks::getNodes() const
{
    return m_Nodes;
}

void PipelineRunImpllinks::setNodes(Link value)
{
    m_Nodes = value;
}


Link PipelineRunImpllinks::getLog() const
{
    return m_Log;
}

void PipelineRunImpllinks::setLog(Link value)
{
    m_Log = value;
}


Link PipelineRunImpllinks::getSelf() const
{
    return m_Self;
}

void PipelineRunImpllinks::setSelf(Link value)
{
    m_Self = value;
}


Link PipelineRunImpllinks::getActions() const
{
    return m_Actions;
}

void PipelineRunImpllinks::setActions(Link value)
{
    m_Actions = value;
}


Link PipelineRunImpllinks::getSteps() const
{
    return m_Steps;
}

void PipelineRunImpllinks::setSteps(Link value)
{
    m_Steps = value;
}


std::string PipelineRunImpllinks::get_Class() const
{
    return m__class;
}

void PipelineRunImpllinks::set_Class(std::string value)
{
    m__class = value;
}



std::vector<PipelineRunImpllinks> createPipelineRunImpllinksVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<PipelineRunImpllinks>();
    for (const auto& child: pt) {
        vec.emplace_back(PipelineRunImpllinks(child.second));
    }

    return vec;
}

}
}
}
}

