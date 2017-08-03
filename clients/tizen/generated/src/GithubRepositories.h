/*
 * GithubRepositories.h
 *
 * 
 */

#ifndef _GithubRepositories_H_
#define _GithubRepositories_H_


#include <string>
#include "GithubRepositorieslinks.h"
#include "GithubRepository.h"
#include <list>
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

class GithubRepositories : public Object {
public:
	/*! \brief Constructor.
	 */
	GithubRepositories();
	GithubRepositories(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GithubRepositories();

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
	GithubRepositorieslinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(GithubRepositorieslinks  _links);
	/*! \brief Get 
	 */
	std::list<GithubRepository> getItems();

	/*! \brief Set 
	 */
	void setItems(std::list <GithubRepository> items);
	/*! \brief Get 
	 */
	int getLastPage();

	/*! \brief Set 
	 */
	void setLastPage(int  lastPage);
	/*! \brief Get 
	 */
	int getNextPage();

	/*! \brief Set 
	 */
	void setNextPage(int  nextPage);
	/*! \brief Get 
	 */
	int getPageSize();

	/*! \brief Set 
	 */
	void setPageSize(int  pageSize);

private:
	std::string _class;
	GithubRepositorieslinks _links;
	std::list <GithubRepository>items;
	int lastPage;
	int nextPage;
	int pageSize;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GithubRepositories_H_ */
