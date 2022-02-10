
/*
 * Queue.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Queue_H_
#define TINY_CPP_CLIENT_Queue_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "QueueBlockedItem.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Queue{
public:

    /*! \brief Constructor.
	 */
    Queue();
    Queue(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Queue();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);
	/*! \brief Get 
	 */
	std::list<QueueBlockedItem> getItems();

	/*! \brief Set 
	 */
	void setItems(std::list <QueueBlockedItem> items);


    private:
    std::string _class{};
    std::list<QueueBlockedItem> items;
};
}

#endif /* TINY_CPP_CLIENT_Queue_H_ */
