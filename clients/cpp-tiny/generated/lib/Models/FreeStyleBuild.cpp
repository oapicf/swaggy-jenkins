

#include "FreeStyleBuild.h"

using namespace Tiny;

FreeStyleBuild::FreeStyleBuild()
{
	_class = std::string();
	number = int(0);
	url = std::string();
	actions = std::list<CauseAction>();
	building = bool(false);
	description = std::string();
	displayName = std::string();
	duration = int(0);
	estimatedDuration = int(0);
	executor = std::string();
	fullDisplayName = std::string();
	id = std::string();
	keepLog = bool(false);
	queueId = int(0);
	result = std::string();
	timestamp = int(0);
	builtOn = std::string();
	changeSet = EmptyChangeLogSet();
}

FreeStyleBuild::FreeStyleBuild(std::string jsonString)
{
	this->fromJson(jsonString);
}

FreeStyleBuild::~FreeStyleBuild()
{

}

void
FreeStyleBuild::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *numberKey = "number";

    if(object.has_key(numberKey))
    {
        bourne::json value = object[numberKey];



        jsonToValue(&number, value, "int");


    }

    const char *urlKey = "url";

    if(object.has_key(urlKey))
    {
        bourne::json value = object[urlKey];



        jsonToValue(&url, value, "std::string");


    }

    const char *actionsKey = "actions";

    if(object.has_key(actionsKey))
    {
        bourne::json value = object[actionsKey];


        std::list<CauseAction> actions_list;
        CauseAction element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            actions_list.push_back(element);
        }
        actions = actions_list;


    }

    const char *buildingKey = "building";

    if(object.has_key(buildingKey))
    {
        bourne::json value = object[buildingKey];



        jsonToValue(&building, value, "bool");


    }

    const char *descriptionKey = "description";

    if(object.has_key(descriptionKey))
    {
        bourne::json value = object[descriptionKey];



        jsonToValue(&description, value, "std::string");


    }

    const char *displayNameKey = "displayName";

    if(object.has_key(displayNameKey))
    {
        bourne::json value = object[displayNameKey];



        jsonToValue(&displayName, value, "std::string");


    }

    const char *durationKey = "duration";

    if(object.has_key(durationKey))
    {
        bourne::json value = object[durationKey];



        jsonToValue(&duration, value, "int");


    }

    const char *estimatedDurationKey = "estimatedDuration";

    if(object.has_key(estimatedDurationKey))
    {
        bourne::json value = object[estimatedDurationKey];



        jsonToValue(&estimatedDuration, value, "int");


    }

    const char *executorKey = "executor";

    if(object.has_key(executorKey))
    {
        bourne::json value = object[executorKey];



        jsonToValue(&executor, value, "std::string");


    }

    const char *fullDisplayNameKey = "fullDisplayName";

    if(object.has_key(fullDisplayNameKey))
    {
        bourne::json value = object[fullDisplayNameKey];



        jsonToValue(&fullDisplayName, value, "std::string");


    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *keepLogKey = "keepLog";

    if(object.has_key(keepLogKey))
    {
        bourne::json value = object[keepLogKey];



        jsonToValue(&keepLog, value, "bool");


    }

    const char *queueIdKey = "queueId";

    if(object.has_key(queueIdKey))
    {
        bourne::json value = object[queueIdKey];



        jsonToValue(&queueId, value, "int");


    }

    const char *resultKey = "result";

    if(object.has_key(resultKey))
    {
        bourne::json value = object[resultKey];



        jsonToValue(&result, value, "std::string");


    }

    const char *timestampKey = "timestamp";

    if(object.has_key(timestampKey))
    {
        bourne::json value = object[timestampKey];



        jsonToValue(&timestamp, value, "int");


    }

    const char *builtOnKey = "builtOn";

    if(object.has_key(builtOnKey))
    {
        bourne::json value = object[builtOnKey];



        jsonToValue(&builtOn, value, "std::string");


    }

    const char *changeSetKey = "changeSet";

    if(object.has_key(changeSetKey))
    {
        bourne::json value = object[changeSetKey];




        EmptyChangeLogSet* obj = &changeSet;
		obj->fromJson(value.dump());

    }


}

bourne::json
FreeStyleBuild::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["number"] = getNumber();






    object["url"] = getUrl();





    std::list<CauseAction> actions_list = getActions();
    bourne::json actions_arr = bourne::json::array();

    for(auto& var : actions_list)
    {
        CauseAction obj = var;
        actions_arr.append(obj.toJson());
    }
    object["actions"] = actions_arr;







    object["building"] = isBuilding();






    object["description"] = getDescription();






    object["displayName"] = getDisplayName();






    object["duration"] = getDuration();






    object["estimatedDuration"] = getEstimatedDuration();






    object["executor"] = getExecutor();






    object["fullDisplayName"] = getFullDisplayName();






    object["id"] = getId();






    object["keepLog"] = isKeepLog();






    object["queueId"] = getQueueId();






    object["result"] = getResult();






    object["timestamp"] = getTimestamp();






    object["builtOn"] = getBuiltOn();







	object["changeSet"] = getChangeSet().toJson();


    return object;

}

std::string
FreeStyleBuild::getClass()
{
	return _class;
}

void
FreeStyleBuild::setClass(std::string  _class)
{
	this->_class = _class;
}

int
FreeStyleBuild::getNumber()
{
	return number;
}

void
FreeStyleBuild::setNumber(int  number)
{
	this->number = number;
}

std::string
FreeStyleBuild::getUrl()
{
	return url;
}

void
FreeStyleBuild::setUrl(std::string  url)
{
	this->url = url;
}

std::list<CauseAction>
FreeStyleBuild::getActions()
{
	return actions;
}

void
FreeStyleBuild::setActions(std::list <CauseAction> actions)
{
	this->actions = actions;
}

bool
FreeStyleBuild::isBuilding()
{
	return building;
}

void
FreeStyleBuild::setBuilding(bool  building)
{
	this->building = building;
}

std::string
FreeStyleBuild::getDescription()
{
	return description;
}

void
FreeStyleBuild::setDescription(std::string  description)
{
	this->description = description;
}

std::string
FreeStyleBuild::getDisplayName()
{
	return displayName;
}

void
FreeStyleBuild::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
FreeStyleBuild::getDuration()
{
	return duration;
}

void
FreeStyleBuild::setDuration(int  duration)
{
	this->duration = duration;
}

int
FreeStyleBuild::getEstimatedDuration()
{
	return estimatedDuration;
}

void
FreeStyleBuild::setEstimatedDuration(int  estimatedDuration)
{
	this->estimatedDuration = estimatedDuration;
}

std::string
FreeStyleBuild::getExecutor()
{
	return executor;
}

void
FreeStyleBuild::setExecutor(std::string  executor)
{
	this->executor = executor;
}

std::string
FreeStyleBuild::getFullDisplayName()
{
	return fullDisplayName;
}

void
FreeStyleBuild::setFullDisplayName(std::string  fullDisplayName)
{
	this->fullDisplayName = fullDisplayName;
}

std::string
FreeStyleBuild::getId()
{
	return id;
}

void
FreeStyleBuild::setId(std::string  id)
{
	this->id = id;
}

bool
FreeStyleBuild::isKeepLog()
{
	return keepLog;
}

void
FreeStyleBuild::setKeepLog(bool  keepLog)
{
	this->keepLog = keepLog;
}

int
FreeStyleBuild::getQueueId()
{
	return queueId;
}

void
FreeStyleBuild::setQueueId(int  queueId)
{
	this->queueId = queueId;
}

std::string
FreeStyleBuild::getResult()
{
	return result;
}

void
FreeStyleBuild::setResult(std::string  result)
{
	this->result = result;
}

int
FreeStyleBuild::getTimestamp()
{
	return timestamp;
}

void
FreeStyleBuild::setTimestamp(int  timestamp)
{
	this->timestamp = timestamp;
}

std::string
FreeStyleBuild::getBuiltOn()
{
	return builtOn;
}

void
FreeStyleBuild::setBuiltOn(std::string  builtOn)
{
	this->builtOn = builtOn;
}

EmptyChangeLogSet
FreeStyleBuild::getChangeSet()
{
	return changeSet;
}

void
FreeStyleBuild::setChangeSet(EmptyChangeLogSet  changeSet)
{
	this->changeSet = changeSet;
}



