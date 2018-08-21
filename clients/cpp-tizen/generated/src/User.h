/*
 * User.h
 *
 * 
 */

#ifndef _User_H_
#define _User_H_


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

class User : public Object {
public:
	/*! \brief Constructor.
	 */
	User();
	User(char* str);

	/*! \brief Destructor.
	 */
	virtual ~User();

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
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getFullName();

	/*! \brief Set 
	 */
	void setFullName(std::string  fullName);
	/*! \brief Get 
	 */
	std::string getEmail();

	/*! \brief Set 
	 */
	void setEmail(std::string  email);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);

private:
	std::string _class;
	std::string id;
	std::string fullName;
	std::string email;
	std::string name;
	void __init();
	void __cleanup();

};
}
}

#endif /* _User_H_ */
