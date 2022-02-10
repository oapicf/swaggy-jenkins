
/*
 * GithubOrganization.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GithubOrganization_H_
#define TINY_CPP_CLIENT_GithubOrganization_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "GithubOrganizationlinks.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubOrganization{
public:

    /*! \brief Constructor.
	 */
    GithubOrganization();
    GithubOrganization(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GithubOrganization();


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
	GithubOrganizationlinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(GithubOrganizationlinks  _links);
	/*! \brief Get 
	 */
	bool isJenkinsOrganizationPipeline();

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
    std::string _class{};
    GithubOrganizationlinks _links;
    bool jenkinsOrganizationPipeline{};
    std::string name{};
};
}

#endif /* TINY_CPP_CLIENT_GithubOrganization_H_ */
