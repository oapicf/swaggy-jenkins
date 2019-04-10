/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "DiskSpaceMonitorDescriptorDiskSpace.h"

#include <string>
#include <sstream>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

using boost::property_tree::ptree;
using boost::property_tree::read_json;
using boost::property_tree::write_json;

namespace org {
namespace openapitools {
namespace server {
namespace model {

DiskSpaceMonitorDescriptorDiskSpace::DiskSpaceMonitorDescriptorDiskSpace()
{
    m__class = "";
    m_Timestamp = 0;
    m_Path = "";
    m_Size = 0;
    
}

DiskSpaceMonitorDescriptorDiskSpace::~DiskSpaceMonitorDescriptorDiskSpace()
{
}

std::string DiskSpaceMonitorDescriptorDiskSpace::toJsonString()
{
	std::stringstream ss;
	ptree pt;
	pt.put("_class", m__class);
	pt.put("Timestamp", m_Timestamp);
	pt.put("Path", m_Path);
	pt.put("Size", m_Size);
	write_json(ss, pt, false);
	return ss.str();
}

void DiskSpaceMonitorDescriptorDiskSpace::fromJsonString(std::string const& jsonString)
{
	std::stringstream ss(jsonString);
	ptree pt;
	read_json(ss,pt);
	m__class = pt.get("_class", "");
	m_Timestamp = pt.get("Timestamp", 0);
	m_Path = pt.get("Path", "");
	m_Size = pt.get("Size", 0);
}

std::string DiskSpaceMonitorDescriptorDiskSpace::getClass() const
{
    return m__class;
}
void DiskSpaceMonitorDescriptorDiskSpace::setClass(std::string value)
{
    m__class = value;
}
int32_t DiskSpaceMonitorDescriptorDiskSpace::getTimestamp() const
{
    return m_Timestamp;
}
void DiskSpaceMonitorDescriptorDiskSpace::setTimestamp(int32_t value)
{
    m_Timestamp = value;
}
std::string DiskSpaceMonitorDescriptorDiskSpace::getPath() const
{
    return m_Path;
}
void DiskSpaceMonitorDescriptorDiskSpace::setPath(std::string value)
{
    m_Path = value;
}
int32_t DiskSpaceMonitorDescriptorDiskSpace::getSize() const
{
    return m_Size;
}
void DiskSpaceMonitorDescriptorDiskSpace::setSize(int32_t value)
{
    m_Size = value;
}

}
}
}
}

