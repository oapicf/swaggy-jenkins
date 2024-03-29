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



#include "BranchImpllinks.h"

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

BranchImpllinks::BranchImpllinks(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}


std::string BranchImpllinks::toJsonString(bool prettyJson /* = false */) const
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
    // workaround inspired by: https://stackoverflow.com/a/56395440
    std::regex reg("\\\"([0-9]+\\.{0,1}[0-9]*)\\\"");
    std::string result = std::regex_replace(ss.str(), reg, "$1");
    return result;
}

void BranchImpllinks::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree BranchImpllinks::toPropertyTree() const
{
	ptree pt;
	ptree tmp_node;
	pt.add_child("self", m_Self.toPropertyTree());
	pt.add_child("actions", m_Actions.toPropertyTree());
	pt.add_child("runs", m_Runs.toPropertyTree());
	pt.add_child("queue", m_Queue.toPropertyTree());
	pt.put("_class", m__class);
	return pt;
}

void BranchImpllinks::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	if (pt.get_child_optional("self")) {
        m_Self = fromPt<Link>(pt.get_child("self"));
	}
	if (pt.get_child_optional("actions")) {
        m_Actions = fromPt<Link>(pt.get_child("actions"));
	}
	if (pt.get_child_optional("runs")) {
        m_Runs = fromPt<Link>(pt.get_child("runs"));
	}
	if (pt.get_child_optional("queue")) {
        m_Queue = fromPt<Link>(pt.get_child("queue"));
	}
	m__class = pt.get("_class", "");
}

Link BranchImpllinks::getSelf() const
{
    return m_Self;
}

void BranchImpllinks::setSelf(Link value)
{
    m_Self = value;
}


Link BranchImpllinks::getActions() const
{
    return m_Actions;
}

void BranchImpllinks::setActions(Link value)
{
    m_Actions = value;
}


Link BranchImpllinks::getRuns() const
{
    return m_Runs;
}

void BranchImpllinks::setRuns(Link value)
{
    m_Runs = value;
}


Link BranchImpllinks::getQueue() const
{
    return m_Queue;
}

void BranchImpllinks::setQueue(Link value)
{
    m_Queue = value;
}


std::string BranchImpllinks::get_Class() const
{
    return m__class;
}

void BranchImpllinks::set_Class(std::string value)
{
    m__class = value;
}



std::vector<BranchImpllinks> createBranchImpllinksVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<BranchImpllinks>();
    for (const auto& child: pt) {
        vec.emplace_back(BranchImpllinks(child.second));
    }

    return vec;
}

}
}
}
}

