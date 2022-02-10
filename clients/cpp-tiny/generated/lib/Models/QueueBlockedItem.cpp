

#include "QueueBlockedItem.h"

using namespace Tiny;

QueueBlockedItem::QueueBlockedItem()
{
	_class = std::string();
	actions = std::list<CauseAction>();
	blocked = bool(false);
	buildable = bool(false);
	id = int(0);
	inQueueSince = int(0);
	params = std::string();
	stuck = bool(false);
	task = FreeStyleProject();
	url = std::string();
	why = std::string();
	buildableStartMilliseconds = int(0);
}

QueueBlockedItem::QueueBlockedItem(std::string jsonString)
{
	this->fromJson(jsonString);
}

QueueBlockedItem::~QueueBlockedItem()
{

}

void
QueueBlockedItem::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


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

    const char *blockedKey = "blocked";

    if(object.has_key(blockedKey))
    {
        bourne::json value = object[blockedKey];



        jsonToValue(&blocked, value, "bool");


    }

    const char *buildableKey = "buildable";

    if(object.has_key(buildableKey))
    {
        bourne::json value = object[buildableKey];



        jsonToValue(&buildable, value, "bool");


    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "int");


    }

    const char *inQueueSinceKey = "inQueueSince";

    if(object.has_key(inQueueSinceKey))
    {
        bourne::json value = object[inQueueSinceKey];



        jsonToValue(&inQueueSince, value, "int");


    }

    const char *paramsKey = "params";

    if(object.has_key(paramsKey))
    {
        bourne::json value = object[paramsKey];



        jsonToValue(&params, value, "std::string");


    }

    const char *stuckKey = "stuck";

    if(object.has_key(stuckKey))
    {
        bourne::json value = object[stuckKey];



        jsonToValue(&stuck, value, "bool");


    }

    const char *taskKey = "task";

    if(object.has_key(taskKey))
    {
        bourne::json value = object[taskKey];




        FreeStyleProject* obj = &task;
		obj->fromJson(value.dump());

    }

    const char *urlKey = "url";

    if(object.has_key(urlKey))
    {
        bourne::json value = object[urlKey];



        jsonToValue(&url, value, "std::string");


    }

    const char *whyKey = "why";

    if(object.has_key(whyKey))
    {
        bourne::json value = object[whyKey];



        jsonToValue(&why, value, "std::string");


    }

    const char *buildableStartMillisecondsKey = "buildableStartMilliseconds";

    if(object.has_key(buildableStartMillisecondsKey))
    {
        bourne::json value = object[buildableStartMillisecondsKey];



        jsonToValue(&buildableStartMilliseconds, value, "int");


    }


}

bourne::json
QueueBlockedItem::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();





    std::list<CauseAction> actions_list = getActions();
    bourne::json actions_arr = bourne::json::array();

    for(auto& var : actions_list)
    {
        CauseAction obj = var;
        actions_arr.append(obj.toJson());
    }
    object["actions"] = actions_arr;







    object["blocked"] = isBlocked();






    object["buildable"] = isBuildable();






    object["id"] = getId();






    object["inQueueSince"] = getInQueueSince();






    object["params"] = getParams();






    object["stuck"] = isStuck();







	object["task"] = getTask().toJson();





    object["url"] = getUrl();






    object["why"] = getWhy();






    object["buildableStartMilliseconds"] = getBuildableStartMilliseconds();



    return object;

}

std::string
QueueBlockedItem::getClass()
{
	return _class;
}

void
QueueBlockedItem::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<CauseAction>
QueueBlockedItem::getActions()
{
	return actions;
}

void
QueueBlockedItem::setActions(std::list <CauseAction> actions)
{
	this->actions = actions;
}

bool
QueueBlockedItem::isBlocked()
{
	return blocked;
}

void
QueueBlockedItem::setBlocked(bool  blocked)
{
	this->blocked = blocked;
}

bool
QueueBlockedItem::isBuildable()
{
	return buildable;
}

void
QueueBlockedItem::setBuildable(bool  buildable)
{
	this->buildable = buildable;
}

int
QueueBlockedItem::getId()
{
	return id;
}

void
QueueBlockedItem::setId(int  id)
{
	this->id = id;
}

int
QueueBlockedItem::getInQueueSince()
{
	return inQueueSince;
}

void
QueueBlockedItem::setInQueueSince(int  inQueueSince)
{
	this->inQueueSince = inQueueSince;
}

std::string
QueueBlockedItem::getParams()
{
	return params;
}

void
QueueBlockedItem::setParams(std::string  params)
{
	this->params = params;
}

bool
QueueBlockedItem::isStuck()
{
	return stuck;
}

void
QueueBlockedItem::setStuck(bool  stuck)
{
	this->stuck = stuck;
}

FreeStyleProject
QueueBlockedItem::getTask()
{
	return task;
}

void
QueueBlockedItem::setTask(FreeStyleProject  task)
{
	this->task = task;
}

std::string
QueueBlockedItem::getUrl()
{
	return url;
}

void
QueueBlockedItem::setUrl(std::string  url)
{
	this->url = url;
}

std::string
QueueBlockedItem::getWhy()
{
	return why;
}

void
QueueBlockedItem::setWhy(std::string  why)
{
	this->why = why;
}

int
QueueBlockedItem::getBuildableStartMilliseconds()
{
	return buildableStartMilliseconds;
}

void
QueueBlockedItem::setBuildableStartMilliseconds(int  buildableStartMilliseconds)
{
	this->buildableStartMilliseconds = buildableStartMilliseconds;
}



