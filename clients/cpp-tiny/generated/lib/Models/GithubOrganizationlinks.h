
/*
 * GithubOrganizationlinks.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GithubOrganizationlinks_H_
#define TINY_CPP_CLIENT_GithubOrganizationlinks_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "Link.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubOrganizationlinks{
public:

    /*! \brief Constructor.
	 */
    GithubOrganizationlinks();
    GithubOrganizationlinks(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GithubOrganizationlinks();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

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
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_GithubOrganizationlinks_H_ */
