/*
 * Users.h
 *
 * 
 */

#ifndef _Users_H_
#define _Users_H_


#include <string>
#include "User.h"
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

class Users : public Object {
public:
	/*! \brief Constructor.
	 */
	Users();
	Users(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Users();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);


private:
	void __init();
	void __cleanup();

};
}
}

#endif /* _Users_H_ */
