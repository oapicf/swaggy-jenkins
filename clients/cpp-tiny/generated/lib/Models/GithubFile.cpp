

#include "GithubFile.h"

using namespace Tiny;

GithubFile::GithubFile()
{
	content = GithubContent();
	_class = std::string();
}

GithubFile::GithubFile(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubFile::~GithubFile()
{

}

void
GithubFile::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *contentKey = "content";

    if(object.has_key(contentKey))
    {
        bourne::json value = object[contentKey];




        GithubContent* obj = &content;
		obj->fromJson(value.dump());

    }

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }


}

bourne::json
GithubFile::toJson()
{
    bourne::json object = bourne::json::object();






	object["content"] = getContent().toJson();





    object["_class"] = getClass();



    return object;

}

GithubContent
GithubFile::getContent()
{
	return content;
}

void
GithubFile::setContent(GithubContent  content)
{
	this->content = content;
}

std::string
GithubFile::getClass()
{
	return _class;
}

void
GithubFile::setClass(std::string  _class)
{
	this->_class = _class;
}



