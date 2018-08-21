/*
 * PipelineRunNodeSteps.h
 *
 * 
 */

#ifndef _PipelineRunNodeSteps_H_
#define _PipelineRunNodeSteps_H_


#include <string>
#include "PipelineStepImpl.h"
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

class PipelineRunNodeSteps : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineRunNodeSteps();
	PipelineRunNodeSteps(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineRunNodeSteps();

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

#endif /* _PipelineRunNodeSteps_H_ */
