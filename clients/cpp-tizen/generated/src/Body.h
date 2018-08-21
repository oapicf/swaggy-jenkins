/*
 * Body.h
 *
 * 
 */

#ifndef _Body_H_
#define _Body_H_


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

class Body : public Object {
public:
	/*! \brief Constructor.
	 */
	Body();
	Body(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Body();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	bool getFavorite();

	/*! \brief Set 
	 */
	void setFavorite(bool  favorite);

private:
	bool favorite;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Body_H_ */
