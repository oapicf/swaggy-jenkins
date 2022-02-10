

#include "PipelineBranchesitempullRequest.h"

using namespace Tiny;

PipelineBranchesitempullRequest::PipelineBranchesitempullRequest()
{
	_links = PipelineBranchesitempullRequestlinks();
	author = std::string();
	id = std::string();
	title = std::string();
	url = std::string();
	_class = std::string();
}

PipelineBranchesitempullRequest::PipelineBranchesitempullRequest(std::string jsonString)
{
	this->fromJson(jsonString);
}

PipelineBranchesitempullRequest::~PipelineBranchesitempullRequest()
{

}

void
PipelineBranchesitempullRequest::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_linksKey = "_links";

    if(object.has_key(_linksKey))
    {
        bourne::json value = object[_linksKey];




        PipelineBranchesitempullRequestlinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *authorKey = "author";

    if(object.has_key(authorKey))
    {
        bourne::json value = object[authorKey];



        jsonToValue(&author, value, "std::string");


    }

    const char *idKey = "id";

    if(object.has_key(idKey))
    {
        bourne::json value = object[idKey];



        jsonToValue(&id, value, "std::string");


    }

    const char *titleKey = "title";

    if(object.has_key(titleKey))
    {
        bourne::json value = object[titleKey];



        jsonToValue(&title, value, "std::string");


    }

    const char *urlKey = "url";

    if(object.has_key(urlKey))
    {
        bourne::json value = object[urlKey];



        jsonToValue(&url, value, "std::string");


    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
PipelineBranchesitempullRequest::toJson()
{
    bourne::json object = bourne::json::object();






	object["_links"] = getLinks().toJson();





    object["author"] = getAuthor();






    object["id"] = getId();






    object["title"] = getTitle();






    object["url"] = getUrl();






    object["_class"] = getClass();



    return object;

}

PipelineBranchesitempullRequestlinks
PipelineBranchesitempullRequest::getLinks()
{
	return _links;
}

void
PipelineBranchesitempullRequest::setLinks(PipelineBranchesitempullRequestlinks  _links)
{
	this->_links = _links;
}

std::string
PipelineBranchesitempullRequest::getAuthor()
{
	return author;
}

void
PipelineBranchesitempullRequest::setAuthor(std::string  author)
{
	this->author = author;
}

std::string
PipelineBranchesitempullRequest::getId()
{
	return id;
}

void
PipelineBranchesitempullRequest::setId(std::string  id)
{
	this->id = id;
}

std::string
PipelineBranchesitempullRequest::getTitle()
{
	return title;
}

void
PipelineBranchesitempullRequest::setTitle(std::string  title)
{
	this->title = title;
}

std::string
PipelineBranchesitempullRequest::getUrl()
{
	return url;
}

void
PipelineBranchesitempullRequest::setUrl(std::string  url)
{
	this->url = url;
}

std::string
PipelineBranchesitempullRequest::getClass()
{
	return _class;
}

void
PipelineBranchesitempullRequest::setClass(std::string  _class)
{
	this->_class = _class;
}



