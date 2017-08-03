/*
 * Link.h
 *
 * 
 */

#ifndef _Link_H_
#define _Link_H_


#include <string>
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

class Link : public Object {
public:
	/*! \brief Constructor.
	 */
	Link();
	Link(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Link();

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
	std::string getHref();

	/*! \brief Set 
	 */
	void setHref(std::string  href);

private:
	std::string _class;
	std::string href;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Link_H_ */
