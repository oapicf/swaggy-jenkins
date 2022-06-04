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



#include "HudsonMasterComputer.h"

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

HudsonMasterComputer::HudsonMasterComputer(boost::property_tree::ptree const& pt)
{
        fromPropertyTree(pt);
}

std::string HudsonMasterComputer::toJsonString(bool prettyJson /* = false */)
{
    return toJsonString_internal(prettyJson);
}

void HudsonMasterComputer::fromJsonString(std::string const& jsonString)
{
    fromJsonString_internal(jsonString);
}

boost::property_tree::ptree HudsonMasterComputer::toPropertyTree()
{
    return toPropertyTree_internal();
}

void HudsonMasterComputer::fromPropertyTree(boost::property_tree::ptree const& pt)
{
    fromPropertyTree_internal(pt);
}

std::string HudsonMasterComputer::toJsonString_internal(bool prettyJson)
{
	std::stringstream ss;
	write_json(ss, this->toPropertyTree(), prettyJson);
	return ss.str();
}

void HudsonMasterComputer::fromJsonString_internal(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	this->fromPropertyTree(pt);
}

ptree HudsonMasterComputer::toPropertyTree_internal()
{
	ptree pt;
	ptree tmp_node;
	pt.put("_class", m__class);
	pt.put("displayName", m_DisplayName);
	// generate tree for Executors
	if (!m_Executors.empty()) {
		for (const auto &childEntry : m_Executors) {
            tmp_node.push_back(std::make_pair("", childEntry->toPropertyTree()));
		}
		pt.add_child("executors", tmp_node);
		tmp_node.clear();
	}
	pt.put("icon", m_Icon);
	pt.put("iconClassName", m_IconClassName);
	pt.put("idle", m_Idle);
	pt.put("jnlpAgent", m_JnlpAgent);
	pt.put("launchSupported", m_LaunchSupported);
	if (m_LoadStatistics != nullptr) {
		pt.add_child("loadStatistics", m_LoadStatistics->toPropertyTree());
	}
	pt.put("manualLaunchAllowed", m_ManualLaunchAllowed);
	if (m_MonitorData != nullptr) {
		pt.add_child("monitorData", m_MonitorData->toPropertyTree());
	}
	pt.put("numExecutors", m_NumExecutors);
	pt.put("offline", m_Offline);
	pt.put("offlineCause", m_OfflineCause);
	pt.put("offlineCauseReason", m_OfflineCauseReason);
	pt.put("temporarilyOffline", m_TemporarilyOffline);
	return pt;
}

void HudsonMasterComputer::fromPropertyTree_internal(ptree const &pt)
{
	ptree tmp_node;
	m__class = pt.get("_class", "");
	m_DisplayName = pt.get("displayName", "");
	// push all items of Executors into member vector
	if (pt.get_child_optional("executors")) {
		for (const auto &childTree : pt.get_child("executors")) {
            std::shared_ptr<HudsonMasterComputerexecutors> val =
                std::make_shared<HudsonMasterComputerexecutors>(childTree.second);
            m_Executors.emplace_back(std::move(val));
		}
	}
	m_Icon = pt.get("icon", "");
	m_IconClassName = pt.get("iconClassName", "");
	m_Idle = pt.get("idle", false);
	m_JnlpAgent = pt.get("jnlpAgent", false);
	m_LaunchSupported = pt.get("launchSupported", false);
	if (pt.get_child_optional("loadStatistics")) {
		m_LoadStatistics = std::make_shared<Label1>();
		m_LoadStatistics->fromPropertyTree(pt.get_child("loadStatistics"));
	}
	m_ManualLaunchAllowed = pt.get("manualLaunchAllowed", false);
	if (pt.get_child_optional("monitorData")) {
		m_MonitorData = std::make_shared<HudsonMasterComputermonitorData>();
		m_MonitorData->fromPropertyTree(pt.get_child("monitorData"));
	}
	m_NumExecutors = pt.get("numExecutors", 0);
	m_Offline = pt.get("offline", false);
	m_OfflineCause = pt.get("offlineCause", "");
	m_OfflineCauseReason = pt.get("offlineCauseReason", "");
	m_TemporarilyOffline = pt.get("temporarilyOffline", false);
}

std::string HudsonMasterComputer::get_Class() const
{
    return m__class;
}

void HudsonMasterComputer::set_Class(std::string value)
{
	m__class = value;
}
std::string HudsonMasterComputer::getDisplayName() const
{
    return m_DisplayName;
}

void HudsonMasterComputer::setDisplayName(std::string value)
{
	m_DisplayName = value;
}
std::vector<std::shared_ptr<HudsonMasterComputerexecutors>> HudsonMasterComputer::getExecutors() const
{
    return m_Executors;
}

void HudsonMasterComputer::setExecutors(std::vector<std::shared_ptr<HudsonMasterComputerexecutors>> value)
{
	m_Executors = value;
}
std::string HudsonMasterComputer::getIcon() const
{
    return m_Icon;
}

void HudsonMasterComputer::setIcon(std::string value)
{
	m_Icon = value;
}
std::string HudsonMasterComputer::getIconClassName() const
{
    return m_IconClassName;
}

void HudsonMasterComputer::setIconClassName(std::string value)
{
	m_IconClassName = value;
}
bool HudsonMasterComputer::isIdle() const
{
    return m_Idle;
}

void HudsonMasterComputer::setIdle(bool value)
{
	m_Idle = value;
}
bool HudsonMasterComputer::isJnlpAgent() const
{
    return m_JnlpAgent;
}

void HudsonMasterComputer::setJnlpAgent(bool value)
{
	m_JnlpAgent = value;
}
bool HudsonMasterComputer::isLaunchSupported() const
{
    return m_LaunchSupported;
}

void HudsonMasterComputer::setLaunchSupported(bool value)
{
	m_LaunchSupported = value;
}
std::shared_ptr<Label1> HudsonMasterComputer::getLoadStatistics() const
{
    return m_LoadStatistics;
}

void HudsonMasterComputer::setLoadStatistics(std::shared_ptr<Label1> value)
{
	m_LoadStatistics = value;
}
bool HudsonMasterComputer::isManualLaunchAllowed() const
{
    return m_ManualLaunchAllowed;
}

void HudsonMasterComputer::setManualLaunchAllowed(bool value)
{
	m_ManualLaunchAllowed = value;
}
std::shared_ptr<HudsonMasterComputermonitorData> HudsonMasterComputer::getMonitorData() const
{
    return m_MonitorData;
}

void HudsonMasterComputer::setMonitorData(std::shared_ptr<HudsonMasterComputermonitorData> value)
{
	m_MonitorData = value;
}
int32_t HudsonMasterComputer::getNumExecutors() const
{
    return m_NumExecutors;
}

void HudsonMasterComputer::setNumExecutors(int32_t value)
{
	m_NumExecutors = value;
}
bool HudsonMasterComputer::isOffline() const
{
    return m_Offline;
}

void HudsonMasterComputer::setOffline(bool value)
{
	m_Offline = value;
}
std::string HudsonMasterComputer::getOfflineCause() const
{
    return m_OfflineCause;
}

void HudsonMasterComputer::setOfflineCause(std::string value)
{
	m_OfflineCause = value;
}
std::string HudsonMasterComputer::getOfflineCauseReason() const
{
    return m_OfflineCauseReason;
}

void HudsonMasterComputer::setOfflineCauseReason(std::string value)
{
	m_OfflineCauseReason = value;
}
bool HudsonMasterComputer::isTemporarilyOffline() const
{
    return m_TemporarilyOffline;
}

void HudsonMasterComputer::setTemporarilyOffline(bool value)
{
	m_TemporarilyOffline = value;
}

std::vector<HudsonMasterComputer> createHudsonMasterComputerVectorFromJsonString(const std::string& json)
{
    std::stringstream sstream(json);
    boost::property_tree::ptree pt;
    boost::property_tree::json_parser::read_json(sstream,pt);

    auto vec = std::vector<HudsonMasterComputer>();
    for (const auto& child: pt) {
        vec.emplace_back(HudsonMasterComputer(child.second));
    }

    return vec;
}

}
}
}
}

