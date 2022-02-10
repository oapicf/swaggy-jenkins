
/*
 * PipelineBranchesitempullRequest.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_PipelineBranchesitempullRequest_H_
#define TINY_CPP_CLIENT_PipelineBranchesitempullRequest_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "PipelineBranchesitempullRequestlinks.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PipelineBranchesitempullRequest{
public:

    /*! \brief Constructor.
	 */
    PipelineBranchesitempullRequest();
    PipelineBranchesitempullRequest(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~PipelineBranchesitempullRequest();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	PipelineBranchesitempullRequestlinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(PipelineBranchesitempullRequestlinks  _links);
	/*! \brief Get 
	 */
	std::string getAuthor();

	/*! \brief Set 
	 */
	void setAuthor(std::string  author);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getTitle();

	/*! \brief Set 
	 */
	void setTitle(std::string  title);
	/*! \brief Get 
	 */
	std::string getUrl();

	/*! \brief Set 
	 */
	void setUrl(std::string  url);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    PipelineBranchesitempullRequestlinks _links;
    std::string author{};
    std::string id{};
    std::string title{};
    std::string url{};
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_PipelineBranchesitempullRequest_H_ */
