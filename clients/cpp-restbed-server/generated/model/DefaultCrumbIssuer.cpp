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



#include "DefaultCrumbIssuer.h"

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

DefaultCrumbIssuer::DefaultCrumbIssuer(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}


std::string DefaultCrumbIssuer::toJsonString(bool prettyJson /* = false */) const
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
    // workaround inspired by: https://stackoverflow.com/a/56395440
    std::regex reg("\\\"([0-9]+\\.{0,1}[0-9]*)\\\"");
    std::string result = std::regex_replace(ss.str(), reg, "$1");
    return result;
}

void DefaultCrumbIssuer::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree DefaultCrumbIssuer::toPropertyTree() const
{
	ptree pt;
	ptree tmp_node;
	pt.put("_class", m__class);
	pt.put("crumb", m_Crumb);
	pt.put("crumbRequestField", m_CrumbRequestField);
	return pt;
}

void DefaultCrumbIssuer::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	m__class = pt.get("_class", "");
	m_Crumb = pt.get("crumb", "");
	m_CrumbRequestField = pt.get("crumbRequestField", "");
}

std::string DefaultCrumbIssuer::get_Class() const
{
    return m__class;
}

void DefaultCrumbIssuer::set_Class(std::string value)
{
    m__class = value;
}


std::string DefaultCrumbIssuer::getCrumb() const
{
    return m_Crumb;
}

void DefaultCrumbIssuer::setCrumb(std::string value)
{
    m_Crumb = value;
}


std::string DefaultCrumbIssuer::getCrumbRequestField() const
{
    return m_CrumbRequestField;
}

void DefaultCrumbIssuer::setCrumbRequestField(std::string value)
{
    m_CrumbRequestField = value;
}



std::vector<DefaultCrumbIssuer> createDefaultCrumbIssuerVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<DefaultCrumbIssuer>();
    for (const auto& child: pt) {
        vec.emplace_back(DefaultCrumbIssuer(child.second));
    }

    return vec;
}

}
}
}
}

