

#include "PipelineRunNode.h"

using namespace Tiny;

PipelineRunNode::PipelineRunNode()
{
	_class = std::string();
	displayName = std::string();
	durationInMillis = int(0);
	edges = std::list<PipelineRunNodeedges>();
	id = std::string();
	result = std::string();
	startTime = std::string();
	state = std::string();
}

PipelineRunNode::PipelineRunNode(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineRunNode::~PipelineRunNode()
{

}

void
PipelineRunNode::fromJson(std::string jsonObj)
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

    const char *durationInMillisKey = "durationInMillis";

    if(object.has_key(durationInMillisKey))
    {
        bourne::json value = object[durationInMillisKey];



        jsonToValue(&durationInMillis, value, "int");


    }

    const char *edgesKey = "edges";

    if(object.has_key(edgesKey))
    {
        bourne::json value = object[edgesKey];


        std::list<PipelineRunNodeedges> edges_list;
        PipelineRunNodeedges element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            edges_list.push_back(element);
        }
        edges = edges_list;


    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *resultKey = "result";

    if(object.has_key(resultKey))
    {
        bourne::json value = object[resultKey];



        jsonToValue(&result, value, "std::string");


    }

    const char *startTimeKey = "startTime";

    if(object.has_key(startTimeKey))
    {
        bourne::json value = object[startTimeKey];



        jsonToValue(&startTime, value, "std::string");


    }

    const char *stateKey = "state";

    if(object.has_key(stateKey))
    {
        bourne::json value = object[stateKey];



        jsonToValue(&state, value, "std::string");


    }


}

bourne::json
PipelineRunNode::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["displayName"] = getDisplayName();






    object["durationInMillis"] = getDurationInMillis();





    std::list<PipelineRunNodeedges> edges_list = getEdges();
    bourne::json edges_arr = bourne::json::array();

    for(auto& var : edges_list)
    {
        PipelineRunNodeedges obj = var;
        edges_arr.append(obj.toJson());
    }
    object["edges"] = edges_arr;







    object["id"] = getId();






    object["result"] = getResult();






    object["startTime"] = getStartTime();






    object["state"] = getState();



    return object;

}

std::string
PipelineRunNode::getClass()
{
	return _class;
}

void
PipelineRunNode::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
PipelineRunNode::getDisplayName()
{
	return displayName;
}

void
PipelineRunNode::setDisplayName(std::string  displayName)
{
	this->displayName = displayName;
}

int
PipelineRunNode::getDurationInMillis()
{
	return durationInMillis;
}

void
PipelineRunNode::setDurationInMillis(int  durationInMillis)
{
	this->durationInMillis = durationInMillis;
}

std::list<PipelineRunNodeedges>
PipelineRunNode::getEdges()
{
	return edges;
}

void
PipelineRunNode::setEdges(std::list <PipelineRunNodeedges> edges)
{
	this->edges = edges;
}

std::string
PipelineRunNode::getId()
{
	return id;
}

void
PipelineRunNode::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelineRunNode::getResult()
{
	return result;
}

void
PipelineRunNode::setResult(std::string  result)
{
	this->result = result;
}

std::string
PipelineRunNode::getStartTime()
{
	return startTime;
}

void
PipelineRunNode::setStartTime(std::string  startTime)
{
	this->startTime = startTime;
}

std::string
PipelineRunNode::getState()
{
	return state;
}

void
PipelineRunNode::setState(std::string  state)
{
	this->state = state;
}



