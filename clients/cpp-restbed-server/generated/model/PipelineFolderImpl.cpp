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



#include "PipelineFolderImpl.h"

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

PipelineFolderImpl::PipelineFolderImpl(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}

std::string PipelineFolderImpl::toJsonString(bool prettyJson /* = false */)
{
    return toJsonString_internal(prettyJson);
}

void PipelineFolderImpl::fromJsonString(std::string const& jsonString)
{
    fromJsonString_internal(jsonString);
}

boost::property_tree::ptree PipelineFolderImpl::toPropertyTree()
{
    return toPropertyTree_internal();
}

void PipelineFolderImpl::fromPropertyTree(boost::property_tree::ptree const& pt)
{
    fromPropertyTree_internal(pt);
}

std::string PipelineFolderImpl::toJsonString_internal(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void PipelineFolderImpl::fromJsonString_internal(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree PipelineFolderImpl::toPropertyTree_internal()
{
	ptree pt;
	ptree tmp_node;
	pt.put("_class", m__class);
	pt.put("displayName", m_DisplayName);
	pt.put("fullName", m_FullName);
	pt.put("name", m_Name);
	pt.put("organization", m_Organization);
	pt.put("numberOfFolders", m_NumberOfFolders);
	pt.put("numberOfPipelines", m_NumberOfPipelines);
	return pt;
}

void PipelineFolderImpl::fromPropertyTree_internal(ptree const &pt)
{
	ptree tmp_node;
	m__class = pt.get("_class", "");
	m_DisplayName = pt.get("displayName", "");
	m_FullName = pt.get("fullName", "");
	m_Name = pt.get("name", "");
	m_Organization = pt.get("organization", "");
	m_NumberOfFolders = pt.get("numberOfFolders", 0);
	m_NumberOfPipelines = pt.get("numberOfPipelines", 0);
}

std::string PipelineFolderImpl::get_Class() const
{
    return m__class;
}

void PipelineFolderImpl::set_Class(std::string value)
{
	m__class = value;
}
std::string PipelineFolderImpl::getDisplayName() const
{
    return m_DisplayName;
}

void PipelineFolderImpl::setDisplayName(std::string value)
{
	m_DisplayName = value;
}
std::string PipelineFolderImpl::getFullName() const
{
    return m_FullName;
}

void PipelineFolderImpl::setFullName(std::string value)
{
	m_FullName = value;
}
std::string PipelineFolderImpl::getName() const
{
    return m_Name;
}

void PipelineFolderImpl::setName(std::string value)
{
	m_Name = value;
}
std::string PipelineFolderImpl::getOrganization() const
{
    return m_Organization;
}

void PipelineFolderImpl::setOrganization(std::string value)
{
	m_Organization = value;
}
int32_t PipelineFolderImpl::getNumberOfFolders() const
{
    return m_NumberOfFolders;
}

void PipelineFolderImpl::setNumberOfFolders(int32_t value)
{
	m_NumberOfFolders = value;
}
int32_t PipelineFolderImpl::getNumberOfPipelines() const
{
    return m_NumberOfPipelines;
}

void PipelineFolderImpl::setNumberOfPipelines(int32_t value)
{
	m_NumberOfPipelines = value;
}

std::vector<PipelineFolderImpl> createPipelineFolderImplVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<PipelineFolderImpl>();
    for (const auto& child: pt) {
        vec.emplace_back(PipelineFolderImpl(child.second));
    }

    return vec;
}

}
}
}
}

