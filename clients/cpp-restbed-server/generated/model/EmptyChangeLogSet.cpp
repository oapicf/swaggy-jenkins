/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "EmptyChangeLogSet.h"

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

EmptyChangeLogSet::EmptyChangeLogSet(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}

std::string EmptyChangeLogSet::toJsonString(bool prettyJson /* = false */)
{
    return toJsonString_internal(prettyJson);
}

void EmptyChangeLogSet::fromJsonString(std::string const& jsonString)
{
    fromJsonString_internal(jsonString);
}

boost::property_tree::ptree EmptyChangeLogSet::toPropertyTree()
{
    return toPropertyTree_internal();
}

void EmptyChangeLogSet::fromPropertyTree(boost::property_tree::ptree const& pt)
{
    fromPropertyTree_internal(pt);
}

std::string EmptyChangeLogSet::toJsonString_internal(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void EmptyChangeLogSet::fromJsonString_internal(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree EmptyChangeLogSet::toPropertyTree_internal()
{
	ptree pt;
	ptree tmp_node;
	pt.put("_class", m__class);
	pt.put("kind", m_Kind);
	return pt;
}

void EmptyChangeLogSet::fromPropertyTree_internal(ptree const &pt)
{
	ptree tmp_node;
	m__class = pt.get("_class", "");
	m_Kind = pt.get("kind", "");
}

std::string EmptyChangeLogSet::get_Class() const
{
    return m__class;
}

void EmptyChangeLogSet::set_Class(std::string value)
{
	m__class = value;
}
std::string EmptyChangeLogSet::getKind() const
{
    return m_Kind;
}

void EmptyChangeLogSet::setKind(std::string value)
{
	m_Kind = value;
}

std::vector<EmptyChangeLogSet> createEmptyChangeLogSetVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<EmptyChangeLogSet>();
    for (const auto& child: pt) {
        vec.emplace_back(EmptyChangeLogSet(child.second));
    }

    return vec;
}

}
}
}
}

