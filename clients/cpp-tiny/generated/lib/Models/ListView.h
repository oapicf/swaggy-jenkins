
/*
 * ListView.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_ListView_H_
#define TINY_CPP_CLIENT_ListView_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "FreeStyleProject.h"
#include <list>

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ListView{
public:

    /*! \brief Constructor.
	 */
    ListView();
    ListView(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ListView();


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
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::list<FreeStyleProject> getJobs();

	/*! \brief Set 
	 */
	void setJobs(std::list <FreeStyleProject> jobs);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getUrl();

	/*! \brief Set 
	 */
	void setUrl(std::string  url);


    private:
    std::string _class{};
    std::string description{};
    std::list<FreeStyleProject> jobs;
    std::string name{};
    std::string url{};
};
}

#endif /* TINY_CPP_CLIENT_ListView_H_ */
