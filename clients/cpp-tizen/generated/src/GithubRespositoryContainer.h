/*
 * GithubRespositoryContainer.h
 *
 * 
 */

#ifndef _GithubRespositoryContainer_H_
#define _GithubRespositoryContainer_H_


#include <string>
#include "GithubRepositories.h"
#include "GithubRespositoryContainerlinks.h"
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

class GithubRespositoryContainer : public Object {
public:
	/*! \brief Constructor.
	 */
	GithubRespositoryContainer();
	GithubRespositoryContainer(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GithubRespositoryContainer();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);
	/*! \brief Get 
	 */
	GithubRespositoryContainerlinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(GithubRespositoryContainerlinks  _links);
	/*! \brief Get 
	 */
	GithubRepositories getRepositories();

	/*! \brief Set 
	 */
	void setRepositories(GithubRepositories  repositories);

private:
	std::string _class;
	GithubRespositoryContainerlinks _links;
	GithubRepositories repositories;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GithubRespositoryContainer_H_ */
