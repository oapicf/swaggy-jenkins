/*
 * GithubRepository.h
 *
 * 
 */

#ifndef _GithubRepository_H_
#define _GithubRepository_H_


#include <string>
#include "GithubRepositorylinks.h"
#include "GithubRepositorypermissions.h"
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

class GithubRepository : public Object {
public:
	/*! \brief Constructor.
	 */
	GithubRepository();
	GithubRepository(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GithubRepository();

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
	GithubRepositorylinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(GithubRepositorylinks  _links);
	/*! \brief Get 
	 */
	std::string getDefaultBranch();

	/*! \brief Set 
	 */
	void setDefaultBranch(std::string  defaultBranch);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	GithubRepositorypermissions getPermissions();

	/*! \brief Set 
	 */
	void setPermissions(GithubRepositorypermissions  permissions);
	/*! \brief Get 
	 */
	bool getPrivate();

	/*! \brief Set 
	 */
	void setPrivate(bool  _private);
	/*! \brief Get 
	 */
	std::string getFullName();

	/*! \brief Set 
	 */
	void setFullName(std::string  fullName);

private:
	std::string _class;
	GithubRepositorylinks _links;
	std::string defaultBranch;
	std::string description;
	std::string name;
	GithubRepositorypermissions permissions;
	bool _private;
	std::string fullName;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GithubRepository_H_ */
