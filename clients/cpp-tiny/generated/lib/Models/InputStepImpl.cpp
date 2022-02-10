

#include "InputStepImpl.h"

using namespace Tiny;

InputStepImpl::InputStepImpl()
{
	_class = std::string();
	_links = InputStepImpllinks();
	id = std::string();
	message = std::string();
	ok = std::string();
	parameters = std::list<StringParameterDefinition>();
	submitter = std::string();
}

InputStepImpl::InputStepImpl(std::string jsonString)
{
	this->fromJson(jsonString);
}

InputStepImpl::~InputStepImpl()
{

}

void
InputStepImpl::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *_linksKey = "_links";

    if(object.has_key(_linksKey))
    {
        bourne::json value = object[_linksKey];




        InputStepImpllinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *messageKey = "message";

    if(object.has_key(messageKey))
    {
        bourne::json value = object[messageKey];



        jsonToValue(&message, value, "std::string");


    }

    const char *okKey = "ok";

    if(object.has_key(okKey))
    {
        bourne::json value = object[okKey];



        jsonToValue(&ok, value, "std::string");


    }

    const char *parametersKey = "parameters";

    if(object.has_key(parametersKey))
    {
        bourne::json value = object[parametersKey];


        std::list<StringParameterDefinition> parameters_list;
        StringParameterDefinition element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            parameters_list.push_back(element);
        }
        parameters = parameters_list;


    }

    const char *submitterKey = "submitter";

    if(object.has_key(submitterKey))
    {
        bourne::json value = object[submitterKey];



        jsonToValue(&submitter, value, "std::string");


    }


}

bourne::json
InputStepImpl::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();





    object["id"] = getId();






    object["message"] = getMessage();






    object["ok"] = getOk();





    std::list<StringParameterDefinition> parameters_list = getParameters();
    bourne::json parameters_arr = bourne::json::array();

    for(auto& var : parameters_list)
    {
        StringParameterDefinition obj = var;
        parameters_arr.append(obj.toJson());
    }
    object["parameters"] = parameters_arr;







    object["submitter"] = getSubmitter();



    return object;

}

std::string
InputStepImpl::getClass()
{
	return _class;
}

void
InputStepImpl::setClass(std::string  _class)
{
	this->_class = _class;
}

InputStepImpllinks
InputStepImpl::getLinks()
{
	return _links;
}

void
InputStepImpl::setLinks(InputStepImpllinks  _links)
{
	this->_links = _links;
}

std::string
InputStepImpl::getId()
{
	return id;
}

void
InputStepImpl::setId(std::string  id)
{
	this->id = id;
}

std::string
InputStepImpl::getMessage()
{
	return message;
}

void
InputStepImpl::setMessage(std::string  message)
{
	this->message = message;
}

std::string
InputStepImpl::getOk()
{
	return ok;
}

void
InputStepImpl::setOk(std::string  ok)
{
	this->ok = ok;
}

std::list<StringParameterDefinition>
InputStepImpl::getParameters()
{
	return parameters;
}

void
InputStepImpl::setParameters(std::list <StringParameterDefinition> parameters)
{
	this->parameters = parameters;
}

std::string
InputStepImpl::getSubmitter()
{
	return submitter;
}

void
InputStepImpl::setSubmitter(std::string  submitter)
{
	this->submitter = submitter;
}



