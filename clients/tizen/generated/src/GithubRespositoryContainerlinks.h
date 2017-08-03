/*
 * GithubRespositoryContainerlinks.h
 *
 * 
 */

#ifndef _GithubRespositoryContainerlinks_H_
#define _GithubRespositoryContainerlinks_H_


#include <string>
#include "Link.h"
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

class GithubRespositoryContainerlinks : public Object {
public:
	/*! \brief Constructor.
	 */
	GithubRespositoryContainerlinks();
	GithubRespositoryContainerlinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GithubRespositoryContainerlinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	Link getSelf();

	/*! \brief Set 
	 */
	void setSelf(Link  self);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);

private:
	Link self;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GithubRespositoryContainerlinks_H_ */
