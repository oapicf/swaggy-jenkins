/*
 * ListView.h
 *
 * 
 */

#ifndef _ListView_H_
#define _ListView_H_


#include <string>
#include "FreeStyleProject.h"
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

class ListView : public Object {
public:
	/*! \brief Constructor.
	 */
	ListView();
	ListView(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ListView();

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
	std::string _class;
	std::string description;
	std::list <FreeStyleProject>jobs;
	std::string name;
	std::string url;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ListView_H_ */
