/*
 * PipelineRunSteps.h
 *
 * 
 */

#ifndef _PipelineRunSteps_H_
#define _PipelineRunSteps_H_


#include <string>
#include "GenericResource.h"
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

class PipelineRunSteps : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineRunSteps();
	PipelineRunSteps(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineRunSteps();

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

#endif /* _PipelineRunSteps_H_ */
