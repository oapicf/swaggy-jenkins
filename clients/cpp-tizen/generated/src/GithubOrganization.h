/*
 * GithubOrganization.h
 *
 * 
 */

#ifndef _GithubOrganization_H_
#define _GithubOrganization_H_


#include <string>
#include "GithubOrganizationlinks.h"
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

class GithubOrganization : public Object {
public:
	/*! \brief Constructor.
	 */
	GithubOrganization();
	GithubOrganization(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GithubOrganization();

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
	GithubOrganizationlinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(GithubOrganizationlinks  _links);
	/*! \brief Get 
	 */
	bool getJenkinsOrganizationPipeline();

	/*! \brief Set 
	 */
	void setJenkinsOrganizationPipeline(bool  jenkinsOrganizationPipeline);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);

private:
	std::string _class;
	GithubOrganizationlinks _links;
	bool jenkinsOrganizationPipeline;
	std::string name;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GithubOrganization_H_ */
