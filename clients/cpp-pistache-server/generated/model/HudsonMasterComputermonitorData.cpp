/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 1.1.1
* Contact: blah@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "HudsonMasterComputermonitorData.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

HudsonMasterComputermonitorData::HudsonMasterComputermonitorData()
{
    m_Hudson_node_monitors_SwapSpaceMonitorIsSet = false;
    m_Hudson_node_monitors_TemporarySpaceMonitorIsSet = false;
    m_Hudson_node_monitors_DiskSpaceMonitorIsSet = false;
    m_Hudson_node_monitors_ArchitectureMonitor = "";
    m_Hudson_node_monitors_ArchitectureMonitorIsSet = false;
    m_Hudson_node_monitors_ResponseTimeMonitorIsSet = false;
    m_Hudson_node_monitors_ClockMonitorIsSet = false;
    m__class = "";
    m__classIsSet = false;
    
}

void HudsonMasterComputermonitorData::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool HudsonMasterComputermonitorData::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool HudsonMasterComputermonitorData::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "HudsonMasterComputermonitorData" : pathPrefix;

                                
    return success;
}

bool HudsonMasterComputermonitorData::operator==(const HudsonMasterComputermonitorData& rhs) const
{
    return
    
    
    
    ((!hudsonNodeMonitorsSwapSpaceMonitorIsSet() && !rhs.hudsonNodeMonitorsSwapSpaceMonitorIsSet()) || (hudsonNodeMonitorsSwapSpaceMonitorIsSet() && rhs.hudsonNodeMonitorsSwapSpaceMonitorIsSet() && getHudsonNodeMonitorsSwapSpaceMonitor() == rhs.getHudsonNodeMonitorsSwapSpaceMonitor())) &&
    
    
    ((!hudsonNodeMonitorsTemporarySpaceMonitorIsSet() && !rhs.hudsonNodeMonitorsTemporarySpaceMonitorIsSet()) || (hudsonNodeMonitorsTemporarySpaceMonitorIsSet() && rhs.hudsonNodeMonitorsTemporarySpaceMonitorIsSet() && getHudsonNodeMonitorsTemporarySpaceMonitor() == rhs.getHudsonNodeMonitorsTemporarySpaceMonitor())) &&
    
    
    ((!hudsonNodeMonitorsDiskSpaceMonitorIsSet() && !rhs.hudsonNodeMonitorsDiskSpaceMonitorIsSet()) || (hudsonNodeMonitorsDiskSpaceMonitorIsSet() && rhs.hudsonNodeMonitorsDiskSpaceMonitorIsSet() && getHudsonNodeMonitorsDiskSpaceMonitor() == rhs.getHudsonNodeMonitorsDiskSpaceMonitor())) &&
    
    
    ((!hudsonNodeMonitorsArchitectureMonitorIsSet() && !rhs.hudsonNodeMonitorsArchitectureMonitorIsSet()) || (hudsonNodeMonitorsArchitectureMonitorIsSet() && rhs.hudsonNodeMonitorsArchitectureMonitorIsSet() && getHudsonNodeMonitorsArchitectureMonitor() == rhs.getHudsonNodeMonitorsArchitectureMonitor())) &&
    
    
    ((!hudsonNodeMonitorsResponseTimeMonitorIsSet() && !rhs.hudsonNodeMonitorsResponseTimeMonitorIsSet()) || (hudsonNodeMonitorsResponseTimeMonitorIsSet() && rhs.hudsonNodeMonitorsResponseTimeMonitorIsSet() && getHudsonNodeMonitorsResponseTimeMonitor() == rhs.getHudsonNodeMonitorsResponseTimeMonitor())) &&
    
    
    ((!hudsonNodeMonitorsClockMonitorIsSet() && !rhs.hudsonNodeMonitorsClockMonitorIsSet()) || (hudsonNodeMonitorsClockMonitorIsSet() && rhs.hudsonNodeMonitorsClockMonitorIsSet() && getHudsonNodeMonitorsClockMonitor() == rhs.getHudsonNodeMonitorsClockMonitor())) &&
    
    
    ((!r_classIsSet() && !rhs.r_classIsSet()) || (r_classIsSet() && rhs.r_classIsSet() && getClass() == rhs.getClass()))
    
    ;
}

bool HudsonMasterComputermonitorData::operator!=(const HudsonMasterComputermonitorData& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const HudsonMasterComputermonitorData& o)
{
    j = nlohmann::json();
    if(o.hudsonNodeMonitorsSwapSpaceMonitorIsSet())
        j["hudson.node_monitors.SwapSpaceMonitor"] = o.m_Hudson_node_monitors_SwapSpaceMonitor;
    if(o.hudsonNodeMonitorsTemporarySpaceMonitorIsSet())
        j["hudson.node_monitors.TemporarySpaceMonitor"] = o.m_Hudson_node_monitors_TemporarySpaceMonitor;
    if(o.hudsonNodeMonitorsDiskSpaceMonitorIsSet())
        j["hudson.node_monitors.DiskSpaceMonitor"] = o.m_Hudson_node_monitors_DiskSpaceMonitor;
    if(o.hudsonNodeMonitorsArchitectureMonitorIsSet())
        j["hudson.node_monitors.ArchitectureMonitor"] = o.m_Hudson_node_monitors_ArchitectureMonitor;
    if(o.hudsonNodeMonitorsResponseTimeMonitorIsSet())
        j["hudson.node_monitors.ResponseTimeMonitor"] = o.m_Hudson_node_monitors_ResponseTimeMonitor;
    if(o.hudsonNodeMonitorsClockMonitorIsSet())
        j["hudson.node_monitors.ClockMonitor"] = o.m_Hudson_node_monitors_ClockMonitor;
    if(o.r_classIsSet())
        j["_class"] = o.m__class;
    
}

void from_json(const nlohmann::json& j, HudsonMasterComputermonitorData& o)
{
    if(j.find("hudson.node_monitors.SwapSpaceMonitor") != j.end())
    {
        j.at("hudson.node_monitors.SwapSpaceMonitor").get_to(o.m_Hudson_node_monitors_SwapSpaceMonitor);
        o.m_Hudson_node_monitors_SwapSpaceMonitorIsSet = true;
    } 
    if(j.find("hudson.node_monitors.TemporarySpaceMonitor") != j.end())
    {
        j.at("hudson.node_monitors.TemporarySpaceMonitor").get_to(o.m_Hudson_node_monitors_TemporarySpaceMonitor);
        o.m_Hudson_node_monitors_TemporarySpaceMonitorIsSet = true;
    } 
    if(j.find("hudson.node_monitors.DiskSpaceMonitor") != j.end())
    {
        j.at("hudson.node_monitors.DiskSpaceMonitor").get_to(o.m_Hudson_node_monitors_DiskSpaceMonitor);
        o.m_Hudson_node_monitors_DiskSpaceMonitorIsSet = true;
    } 
    if(j.find("hudson.node_monitors.ArchitectureMonitor") != j.end())
    {
        j.at("hudson.node_monitors.ArchitectureMonitor").get_to(o.m_Hudson_node_monitors_ArchitectureMonitor);
        o.m_Hudson_node_monitors_ArchitectureMonitorIsSet = true;
    } 
    if(j.find("hudson.node_monitors.ResponseTimeMonitor") != j.end())
    {
        j.at("hudson.node_monitors.ResponseTimeMonitor").get_to(o.m_Hudson_node_monitors_ResponseTimeMonitor);
        o.m_Hudson_node_monitors_ResponseTimeMonitorIsSet = true;
    } 
    if(j.find("hudson.node_monitors.ClockMonitor") != j.end())
    {
        j.at("hudson.node_monitors.ClockMonitor").get_to(o.m_Hudson_node_monitors_ClockMonitor);
        o.m_Hudson_node_monitors_ClockMonitorIsSet = true;
    } 
    if(j.find("_class") != j.end())
    {
        j.at("_class").get_to(o.m__class);
        o.m__classIsSet = true;
    } 
    
}

SwapSpaceMonitorMemoryUsage2 HudsonMasterComputermonitorData::getHudsonNodeMonitorsSwapSpaceMonitor() const
{
    return m_Hudson_node_monitors_SwapSpaceMonitor;
}
void HudsonMasterComputermonitorData::setHudsonNodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2 const& value)
{
    m_Hudson_node_monitors_SwapSpaceMonitor = value;
    m_Hudson_node_monitors_SwapSpaceMonitorIsSet = true;
}
bool HudsonMasterComputermonitorData::hudsonNodeMonitorsSwapSpaceMonitorIsSet() const
{
    return m_Hudson_node_monitors_SwapSpaceMonitorIsSet;
}
void HudsonMasterComputermonitorData::unsetHudson_node_monitors_SwapSpaceMonitor()
{
    m_Hudson_node_monitors_SwapSpaceMonitorIsSet = false;
}
DiskSpaceMonitorDescriptorDiskSpace HudsonMasterComputermonitorData::getHudsonNodeMonitorsTemporarySpaceMonitor() const
{
    return m_Hudson_node_monitors_TemporarySpaceMonitor;
}
void HudsonMasterComputermonitorData::setHudsonNodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace const& value)
{
    m_Hudson_node_monitors_TemporarySpaceMonitor = value;
    m_Hudson_node_monitors_TemporarySpaceMonitorIsSet = true;
}
bool HudsonMasterComputermonitorData::hudsonNodeMonitorsTemporarySpaceMonitorIsSet() const
{
    return m_Hudson_node_monitors_TemporarySpaceMonitorIsSet;
}
void HudsonMasterComputermonitorData::unsetHudson_node_monitors_TemporarySpaceMonitor()
{
    m_Hudson_node_monitors_TemporarySpaceMonitorIsSet = false;
}
DiskSpaceMonitorDescriptorDiskSpace HudsonMasterComputermonitorData::getHudsonNodeMonitorsDiskSpaceMonitor() const
{
    return m_Hudson_node_monitors_DiskSpaceMonitor;
}
void HudsonMasterComputermonitorData::setHudsonNodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace const& value)
{
    m_Hudson_node_monitors_DiskSpaceMonitor = value;
    m_Hudson_node_monitors_DiskSpaceMonitorIsSet = true;
}
bool HudsonMasterComputermonitorData::hudsonNodeMonitorsDiskSpaceMonitorIsSet() const
{
    return m_Hudson_node_monitors_DiskSpaceMonitorIsSet;
}
void HudsonMasterComputermonitorData::unsetHudson_node_monitors_DiskSpaceMonitor()
{
    m_Hudson_node_monitors_DiskSpaceMonitorIsSet = false;
}
std::string HudsonMasterComputermonitorData::getHudsonNodeMonitorsArchitectureMonitor() const
{
    return m_Hudson_node_monitors_ArchitectureMonitor;
}
void HudsonMasterComputermonitorData::setHudsonNodeMonitorsArchitectureMonitor(std::string const& value)
{
    m_Hudson_node_monitors_ArchitectureMonitor = value;
    m_Hudson_node_monitors_ArchitectureMonitorIsSet = true;
}
bool HudsonMasterComputermonitorData::hudsonNodeMonitorsArchitectureMonitorIsSet() const
{
    return m_Hudson_node_monitors_ArchitectureMonitorIsSet;
}
void HudsonMasterComputermonitorData::unsetHudson_node_monitors_ArchitectureMonitor()
{
    m_Hudson_node_monitors_ArchitectureMonitorIsSet = false;
}
ResponseTimeMonitorData HudsonMasterComputermonitorData::getHudsonNodeMonitorsResponseTimeMonitor() const
{
    return m_Hudson_node_monitors_ResponseTimeMonitor;
}
void HudsonMasterComputermonitorData::setHudsonNodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData const& value)
{
    m_Hudson_node_monitors_ResponseTimeMonitor = value;
    m_Hudson_node_monitors_ResponseTimeMonitorIsSet = true;
}
bool HudsonMasterComputermonitorData::hudsonNodeMonitorsResponseTimeMonitorIsSet() const
{
    return m_Hudson_node_monitors_ResponseTimeMonitorIsSet;
}
void HudsonMasterComputermonitorData::unsetHudson_node_monitors_ResponseTimeMonitor()
{
    m_Hudson_node_monitors_ResponseTimeMonitorIsSet = false;
}
ClockDifference HudsonMasterComputermonitorData::getHudsonNodeMonitorsClockMonitor() const
{
    return m_Hudson_node_monitors_ClockMonitor;
}
void HudsonMasterComputermonitorData::setHudsonNodeMonitorsClockMonitor(ClockDifference const& value)
{
    m_Hudson_node_monitors_ClockMonitor = value;
    m_Hudson_node_monitors_ClockMonitorIsSet = true;
}
bool HudsonMasterComputermonitorData::hudsonNodeMonitorsClockMonitorIsSet() const
{
    return m_Hudson_node_monitors_ClockMonitorIsSet;
}
void HudsonMasterComputermonitorData::unsetHudson_node_monitors_ClockMonitor()
{
    m_Hudson_node_monitors_ClockMonitorIsSet = false;
}
std::string HudsonMasterComputermonitorData::getClass() const
{
    return m__class;
}
void HudsonMasterComputermonitorData::setClass(std::string const& value)
{
    m__class = value;
    m__classIsSet = true;
}
bool HudsonMasterComputermonitorData::r_classIsSet() const
{
    return m__classIsSet;
}
void HudsonMasterComputermonitorData::unset_class()
{
    m__classIsSet = false;
}


} // namespace org::openapitools::server::model

