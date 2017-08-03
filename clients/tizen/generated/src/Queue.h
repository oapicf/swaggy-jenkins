/*
 * Queue.h
 *
 * 
 */

#ifndef _Queue_H_
#define _Queue_H_


#include <string>
#include "QueueBlockedItem.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Queue : public Object {
public:
	/*! \brief Constructor.
	 */
	Queue();
	Queue(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Queue();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string _class;
	std::list <QueueBlockedItem>items;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Queue_H_ */
