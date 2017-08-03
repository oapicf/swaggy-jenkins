#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "HudsonMasterComputermonitorData.h"

using namespace std;
using namespace Tizen::ArtikCloud;

HudsonMasterComputermonitorData::HudsonMasterComputermonitorData()
{
	//__init();
}

HudsonMasterComputermonitorData::~HudsonMasterComputermonitorData()
{
	//__cleanup();
}

void
HudsonMasterComputermonitorData::__init()
{
	//
	//
	//hudsonnode_monitorsSwapSpaceMonitor = new SwapSpaceMonitorMemoryUsage2();
	//
	//
	//hudsonnode_monitorsTemporarySpaceMonitor = new DiskSpaceMonitorDescriptorDiskSpace();
	//
	//
	//hudsonnode_monitorsDiskSpaceMonitor = new DiskSpaceMonitorDescriptorDiskSpace();
	//
	//
	//hudsonnode_monitorsArchitectureMonitor = std::string();
	//
	//
	//hudsonnode_monitorsResponseTimeMonitor = new ResponseTimeMonitorData();
	//
	//
	//hudsonnode_monitorsClockMonitor = new ClockDifference();
	//
	//
	//_class = std::string();
	//
}

void
HudsonMasterComputermonitorData::__cleanup()
{
	//if(hudsonnode_monitorsSwapSpaceMonitor != NULL) {
	//
	//delete hudsonnode_monitorsSwapSpaceMonitor;
	//hudsonnode_monitorsSwapSpaceMonitor = NULL;
	//}
	//if(hudsonnode_monitorsTemporarySpaceMonitor != NULL) {
	//
	//delete hudsonnode_monitorsTemporarySpaceMonitor;
	//hudsonnode_monitorsTemporarySpaceMonitor = NULL;
	//}
	//if(hudsonnode_monitorsDiskSpaceMonitor != NULL) {
	//
	//delete hudsonnode_monitorsDiskSpaceMonitor;
	//hudsonnode_monitorsDiskSpaceMonitor = NULL;
	//}
	//if(hudsonnode_monitorsArchitectureMonitor != NULL) {
	//
	//delete hudsonnode_monitorsArchitectureMonitor;
	//hudsonnode_monitorsArchitectureMonitor = NULL;
	//}
	//if(hudsonnode_monitorsResponseTimeMonitor != NULL) {
	//
	//delete hudsonnode_monitorsResponseTimeMonitor;
	//hudsonnode_monitorsResponseTimeMonitor = NULL;
	//}
	//if(hudsonnode_monitorsClockMonitor != NULL) {
	//
	//delete hudsonnode_monitorsClockMonitor;
	//hudsonnode_monitorsClockMonitor = NULL;
	//}
	//if(_class != NULL) {
	//
	//delete _class;
	//_class = NULL;
	//}
	//
}

void
HudsonMasterComputermonitorData::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *hudsonnode_monitorsSwapSpaceMonitorKey = "hudson.node_monitors.SwapSpaceMonitor";
	node = json_object_get_member(pJsonObject, hudsonnode_monitorsSwapSpaceMonitorKey);
	if (node !=NULL) {
	

		if (isprimitive("SwapSpaceMonitorMemoryUsage2")) {
			jsonToValue(&hudsonnode_monitorsSwapSpaceMonitor, node, "SwapSpaceMonitorMemoryUsage2", "SwapSpaceMonitorMemoryUsage2");
		} else {
			
			SwapSpaceMonitorMemoryUsage2* obj = static_cast<SwapSpaceMonitorMemoryUsage2*> (&hudsonnode_monitorsSwapSpaceMonitor);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *hudsonnode_monitorsTemporarySpaceMonitorKey = "hudson.node_monitors.TemporarySpaceMonitor";
	node = json_object_get_member(pJsonObject, hudsonnode_monitorsTemporarySpaceMonitorKey);
	if (node !=NULL) {
	

		if (isprimitive("DiskSpaceMonitorDescriptorDiskSpace")) {
			jsonToValue(&hudsonnode_monitorsTemporarySpaceMonitor, node, "DiskSpaceMonitorDescriptorDiskSpace", "DiskSpaceMonitorDescriptorDiskSpace");
		} else {
			
			DiskSpaceMonitorDescriptorDiskSpace* obj = static_cast<DiskSpaceMonitorDescriptorDiskSpace*> (&hudsonnode_monitorsTemporarySpaceMonitor);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *hudsonnode_monitorsDiskSpaceMonitorKey = "hudson.node_monitors.DiskSpaceMonitor";
	node = json_object_get_member(pJsonObject, hudsonnode_monitorsDiskSpaceMonitorKey);
	if (node !=NULL) {
	

		if (isprimitive("DiskSpaceMonitorDescriptorDiskSpace")) {
			jsonToValue(&hudsonnode_monitorsDiskSpaceMonitor, node, "DiskSpaceMonitorDescriptorDiskSpace", "DiskSpaceMonitorDescriptorDiskSpace");
		} else {
			
			DiskSpaceMonitorDescriptorDiskSpace* obj = static_cast<DiskSpaceMonitorDescriptorDiskSpace*> (&hudsonnode_monitorsDiskSpaceMonitor);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *hudsonnode_monitorsArchitectureMonitorKey = "hudson.node_monitors.ArchitectureMonitor";
	node = json_object_get_member(pJsonObject, hudsonnode_monitorsArchitectureMonitorKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&hudsonnode_monitorsArchitectureMonitor, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *hudsonnode_monitorsResponseTimeMonitorKey = "hudson.node_monitors.ResponseTimeMonitor";
	node = json_object_get_member(pJsonObject, hudsonnode_monitorsResponseTimeMonitorKey);
	if (node !=NULL) {
	

		if (isprimitive("ResponseTimeMonitorData")) {
			jsonToValue(&hudsonnode_monitorsResponseTimeMonitor, node, "ResponseTimeMonitorData", "ResponseTimeMonitorData");
		} else {
			
			ResponseTimeMonitorData* obj = static_cast<ResponseTimeMonitorData*> (&hudsonnode_monitorsResponseTimeMonitor);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *hudsonnode_monitorsClockMonitorKey = "hudson.node_monitors.ClockMonitor";
	node = json_object_get_member(pJsonObject, hudsonnode_monitorsClockMonitorKey);
	if (node !=NULL) {
	

		if (isprimitive("ClockDifference")) {
			jsonToValue(&hudsonnode_monitorsClockMonitor, node, "ClockDifference", "ClockDifference");
		} else {
			
			ClockDifference* obj = static_cast<ClockDifference*> (&hudsonnode_monitorsClockMonitor);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *_classKey = "_class";
	node = json_object_get_member(pJsonObject, _classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&_class, node, "std::string", "");
		} else {
			
		}
	}
}

HudsonMasterComputermonitorData::HudsonMasterComputermonitorData(char* json)
{
	this->fromJson(json);
}

char*
HudsonMasterComputermonitorData::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("SwapSpaceMonitorMemoryUsage2")) {
		SwapSpaceMonitorMemoryUsage2 obj = getHudsonnodeMonitorsSwapSpaceMonitor();
		node = converttoJson(&obj, "SwapSpaceMonitorMemoryUsage2", "");
	}
	else {
		
		SwapSpaceMonitorMemoryUsage2 obj = static_cast<SwapSpaceMonitorMemoryUsage2> (getHudsonnodeMonitorsSwapSpaceMonitor());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *hudsonnode_monitorsSwapSpaceMonitorKey = "hudson.node_monitors.SwapSpaceMonitor";
	json_object_set_member(pJsonObject, hudsonnode_monitorsSwapSpaceMonitorKey, node);
	if (isprimitive("DiskSpaceMonitorDescriptorDiskSpace")) {
		DiskSpaceMonitorDescriptorDiskSpace obj = getHudsonnodeMonitorsTemporarySpaceMonitor();
		node = converttoJson(&obj, "DiskSpaceMonitorDescriptorDiskSpace", "");
	}
	else {
		
		DiskSpaceMonitorDescriptorDiskSpace obj = static_cast<DiskSpaceMonitorDescriptorDiskSpace> (getHudsonnodeMonitorsTemporarySpaceMonitor());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *hudsonnode_monitorsTemporarySpaceMonitorKey = "hudson.node_monitors.TemporarySpaceMonitor";
	json_object_set_member(pJsonObject, hudsonnode_monitorsTemporarySpaceMonitorKey, node);
	if (isprimitive("DiskSpaceMonitorDescriptorDiskSpace")) {
		DiskSpaceMonitorDescriptorDiskSpace obj = getHudsonnodeMonitorsDiskSpaceMonitor();
		node = converttoJson(&obj, "DiskSpaceMonitorDescriptorDiskSpace", "");
	}
	else {
		
		DiskSpaceMonitorDescriptorDiskSpace obj = static_cast<DiskSpaceMonitorDescriptorDiskSpace> (getHudsonnodeMonitorsDiskSpaceMonitor());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *hudsonnode_monitorsDiskSpaceMonitorKey = "hudson.node_monitors.DiskSpaceMonitor";
	json_object_set_member(pJsonObject, hudsonnode_monitorsDiskSpaceMonitorKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getHudsonnodeMonitorsArchitectureMonitor();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *hudsonnode_monitorsArchitectureMonitorKey = "hudson.node_monitors.ArchitectureMonitor";
	json_object_set_member(pJsonObject, hudsonnode_monitorsArchitectureMonitorKey, node);
	if (isprimitive("ResponseTimeMonitorData")) {
		ResponseTimeMonitorData obj = getHudsonnodeMonitorsResponseTimeMonitor();
		node = converttoJson(&obj, "ResponseTimeMonitorData", "");
	}
	else {
		
		ResponseTimeMonitorData obj = static_cast<ResponseTimeMonitorData> (getHudsonnodeMonitorsResponseTimeMonitor());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *hudsonnode_monitorsResponseTimeMonitorKey = "hudson.node_monitors.ResponseTimeMonitor";
	json_object_set_member(pJsonObject, hudsonnode_monitorsResponseTimeMonitorKey, node);
	if (isprimitive("ClockDifference")) {
		ClockDifference obj = getHudsonnodeMonitorsClockMonitor();
		node = converttoJson(&obj, "ClockDifference", "");
	}
	else {
		
		ClockDifference obj = static_cast<ClockDifference> (getHudsonnodeMonitorsClockMonitor());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *hudsonnode_monitorsClockMonitorKey = "hudson.node_monitors.ClockMonitor";
	json_object_set_member(pJsonObject, hudsonnode_monitorsClockMonitorKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *_classKey = "_class";
	json_object_set_member(pJsonObject, _classKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
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


