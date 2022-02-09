/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "QueueItemImpl.h"

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

QueueItemImpl::QueueItemImpl(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}

std::string QueueItemImpl::toJsonString(bool prettyJson /* = false */)
{
    return toJsonString_internal(prettyJson);
}

void QueueItemImpl::fromJsonString(std::string const& jsonString)
{
    fromJsonString_internal(jsonString);
}

boost::property_tree::ptree QueueItemImpl::toPropertyTree()
{
    return toPropertyTree_internal();
}

void QueueItemImpl::fromPropertyTree(boost::property_tree::ptree const& pt)
{
    fromPropertyTree_internal(pt);
}

std::string QueueItemImpl::toJsonString_internal(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void QueueItemImpl::fromJsonString_internal(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree QueueItemImpl::toPropertyTree_internal()
{
	ptree pt;
	ptree tmp_node;
	pt.put("_class", m__class);
	pt.put("expectedBuildNumber", m_ExpectedBuildNumber);
	pt.put("id", m_Id);
	pt.put("pipeline", m_Pipeline);
	pt.put("queuedTime", m_QueuedTime);
	return pt;
}

void QueueItemImpl::fromPropertyTree_internal(ptree const &pt)
{
	ptree tmp_node;
	m__class = pt.get("_class", "");
	m_ExpectedBuildNumber = pt.get("expectedBuildNumber", 0);
	m_Id = pt.get("id", "");
	m_Pipeline = pt.get("pipeline", "");
	m_QueuedTime = pt.get("queuedTime", 0);
}

std::string QueueItemImpl::get_Class() const
{
    return m__class;
}

void QueueItemImpl::set_Class(std::string value)
{
	m__class = value;
}
int32_t QueueItemImpl::getExpectedBuildNumber() const
{
    return m_ExpectedBuildNumber;
}

void QueueItemImpl::setExpectedBuildNumber(int32_t value)
{
	m_ExpectedBuildNumber = value;
}
std::string QueueItemImpl::getId() const
{
    return m_Id;
}

void QueueItemImpl::setId(std::string value)
{
	m_Id = value;
}
std::string QueueItemImpl::getPipeline() const
{
    return m_Pipeline;
}

void QueueItemImpl::setPipeline(std::string value)
{
	m_Pipeline = value;
}
int32_t QueueItemImpl::getQueuedTime() const
{
    return m_QueuedTime;
}

void QueueItemImpl::setQueuedTime(int32_t value)
{
	m_QueuedTime = value;
}

std::vector<QueueItemImpl> createQueueItemImplVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<QueueItemImpl>();
    for (const auto& child: pt) {
        vec.emplace_back(QueueItemImpl(child.second));
    }

    return vec;
}

}
}
}
}

