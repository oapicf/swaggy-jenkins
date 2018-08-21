/*
 * PipelineQueue.h
 *
 * 
 */

#ifndef _PipelineQueue_H_
#define _PipelineQueue_H_


#include <string>
#include "QueueItemImpl.h"
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

class PipelineQueue : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineQueue();
	PipelineQueue(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineQueue();

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

#endif /* _PipelineQueue_H_ */
