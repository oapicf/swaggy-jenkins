
/*
 * GithubScm.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GithubScm_H_
#define TINY_CPP_CLIENT_GithubScm_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "GithubScmlinks.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubScm{
public:

    /*! \brief Constructor.
	 */
    GithubScm();
    GithubScm(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GithubScm();


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
    std::string _class{};
    GithubScmlinks _links;
    std::string credentialId{};
    std::string id{};
    std::string uri{};
};
}

#endif /* TINY_CPP_CLIENT_GithubScm_H_ */
