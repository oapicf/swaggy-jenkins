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



#include "CauseUserIdCause.h"

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

CauseUserIdCause::CauseUserIdCause(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}

std::string CauseUserIdCause::toJsonString(bool prettyJson /* = false */)
{
    return toJsonString_internal(prettyJson);
}

void CauseUserIdCause::fromJsonString(std::string const& jsonString)
{
    fromJsonString_internal(jsonString);
}

boost::property_tree::ptree CauseUserIdCause::toPropertyTree()
{
    return toPropertyTree_internal();
}

void CauseUserIdCause::fromPropertyTree(boost::property_tree::ptree const& pt)
{
    fromPropertyTree_internal(pt);
}

std::string CauseUserIdCause::toJsonString_internal(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void CauseUserIdCause::fromJsonString_internal(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree CauseUserIdCause::toPropertyTree_internal()
{
	ptree pt;
	ptree tmp_node;
	pt.put("_class", m__class);
	pt.put("shortDescription", m_ShortDescription);
	pt.put("userId", m_UserId);
	pt.put("userName", m_UserName);
	return pt;
}

void CauseUserIdCause::fromPropertyTree_internal(ptree const &pt)
{
	ptree tmp_node;
	m__class = pt.get("_class", "");
	m_ShortDescription = pt.get("shortDescription", "");
	m_UserId = pt.get("userId", "");
	m_UserName = pt.get("userName", "");
}

std::string CauseUserIdCause::get_Class() const
{
    return m__class;
}

void CauseUserIdCause::set_Class(std::string value)
{
	m__class = value;
}
std::string CauseUserIdCause::getShortDescription() const
{
    return m_ShortDescription;
}

void CauseUserIdCause::setShortDescription(std::string value)
{
	m_ShortDescription = value;
}
std::string CauseUserIdCause::getUserId() const
{
    return m_UserId;
}

void CauseUserIdCause::setUserId(std::string value)
{
	m_UserId = value;
}
std::string CauseUserIdCause::getUserName() const
{
    return m_UserName;
}

void CauseUserIdCause::setUserName(std::string value)
{
	m_UserName = value;
}

std::vector<CauseUserIdCause> createCauseUserIdCauseVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<CauseUserIdCause>();
    for (const auto& child: pt) {
        vec.emplace_back(CauseUserIdCause(child.second));
    }

    return vec;
}

}
}
}
}

