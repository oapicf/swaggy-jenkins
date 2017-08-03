/*
 * FreeStyleProjecthealthReport.h
 *
 * 
 */

#ifndef _FreeStyleProjecthealthReport_H_
#define _FreeStyleProjecthealthReport_H_


#include <string>
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

class FreeStyleProjecthealthReport : public Object {
public:
	/*! \brief Constructor.
	 */
	FreeStyleProjecthealthReport();
	FreeStyleProjecthealthReport(char* str);

	/*! \brief Destructor.
	 */
	virtual ~FreeStyleProjecthealthReport();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::string getIconClassName();

	/*! \brief Set 
	 */
	void setIconClassName(std::string  iconClassName);
	/*! \brief Get 
	 */
	std::string getIconUrl();

	/*! \brief Set 
	 */
	void setIconUrl(std::string  iconUrl);
	/*! \brief Get 
	 */
	int getScore();

	/*! \brief Set 
	 */
	void setScore(int  score);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);

private:
	std::string description;
	std::string iconClassName;
	std::string iconUrl;
	int score;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _FreeStyleProjecthealthReport_H_ */
