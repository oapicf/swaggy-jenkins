/*
 * GithubOrganizationlinks.h
 *
 * 
 */

#ifndef _GithubOrganizationlinks_H_
#define _GithubOrganizationlinks_H_


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

class GithubOrganizationlinks : public Object {
public:
	/*! \brief Constructor.
	 */
	GithubOrganizationlinks();
	GithubOrganizationlinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GithubOrganizationlinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	Link getRepositories();

	/*! \brief Set 
	 */
	void setRepositories(Link  repositories);
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
	Link repositories;
	Link self;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GithubOrganizationlinks_H_ */
