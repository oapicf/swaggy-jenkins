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



#include "FavoriteImpllinks.h"

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

FavoriteImpllinks::FavoriteImpllinks(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}


std::string FavoriteImpllinks::toJsonString(bool prettyJson /* = false */) const
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
    // workaround inspired by: https://stackoverflow.com/a/56395440
    std::regex reg("\\\"([0-9]+\\.{0,1}[0-9]*)\\\"");
    std::string result = std::regex_replace(ss.str(), reg, "$1");
    return result;
}

void FavoriteImpllinks::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree FavoriteImpllinks::toPropertyTree() const
{
	ptree pt;
	ptree tmp_node;
	pt.add_child("self", m_Self.toPropertyTree());
	pt.put("_class", m__class);
	return pt;
}

void FavoriteImpllinks::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	if (pt.get_child_optional("self")) {
        m_Self = fromPt<Link>(pt.get_child("self"));
	}
	m__class = pt.get("_class", "");
}

Link FavoriteImpllinks::getSelf() const
{
    return m_Self;
}

void FavoriteImpllinks::setSelf(Link value)
{
    m_Self = value;
}


std::string FavoriteImpllinks::get_Class() const
{
    return m__class;
}

void FavoriteImpllinks::set_Class(std::string value)
{
    m__class = value;
}



std::vector<FavoriteImpllinks> createFavoriteImpllinksVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<FavoriteImpllinks>();
    for (const auto& child: pt) {
        vec.emplace_back(FavoriteImpllinks(child.second));
    }

    return vec;
}

}
}
}
}

