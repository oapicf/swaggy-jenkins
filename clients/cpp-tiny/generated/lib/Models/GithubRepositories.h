
/*
 * GithubRepositories.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_GithubRepositories_H_
#define TINY_CPP_CLIENT_GithubRepositories_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "GithubRepositorieslinks.h"
#include "GithubRepository.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class GithubRepositories{
public:

    /*! \brief Constructor.
	 */
    GithubRepositories();
    GithubRepositories(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~GithubRepositories();


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
    std::string _class{};
    GithubRepositorieslinks _links;
    std::list<GithubRepository> items;
    int lastPage{};
    int nextPage{};
    int pageSize{};
};
}

#endif /* TINY_CPP_CLIENT_GithubRepositories_H_ */
