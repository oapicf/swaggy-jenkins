/*
 * GithubScm.h
 *
 * 
 */

#ifndef _GithubScm_H_
#define _GithubScm_H_


#include <string>
#include "GithubScmlinks.h"
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

class GithubScm : public Object {
public:
	/*! \brief Constructor.
	 */
	GithubScm();
	GithubScm(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GithubScm();

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
	GithubScmlinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(GithubScmlinks  _links);
	/*! \brief Get 
	 */
	std::string getCredentialId();

	/*! \brief Set 
	 */
	void setCredentialId(std::string  credentialId);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getUri();

	/*! \brief Set 
	 */
	void setUri(std::string  uri);

private:
	std::string _class;
	GithubScmlinks _links;
	std::string credentialId;
	std::string id;
	std::string uri;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GithubScm_H_ */
