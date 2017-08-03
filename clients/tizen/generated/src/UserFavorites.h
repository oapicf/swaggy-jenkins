/*
 * UserFavorites.h
 *
 * 
 */

#ifndef _UserFavorites_H_
#define _UserFavorites_H_


#include <string>
#include "FavoriteImpl.h"
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

class UserFavorites : public Object {
public:
	/*! \brief Constructor.
	 */
	UserFavorites();
	UserFavorites(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UserFavorites();

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

#endif /* _UserFavorites_H_ */
