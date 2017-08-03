/*
 * PipelineRuns.h
 *
 * 
 */

#ifndef _PipelineRuns_H_
#define _PipelineRuns_H_


#include <string>
#include "PipelineRun.h"
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

class PipelineRuns : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineRuns();
	PipelineRuns(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineRuns();

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

#endif /* _PipelineRuns_H_ */
