/*
 * PipelineBranches.h
 *
 * 
 */

#ifndef _PipelineBranches_H_
#define _PipelineBranches_H_


#include <string>
#include "PipelineBranchesitem.h"
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

class PipelineBranches : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineBranches();
	PipelineBranches(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineBranches();

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

#endif /* _PipelineBranches_H_ */
