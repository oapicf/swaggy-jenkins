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



#include "GenericResource.h"

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

GenericResource::GenericResource(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}

std::string GenericResource::toJsonString(bool prettyJson /* = false */)
{
    return toJsonString_internal(prettyJson);
}

void GenericResource::fromJsonString(std::string const& jsonString)
{
    fromJsonString_internal(jsonString);
}

boost::property_tree::ptree GenericResource::toPropertyTree()
{
    return toPropertyTree_internal();
}

void GenericResource::fromPropertyTree(boost::property_tree::ptree const& pt)
{
    fromPropertyTree_internal(pt);
}

std::string GenericResource::toJsonString_internal(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void GenericResource::fromJsonString_internal(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree GenericResource::toPropertyTree_internal()
{
	ptree pt;
	ptree tmp_node;
	pt.put("_class", m__class);
	pt.put("displayName", m_DisplayName);
	pt.put("durationInMillis", m_DurationInMillis);
	pt.put("id", m_Id);
	pt.put("result", m_Result);
	pt.put("startTime", m_StartTime);
	return pt;
}

void GenericResource::fromPropertyTree_internal(ptree const &pt)
{
	ptree tmp_node;
	m__class = pt.get("_class", "");
	m_DisplayName = pt.get("displayName", "");
	m_DurationInMillis = pt.get("durationInMillis", 0);
	m_Id = pt.get("id", "");
	m_Result = pt.get("result", "");
	m_StartTime = pt.get("startTime", "");
}

std::string GenericResource::get_Class() const
{
    return m__class;
}

void GenericResource::set_Class(std::string value)
{
	m__class = value;
}
std::string GenericResource::getDisplayName() const
{
    return m_DisplayName;
}

void GenericResource::setDisplayName(std::string value)
{
	m_DisplayName = value;
}
int32_t GenericResource::getDurationInMillis() const
{
    return m_DurationInMillis;
}

void GenericResource::setDurationInMillis(int32_t value)
{
	m_DurationInMillis = value;
}
std::string GenericResource::getId() const
{
    return m_Id;
}

void GenericResource::setId(std::string value)
{
	m_Id = value;
}
std::string GenericResource::getResult() const
{
    return m_Result;
}

void GenericResource::setResult(std::string value)
{
	m_Result = value;
}
std::string GenericResource::getStartTime() const
{
    return m_StartTime;
}

void GenericResource::setStartTime(std::string value)
{
	m_StartTime = value;
}

std::vector<GenericResource> createGenericResourceVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<GenericResource>();
    for (const auto& child: pt) {
        vec.emplace_back(GenericResource(child.second));
    }

    return vec;
}

}
}
}
}

