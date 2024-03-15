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



#include "PipelineRunartifacts.h"

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

PipelineRunartifacts::PipelineRunartifacts(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}


std::string PipelineRunartifacts::toJsonString(bool prettyJson /* = false */) const
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
    // workaround inspired by: https://stackoverflow.com/a/56395440
    std::regex reg("\\\"([0-9]+\\.{0,1}[0-9]*)\\\"");
    std::string result = std::regex_replace(ss.str(), reg, "$1");
    return result;
}

void PipelineRunartifacts::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree PipelineRunartifacts::toPropertyTree() const
{
	ptree pt;
	ptree tmp_node;
	pt.put("name", m_Name);
	pt.put("size", m_Size);
	pt.put("url", m_Url);
	pt.put("_class", m__class);
	return pt;
}

void PipelineRunartifacts::fromPropertyTree(ptree const &pt)
{
	ptree tmp_node;
	m_Name = pt.get("name", "");
	m_Size = pt.get("size", 0);
	m_Url = pt.get("url", "");
	m__class = pt.get("_class", "");
}

std::string PipelineRunartifacts::getName() const
{
    return m_Name;
}

void PipelineRunartifacts::setName(std::string value)
{
    m_Name = value;
}


int32_t PipelineRunartifacts::getSize() const
{
    return m_Size;
}

void PipelineRunartifacts::setSize(int32_t value)
{
    m_Size = value;
}


std::string PipelineRunartifacts::getUrl() const
{
    return m_Url;
}

void PipelineRunartifacts::setUrl(std::string value)
{
    m_Url = value;
}


std::string PipelineRunartifacts::get_Class() const
{
    return m__class;
}

void PipelineRunartifacts::set_Class(std::string value)
{
    m__class = value;
}



std::vector<PipelineRunartifacts> createPipelineRunartifactsVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<PipelineRunartifacts>();
    for (const auto& child: pt) {
        vec.emplace_back(PipelineRunartifacts(child.second));
    }

    return vec;
}

}
}
}
}

