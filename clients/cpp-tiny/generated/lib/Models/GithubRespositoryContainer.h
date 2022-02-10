
/*
 * GithubRespositoryContainer.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GithubRespositoryContainer_H_
#define TINY_CPP_CLIENT_GithubRespositoryContainer_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "GithubRepositories.h"
#include "GithubRespositoryContainerlinks.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubRespositoryContainer{
public:

    /*! \brief Constructor.
	 */
    GithubRespositoryContainer();
    GithubRespositoryContainer(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GithubRespositoryContainer();


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
    std::string _class{};
    GithubRespositoryContainerlinks _links;
    GithubRepositories repositories;
};
}

#endif /* TINY_CPP_CLIENT_GithubRespositoryContainer_H_ */
