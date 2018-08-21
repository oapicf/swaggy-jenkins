/*
 * PipelineActivities.h
 *
 * 
 */

#ifndef _PipelineActivities_H_
#define _PipelineActivities_H_


#include <string>
#include "PipelineActivity.h"
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

class PipelineActivities : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineActivities();
	PipelineActivities(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineActivities();

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

#endif /* _PipelineActivities_H_ */
