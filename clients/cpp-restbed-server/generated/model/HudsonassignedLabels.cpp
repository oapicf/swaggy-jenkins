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



#include "HudsonassignedLabels.h"

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

HudsonassignedLabels::HudsonassignedLabels(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}

std::string HudsonassignedLabels::toJsonString(bool prettyJson /* = false */)
{
    return toJsonString_internal(prettyJson);
}

void HudsonassignedLabels::fromJsonString(std::string const& jsonString)
{
    fromJsonString_internal(jsonString);
}

boost::property_tree::ptree HudsonassignedLabels::toPropertyTree()
{
    return toPropertyTree_internal();
}

void HudsonassignedLabels::fromPropertyTree(boost::property_tree::ptree const& pt)
{
    fromPropertyTree_internal(pt);
}

std::string HudsonassignedLabels::toJsonString_internal(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void HudsonassignedLabels::fromJsonString_internal(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree HudsonassignedLabels::toPropertyTree_internal()
{
	ptree pt;
	ptree tmp_node;
	pt.put("_class", m__class);
	return pt;
}

void HudsonassignedLabels::fromPropertyTree_internal(ptree const &pt)
{
	ptree tmp_node;
	m__class = pt.get("_class", "");
}

std::string HudsonassignedLabels::get_Class() const
{
    return m__class;
}

void HudsonassignedLabels::set_Class(std::string value)
{
	m__class = value;
}

std::vector<HudsonassignedLabels> createHudsonassignedLabelsVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<HudsonassignedLabels>();
    for (const auto& child: pt) {
        vec.emplace_back(HudsonassignedLabels(child.second));
    }

    return vec;
}

}
}
}
}

