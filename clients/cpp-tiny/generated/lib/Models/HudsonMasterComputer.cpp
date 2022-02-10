

#include "HudsonMasterComputer.h"

using namespace Tiny;

HudsonMasterComputer::HudsonMasterComputer()
{
	_class = std::string();
	displayName = std::string();
	executors = std::list<HudsonMasterComputerexecutors>();
	icon = std::string();
	iconClassName = std::string();
	idle = bool(false);
	jnlpAgent = bool(false);
	launchSupported = bool(false);
	loadStatistics = Label1();
	manualLaunchAllowed = bool(false);
	monitorData = HudsonMasterComputermonitorData();
	numExecutors = int(0);
	offline = bool(false);
	offlineCause = std::string();
	offlineCauseReason = std::string();
	temporarilyOffline = bool(false);
}

HudsonMasterComputer::HudsonMasterComputer(std::string jsonString)
{
	this->fromJson(jsonString);
}

HudsonMasterComputer::~HudsonMasterComputer()
{

}

void
HudsonMasterComputer::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *displayNameKey = "displayName";

    if(object.has_key(displayNameKey))
    {
        bourne::json value = object[displayNameKey];



        jsonToValue(&displayName, value, "std::string");


    }

    const char *executorsKey = "executors";

    if(object.has_key(executorsKey))
    {
        bourne::json value = object[executorsKey];


        std::list<HudsonMasterComputerexecutors> executors_list;
        HudsonMasterComputerexecutors element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            executors_list.push_back(element);
        }
        executors = executors_list;


    }

    const char *iconKey = "icon";

    if(object.has_key(iconKey))
    {
        bourne::json value = object[iconKey];



        jsonToValue(&icon, value, "std::string");


    }

    const char *iconClassNameKey = "iconClassName";

    if(object.has_key(iconClassNameKey))
    {
        bourne::json value = object[iconClassNameKey];



        jsonToValue(&iconClassName, value, "std::string");


    }

    const char *idleKey = "idle";

    if(object.has_key(idleKey))
    {
        bourne::json value = object[idleKey];



        jsonToValue(&idle, value, "bool");


    }

    const char *jnlpAgentKey = "jnlpAgent";

    if(object.has_key(jnlpAgentKey))
    {
        bourne::json value = object[jnlpAgentKey];



        jsonToValue(&jnlpAgent, value, "bool");


    }

    const char *launchSupportedKey = "launchSupported";

    if(object.has_key(launchSupportedKey))
    {
        bourne::json value = object[launchSupportedKey];



        jsonToValue(&launchSupported, value, "bool");


    }

    const char *loadStatisticsKey = "loadStatistics";

    if(object.has_key(loadStatisticsKey))
    {
        bourne::json value = object[loadStatisticsKey];




        Label1* obj = &loadStatistics;
		obj->fromJson(value.dump());

    }

    const char *manualLaunchAllowedKey = "manualLaunchAllowed";

    if(object.has_key(manualLaunchAllowedKey))
    {
        bourne::json value = object[manualLaunchAllowedKey];



        jsonToValue(&manualLaunchAllowed, value, "bool");


    }

    const char *monitorDataKey = "monitorData";

    if(object.has_key(monitorDataKey))
    {
        bourne::json value = object[monitorDataKey];




        HudsonMasterComputermonitorData* obj = &monitorData;
		obj->fromJson(value.dump());

    }

    const char *numExecutorsKey = "numExecutors";

    if(object.has_key(numExecutorsKey))
    {
        bourne::json value = object[numExecutorsKey];



        jsonToValue(&numExecutors, value, "int");


    }

    const char *offlineKey = "offline";

    if(object.has_key(offlineKey))
    {
        bourne::json value = object[offlineKey];



        jsonToValue(&offline, value, "bool");


    }

    const char *offlineCauseKey = "offlineCause";

    if(object.has_key(offlineCauseKey))
    {
        bourne::json value = object[offlineCauseKey];



        jsonToValue(&offlineCause, value, "std::string");


    }

    const char *offlineCauseReasonKey = "offlineCauseReason";

    if(object.has_key(offlineCauseReasonKey))
    {
        bourne::json value = object[offlineCauseReasonKey];



        jsonToValue(&offlineCauseReason, value, "std::string");


    }

    const char *temporarilyOfflineKey = "temporarilyOffline";

    if(object.has_key(temporarilyOfflineKey))
    {
        bourne::json value = object[temporarilyOfflineKey];



        jsonToValue(&temporarilyOffline, value, "bool");


    }


}

bourne::json
HudsonMasterComputer::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["displayName"] = getDisplayName();





    std::list<HudsonMasterComputerexecutors> executors_list = getExecutors();
    bourne::json executors_arr = bourne::json::array();

    for(auto& var : executors_list)
    {
        HudsonMasterComputerexecutors obj = var;
        executors_arr.append(obj.toJson());
    }
    object["executors"] = executors_arr;







    object["icon"] = getIcon();






    object["iconClassName"] = getIconClassName();






    object["idle"] = isIdle();






    object["jnlpAgent"] = isJnlpAgent();






    object["launchSupported"] = isLaunchSupported();







	object["loadStatistics"] = getLoadStatistics().toJson();





    object["manualLaunchAllowed"] = isManualLaunchAllowed();







	object["monitorData"] = getMonitorData().toJson();





    object["numExecutors"] = getNumExecutors();






    object["offline"] = isOffline();






    object["offlineCause"] = getOfflineCause();






    object["offlineCauseReason"] = getOfflineCauseReason();






    object["temporarilyOffline"] = isTemporarilyOffline();



    return object;

}

std::string
HudsonMasterComputer::getClass()
{
	return _class;
}

void
HudsonMasterComputer::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
HudsonMasterComputer::getDisplayName()
{
	return displayName;
}

void
HudsonMasterComputer::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

std::list<HudsonMasterComputerexecutors>
HudsonMasterComputer::getExecutors()
{
	return executors;
}

void
HudsonMasterComputer::setExecutors(std::list <HudsonMasterComputerexecutors> executors)
{
	this->executors = executors;
}

std::string
HudsonMasterComputer::getIcon()
{
	return icon;
}

void
HudsonMasterComputer::setIcon(std::string  icon)
{
	this->icon = icon;
}

std::string
HudsonMasterComputer::getIconClassName()
{
	return iconClassName;
}

void
HudsonMasterComputer::setIconClassName(std::string  iconClassName)
{
	this->iconClassName = iconClassName;
}

bool
HudsonMasterComputer::isIdle()
{
	return idle;
}

void
HudsonMasterComputer::setIdle(bool  idle)
{
	this->idle = idle;
}

bool
HudsonMasterComputer::isJnlpAgent()
{
	return jnlpAgent;
}

void
HudsonMasterComputer::setJnlpAgent(bool  jnlpAgent)
{
	this->jnlpAgent = jnlpAgent;
}

bool
HudsonMasterComputer::isLaunchSupported()
{
	return launchSupported;
}

void
HudsonMasterComputer::setLaunchSupported(bool  launchSupported)
{
	this->launchSupported = launchSupported;
}

Label1
HudsonMasterComputer::getLoadStatistics()
{
	return loadStatistics;
}

void
HudsonMasterComputer::setLoadStatistics(Label1  loadStatistics)
{
	this->loadStatistics = loadStatistics;
}

bool
HudsonMasterComputer::isManualLaunchAllowed()
{
	return manualLaunchAllowed;
}

void
HudsonMasterComputer::setManualLaunchAllowed(bool  manualLaunchAllowed)
{
	this->manualLaunchAllowed = manualLaunchAllowed;
}

HudsonMasterComputermonitorData
HudsonMasterComputer::getMonitorData()
{
	return monitorData;
}

void
HudsonMasterComputer::setMonitorData(HudsonMasterComputermonitorData  monitorData)
{
	this->monitorData = monitorData;
}

int
HudsonMasterComputer::getNumExecutors()
{
	return numExecutors;
}

void
HudsonMasterComputer::setNumExecutors(int  numExecutors)
{
	this->numExecutors = numExecutors;
}

bool
HudsonMasterComputer::isOffline()
{
	return offline;
}

void
HudsonMasterComputer::setOffline(bool  offline)
{
	this->offline = offline;
}

std::string
HudsonMasterComputer::getOfflineCause()
{
	return offlineCause;
}

void
HudsonMasterComputer::setOfflineCause(std::string  offlineCause)
{
	this->offlineCause = offlineCause;
}

std::string
HudsonMasterComputer::getOfflineCauseReason()
{
	return offlineCauseReason;
}

void
HudsonMasterComputer::setOfflineCauseReason(std::string  offlineCauseReason)
{
	this->offlineCauseReason = offlineCauseReason;
}

bool
HudsonMasterComputer::isTemporarilyOffline()
{
	return temporarilyOffline;
}

void
HudsonMasterComputer::setTemporarilyOffline(bool  temporarilyOffline)
{
	this->temporarilyOffline = temporarilyOffline;
}



