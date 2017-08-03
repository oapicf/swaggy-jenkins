/*
 * PipelineBranchesitempullRequest.h
 *
 * 
 */

#ifndef _PipelineBranchesitempullRequest_H_
#define _PipelineBranchesitempullRequest_H_


#include <string>
#include "PipelineBranchesitempullRequestlinks.h"
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

class PipelineBranchesitempullRequest : public Object {
public:
	/*! \brief Constructor.
	 */
	PipelineBranchesitempullRequest();
	PipelineBranchesitempullRequest(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PipelineBranchesitempullRequest();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string author;
	std::string id;
	std::string title;
	std::string url;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PipelineBranchesitempullRequest_H_ */
