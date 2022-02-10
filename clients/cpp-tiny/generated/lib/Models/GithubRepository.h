
/*
 * GithubRepository.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GithubRepository_H_
#define TINY_CPP_CLIENT_GithubRepository_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "GithubRepositorylinks.h"
#include "GithubRepositorypermissions.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubRepository{
public:

    /*! \brief Constructor.
	 */
    GithubRepository();
    GithubRepository(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GithubRepository();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
	bool isRPrivate();

	/*! \brief Set 
	 */
	void setRPrivate(bool  r_private);
	/*! \brief Get 
	 */
	std::string getFullName();

	/*! \brief Set 
	 */
	void setFullName(std::string  fullName);


    private:
    std::string _class{};
    GithubRepositorylinks _links;
    std::string defaultBranch{};
    std::string description{};
    std::string name{};
    GithubRepositorypermissions permissions;
    bool r_private{};
    std::string fullName{};
};
}

#endif /* TINY_CPP_CLIENT_GithubRepository_H_ */
