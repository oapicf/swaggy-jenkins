/*
 * CauseUserIdCause.h
 *
 * 
 */

#ifndef _CauseUserIdCause_H_
#define _CauseUserIdCause_H_


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

class CauseUserIdCause : public Object {
public:
	/*! \brief Constructor.
	 */
	CauseUserIdCause();
	CauseUserIdCause(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CauseUserIdCause();

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
	std::string getShortDescription();

	/*! \brief Set 
	 */
	void setShortDescription(std::string  shortDescription);
	/*! \brief Get 
	 */
	std::string getUserId();

	/*! \brief Set 
	 */
	void setUserId(std::string  userId);
	/*! \brief Get 
	 */
	std::string getUserName();

	/*! \brief Set 
	 */
	void setUserName(std::string  userName);

private:
	std::string _class;
	std::string shortDescription;
	std::string userId;
	std::string userName;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CauseUserIdCause_H_ */
