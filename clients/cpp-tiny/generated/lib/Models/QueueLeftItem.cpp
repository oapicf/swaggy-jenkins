

#include "QueueLeftItem.h"

using namespace Tiny;

QueueLeftItem::QueueLeftItem()
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
	cancelled = bool(false);
	executable = FreeStyleBuild();
}

QueueLeftItem::QueueLeftItem(std::string jsonString)
{
	this->fromJson(jsonString);
}

QueueLeftItem::~QueueLeftItem()
{

}

void
QueueLeftItem::fromJson(std::string jsonObj)
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

    const char *cancelledKey = "cancelled";

    if(object.has_key(cancelledKey))
    {
        bourne::json value = object[cancelledKey];



        jsonToValue(&cancelled, value, "bool");


    }

    const char *executableKey = "executable";

    if(object.has_key(executableKey))
    {
        bourne::json value = object[executableKey];




        FreeStyleBuild* obj = &executable;
		obj->fromJson(value.dump());

    }


}

bourne::json
QueueLeftItem::toJson()
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






    object["cancelled"] = isCancelled();







	object["executable"] = getExecutable().toJson();


    return object;

}

std::string
QueueLeftItem::getClass()
{
	return _class;
}

void
QueueLeftItem::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<CauseAction>
QueueLeftItem::getActions()
{
	return actions;
}

void
QueueLeftItem::setActions(std::list <CauseAction> actions)
{
	this->actions = actions;
}

bool
QueueLeftItem::isBlocked()
{
	return blocked;
}

void
QueueLeftItem::setBlocked(bool  blocked)
{
	this->blocked = blocked;
}

bool
QueueLeftItem::isBuildable()
{
	return buildable;
}

void
QueueLeftItem::setBuildable(bool  buildable)
{
	this->buildable = buildable;
}

int
QueueLeftItem::getId()
{
	return id;
}

void
QueueLeftItem::setId(int  id)
{
	this->id = id;
}

int
QueueLeftItem::getInQueueSince()
{
	return inQueueSince;
}

void
QueueLeftItem::setInQueueSince(int  inQueueSince)
{
	this->inQueueSince = inQueueSince;
}

std::string
QueueLeftItem::getParams()
{
	return params;
}

void
QueueLeftItem::setParams(std::string  params)
{
	this->params = params;
}

bool
QueueLeftItem::isStuck()
{
	return stuck;
}

void
QueueLeftItem::setStuck(bool  stuck)
{
	this->stuck = stuck;
}

FreeStyleProject
QueueLeftItem::getTask()
{
	return task;
}

void
QueueLeftItem::setTask(FreeStyleProject  task)
{
	this->task = task;
}

std::string
QueueLeftItem::getUrl()
{
	return url;
}

void
QueueLeftItem::setUrl(std::string  url)
{
	this->url = url;
}

std::string
QueueLeftItem::getWhy()
{
	return why;
}

void
QueueLeftItem::setWhy(std::string  why)
{
	this->why = why;
}

bool
QueueLeftItem::isCancelled()
{
	return cancelled;
}

void
QueueLeftItem::setCancelled(bool  cancelled)
{
	this->cancelled = cancelled;
}

FreeStyleBuild
QueueLeftItem::getExecutable()
{
	return executable;
}

void
QueueLeftItem::setExecutable(FreeStyleBuild  executable)
{
	this->executable = executable;
}



