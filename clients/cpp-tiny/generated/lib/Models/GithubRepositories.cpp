

#include "GithubRepositories.h"

using namespace Tiny;

GithubRepositories::GithubRepositories()
{
	_class = std::string();
	_links = GithubRepositorieslinks();
	items = std::list<GithubRepository>();
	lastPage = int(0);
	nextPage = int(0);
	pageSize = int(0);
}

GithubRepositories::GithubRepositories(std::string jsonString)
{
	this->fromJson(jsonString);
}

GithubRepositories::~GithubRepositories()
{

}

void
GithubRepositories::fromJson(std::string jsonObj)
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




        GithubRepositorieslinks* obj = &_links;
		obj->fromJson(value.dump());

    }

    const char *itemsKey = "items";

    if(object.has_key(itemsKey))
    {
        bourne::json value = object[itemsKey];


        std::list<GithubRepository> items_list;
        GithubRepository element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            items_list.push_back(element);
        }
        items = items_list;


    }

    const char *lastPageKey = "lastPage";

    if(object.has_key(lastPageKey))
    {
        bourne::json value = object[lastPageKey];



        jsonToValue(&lastPage, value, "int");


    }

    const char *nextPageKey = "nextPage";

    if(object.has_key(nextPageKey))
    {
        bourne::json value = object[nextPageKey];



        jsonToValue(&nextPage, value, "int");


    }

    const char *pageSizeKey = "pageSize";

    if(object.has_key(pageSizeKey))
    {
        bourne::json value = object[pageSizeKey];



        jsonToValue(&pageSize, value, "int");


    }


}

bourne::json
GithubRepositories::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();







	object["_links"] = getLinks().toJson();




    std::list<GithubRepository> items_list = getItems();
    bourne::json items_arr = bourne::json::array();

    for(auto& var : items_list)
    {
        GithubRepository obj = var;
        items_arr.append(obj.toJson());
    }
    object["items"] = items_arr;







    object["lastPage"] = getLastPage();






    object["nextPage"] = getNextPage();






    object["pageSize"] = getPageSize();



    return object;

}

std::string
GithubRepositories::getClass()
{
	return _class;
}

void
GithubRepositories::setClass(std::string  _class)
{
	this->_class = _class;
}

GithubRepositorieslinks
GithubRepositories::getLinks()
{
	return _links;
}

void
GithubRepositories::setLinks(GithubRepositorieslinks  _links)
{
	this->_links = _links;
}

std::list<GithubRepository>
GithubRepositories::getItems()
{
	return items;
}

void
GithubRepositories::setItems(std::list <GithubRepository> items)
{
	this->items = items;
}

int
GithubRepositories::getLastPage()
{
	return lastPage;
}

void
GithubRepositories::setLastPage(int  lastPage)
{
	this->lastPage = lastPage;
}

int
GithubRepositories::getNextPage()
{
	return nextPage;
}

void
GithubRepositories::setNextPage(int  nextPage)
{
	this->nextPage = nextPage;
}

int
GithubRepositories::getPageSize()
{
	return pageSize;
}

void
GithubRepositories::setPageSize(int  pageSize)
{
	this->pageSize = pageSize;
}



