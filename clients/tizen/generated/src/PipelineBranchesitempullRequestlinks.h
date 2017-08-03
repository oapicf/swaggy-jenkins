/*
 * PipelineBranchesitempullRequestlinks.h
 *
 * 
 */

#ifndef _PipelineBranchesitempullRequestlinks_H_
#define _PipelineBranchesitempullRequestlinks_H_


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

class PipelineBranchesitempullRequestlinks : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineBranchesitempullRequestlinks();
	PipelineBranchesitempullRequestlinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineBranchesitempullRequestlinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getSelf();

	/*! \brief Set 
	 */
	void setSelf(std::string  self);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);

private:
	std::string self;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PipelineBranchesitempullRequestlinks_H_ */
