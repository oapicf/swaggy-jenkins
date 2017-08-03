/*
 * Organisations.h
 *
 * 
 */

#ifndef _Organisations_H_
#define _Organisations_H_


#include <string>
#include "Organisation.h"
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

class Organisations : public Object {
public:
	/*! \brief Constructor.
	 */
	Organisations();
	Organisations(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Organisations();

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

#endif /* _Organisations_H_ */
