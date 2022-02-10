

#include "ListView.h"

using namespace Tiny;

ListView::ListView()
{
	_class = std::string();
	description = std::string();
	jobs = std::list<FreeStyleProject>();
	name = std::string();
	url = std::string();
}

ListView::ListView(std::string jsonString)
{
	this->fromJson(jsonString);
}

ListView::~ListView()
{

}

void
ListView::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *descriptionKey = "description";

    if(object.has_key(descriptionKey))
    {
        bourne::json value = object[descriptionKey];



        jsonToValue(&description, value, "std::string");


    }

    const char *jobsKey = "jobs";

    if(object.has_key(jobsKey))
    {
        bourne::json value = object[jobsKey];


        std::list<FreeStyleProject> jobs_list;
        FreeStyleProject element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            jobs_list.push_back(element);
        }
        jobs = jobs_list;


    }

    const char *nameKey = "name";

    if(object.has_key(nameKey))
    {
        bourne::json value = object[nameKey];



        jsonToValue(&name, value, "std::string");


    }

    const char *urlKey = "url";

    if(object.has_key(urlKey))
    {
        bourne::json value = object[urlKey];



        jsonToValue(&url, value, "std::string");


    }


}

bourne::json
ListView::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();






    object["description"] = getDescription();





    std::list<FreeStyleProject> jobs_list = getJobs();
    bourne::json jobs_arr = bourne::json::array();

    for(auto& var : jobs_list)
    {
        FreeStyleProject obj = var;
        jobs_arr.append(obj.toJson());
    }
    object["jobs"] = jobs_arr;







    object["name"] = getName();






    object["url"] = getUrl();



    return object;

}

std::string
ListView::getClass()
{
	return _class;
}

void
ListView::setClass(std::string  _class)
{
	this->_class = _class;
}

std::string
ListView::getDescription()
{
	return description;
}

void
ListView::setDescription(std::string  description)
{
	this->description = description;
}

std::list<FreeStyleProject>
ListView::getJobs()
{
	return jobs;
}

void
ListView::setJobs(std::list <FreeStyleProject> jobs)
{
	this->jobs = jobs;
}

std::string
ListView::getName()
{
	return name;
}

void
ListView::setName(std::string  name)
{
	this->name = name;
}

std::string
ListView::getUrl()
{
	return url;
}

void
ListView::setUrl(std::string  url)
{
	this->url = url;
}



