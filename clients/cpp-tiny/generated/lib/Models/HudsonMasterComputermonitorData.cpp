

#include "HudsonMasterComputermonitorData.h"

using namespace Tiny;

HudsonMasterComputermonitorData::HudsonMasterComputermonitorData()
{
	hudsonnode_monitorsSwapSpaceMonitor = SwapSpaceMonitorMemoryUsage2();
	hudsonnode_monitorsTemporarySpaceMonitor = DiskSpaceMonitorDescriptorDiskSpace();
	hudsonnode_monitorsDiskSpaceMonitor = DiskSpaceMonitorDescriptorDiskSpace();
	hudsonnode_monitorsArchitectureMonitor = std::string();
	hudsonnode_monitorsResponseTimeMonitor = ResponseTimeMonitorData();
	hudsonnode_monitorsClockMonitor = ClockDifference();
	_class = std::string();
}

HudsonMasterComputermonitorData::HudsonMasterComputermonitorData(std::string jsonString)
{
	this->fromJson(jsonString);
}

HudsonMasterComputermonitorData::~HudsonMasterComputermonitorData()
{

}

void
HudsonMasterComputermonitorData::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *hudsonnode_monitorsSwapSpaceMonitorKey = "hudson.node_monitors.SwapSpaceMonitor";

    if(object.has_key(hudsonnode_monitorsSwapSpaceMonitorKey))
    {
        bourne::json value = object[hudsonnode_monitorsSwapSpaceMonitorKey];




        SwapSpaceMonitorMemoryUsage2* obj = &hudsonnode_monitorsSwapSpaceMonitor;
		obj->fromJson(value.dump());

    }

    const char *hudsonnode_monitorsTemporarySpaceMonitorKey = "hudson.node_monitors.TemporarySpaceMonitor";

    if(object.has_key(hudsonnode_monitorsTemporarySpaceMonitorKey))
    {
        bourne::json value = object[hudsonnode_monitorsTemporarySpaceMonitorKey];




        DiskSpaceMonitorDescriptorDiskSpace* obj = &hudsonnode_monitorsTemporarySpaceMonitor;
		obj->fromJson(value.dump());

    }

    const char *hudsonnode_monitorsDiskSpaceMonitorKey = "hudson.node_monitors.DiskSpaceMonitor";

    if(object.has_key(hudsonnode_monitorsDiskSpaceMonitorKey))
    {
        bourne::json value = object[hudsonnode_monitorsDiskSpaceMonitorKey];




        DiskSpaceMonitorDescriptorDiskSpace* obj = &hudsonnode_monitorsDiskSpaceMonitor;
		obj->fromJson(value.dump());

    }

    const char *hudsonnode_monitorsArchitectureMonitorKey = "hudson.node_monitors.ArchitectureMonitor";

    if(object.has_key(hudsonnode_monitorsArchitectureMonitorKey))
    {
        bourne::json value = object[hudsonnode_monitorsArchitectureMonitorKey];



        jsonToValue(&hudsonnode_monitorsArchitectureMonitor, value, "std::string");


    }

    const char *hudsonnode_monitorsResponseTimeMonitorKey = "hudson.node_monitors.ResponseTimeMonitor";

    if(object.has_key(hudsonnode_monitorsResponseTimeMonitorKey))
    {
        bourne::json value = object[hudsonnode_monitorsResponseTimeMonitorKey];




        ResponseTimeMonitorData* obj = &hudsonnode_monitorsResponseTimeMonitor;
		obj->fromJson(value.dump());

    }

    const char *hudsonnode_monitorsClockMonitorKey = "hudson.node_monitors.ClockMonitor";

    if(object.has_key(hudsonnode_monitorsClockMonitorKey))
    {
        bourne::json value = object[hudsonnode_monitorsClockMonitorKey];




        ClockDifference* obj = &hudsonnode_monitorsClockMonitor;
		obj->fromJson(value.dump());

    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
HudsonMasterComputermonitorData::toJson()
{
    bourne::json object = bourne::json::object();






	object["hudsonnode_monitorsSwapSpaceMonitor"] = getHudsonnodeMonitorsSwapSpaceMonitor().toJson();






	object["hudsonnode_monitorsTemporarySpaceMonitor"] = getHudsonnodeMonitorsTemporarySpaceMonitor().toJson();






	object["hudsonnode_monitorsDiskSpaceMonitor"] = getHudsonnodeMonitorsDiskSpaceMonitor().toJson();





    object["hudsonnode_monitorsArchitectureMonitor"] = getHudsonnodeMonitorsArchitectureMonitor();







	object["hudsonnode_monitorsResponseTimeMonitor"] = getHudsonnodeMonitorsResponseTimeMonitor().toJson();






	object["hudsonnode_monitorsClockMonitor"] = getHudsonnodeMonitorsClockMonitor().toJson();





    object["_class"] = getClass();



    return object;

}

SwapSpaceMonitorMemoryUsage2
HudsonMasterComputermonitorData::getHudsonnodeMonitorsSwapSpaceMonitor()
{
	return hudsonnode_monitorsSwapSpaceMonitor;
}

void
HudsonMasterComputermonitorData::setHudsonnodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2  hudsonnode_monitorsSwapSpaceMonitor)
{
	this->hudsonnode_monitorsSwapSpaceMonitor = hudsonnode_monitorsSwapSpaceMonitor;
}

DiskSpaceMonitorDescriptorDiskSpace
HudsonMasterComputermonitorData::getHudsonnodeMonitorsTemporarySpaceMonitor()
{
	return hudsonnode_monitorsTemporarySpaceMonitor;
}

void
HudsonMasterComputermonitorData::setHudsonnodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace  hudsonnode_monitorsTemporarySpaceMonitor)
{
	this->hudsonnode_monitorsTemporarySpaceMonitor = hudsonnode_monitorsTemporarySpaceMonitor;
}

DiskSpaceMonitorDescriptorDiskSpace
HudsonMasterComputermonitorData::getHudsonnodeMonitorsDiskSpaceMonitor()
{
	return hudsonnode_monitorsDiskSpaceMonitor;
}

void
HudsonMasterComputermonitorData::setHudsonnodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace  hudsonnode_monitorsDiskSpaceMonitor)
{
	this->hudsonnode_monitorsDiskSpaceMonitor = hudsonnode_monitorsDiskSpaceMonitor;
}

std::string
HudsonMasterComputermonitorData::getHudsonnodeMonitorsArchitectureMonitor()
{
	return hudsonnode_monitorsArchitectureMonitor;
}

void
HudsonMasterComputermonitorData::setHudsonnodeMonitorsArchitectureMonitor(std::string  hudsonnode_monitorsArchitectureMonitor)
{
	this->hudsonnode_monitorsArchitectureMonitor = hudsonnode_monitorsArchitectureMonitor;
}

ResponseTimeMonitorData
HudsonMasterComputermonitorData::getHudsonnodeMonitorsResponseTimeMonitor()
{
	return hudsonnode_monitorsResponseTimeMonitor;
}

void
HudsonMasterComputermonitorData::setHudsonnodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData  hudsonnode_monitorsResponseTimeMonitor)
{
	this->hudsonnode_monitorsResponseTimeMonitor = hudsonnode_monitorsResponseTimeMonitor;
}

ClockDifference
HudsonMasterComputermonitorData::getHudsonnodeMonitorsClockMonitor()
{
	return hudsonnode_monitorsClockMonitor;
}

void
HudsonMasterComputermonitorData::setHudsonnodeMonitorsClockMonitor(ClockDifference  hudsonnode_monitorsClockMonitor)
{
	this->hudsonnode_monitorsClockMonitor = hudsonnode_monitorsClockMonitor;
}

std::string
HudsonMasterComputermonitorData::getClass()
{
	return _class;
}

void
HudsonMasterComputermonitorData::setClass(std::string  _class)
{
	this->_class = _class;
}



