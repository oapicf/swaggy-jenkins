/*
 * Pipelines.h
 *
 * 
 */

#ifndef _Pipelines_H_
#define _Pipelines_H_


#include <string>
#include "Pipeline.h"
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

class Pipelines : public Object {
public:
	/*! \brief Constructor.
	 */
	Pipelines();
	Pipelines(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Pipelines();

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

#endif /* _Pipelines_H_ */
