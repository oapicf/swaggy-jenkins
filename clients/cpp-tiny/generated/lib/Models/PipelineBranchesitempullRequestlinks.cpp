

#include "PipelineBranchesitempullRequestlinks.h"

using namespace Tiny;

PipelineBranchesitempullRequestlinks::PipelineBranchesitempullRequestlinks()
{
	self = std::string();
	_class = std::string();
}

PipelineBranchesitempullRequestlinks::PipelineBranchesitempullRequestlinks(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineBranchesitempullRequestlinks::~PipelineBranchesitempullRequestlinks()
{

}

void
PipelineBranchesitempullRequestlinks::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *selfKey = "self";

    if(object.has_key(selfKey))
    {
        bourne::json value = object[selfKey];



        jsonToValue(&self, value, "std::string");


    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
PipelineBranchesitempullRequestlinks::toJson()
{
    bourne::json object = bourne::json::object();





    object["self"] = getSelf();






    object["_class"] = getClass();



    return object;

}

std::string
PipelineBranchesitempullRequestlinks::getSelf()
{
	return self;
}

void
PipelineBranchesitempullRequestlinks::setSelf(std::string  self)
{
	this->self = self;
}

std::string
PipelineBranchesitempullRequestlinks::getClass()
{
	return _class;
}

void
PipelineBranchesitempullRequestlinks::setClass(std::string  _class)
{
	this->_class = _class;
}



