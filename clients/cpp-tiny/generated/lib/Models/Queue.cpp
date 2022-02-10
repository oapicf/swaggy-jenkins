

#include "Queue.h"

using namespace Tiny;

Queue::Queue()
{
	_class = std::string();
	items = std::list<QueueBlockedItem>();
}

Queue::Queue(std::string jsonString)
{
	this->fromJson(jsonString);
}

Queue::~Queue()
{

}

void
Queue::fromJson(std::string jsonObj)
{
    bourne::json object = bourne::json::parse(jsonObj);

    const char *_classKey = "_class";

    if(object.has_key(_classKey))
    {
        bourne::json value = object[_classKey];



        jsonToValue(&_class, value, "std::string");


    }

    const char *itemsKey = "items";

    if(object.has_key(itemsKey))
    {
        bourne::json value = object[itemsKey];


        std::list<QueueBlockedItem> items_list;
        QueueBlockedItem element;
        for(auto& var : value.array_range())
        {


            element.fromJson(var.dump());

            items_list.push_back(element);
        }
        items = items_list;


    }


}

bourne::json
Queue::toJson()
{
    bourne::json object = bourne::json::object();





    object["_class"] = getClass();





    std::list<QueueBlockedItem> items_list = getItems();
    bourne::json items_arr = bourne::json::array();

    for(auto& var : items_list)
    {
        QueueBlockedItem obj = var;
        items_arr.append(obj.toJson());
    }
    object["items"] = items_arr;




    return object;

}

std::string
Queue::getClass()
{
	return _class;
}

void
Queue::setClass(std::string  _class)
{
	this->_class = _class;
}

std::list<QueueBlockedItem>
Queue::getItems()
{
	return items;
}

void
Queue::setItems(std::list <QueueBlockedItem> items)
{
	this->items = items;
}



