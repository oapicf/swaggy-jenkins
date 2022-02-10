
/*
 * User.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_User_H_
#define TINY_CPP_CLIENT_User_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class User{
public:

    /*! \brief Constructor.
	 */
    User();
    User(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~User();


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
    std::string _class{};
    std::string id{};
    std::string fullName{};
    std::string email{};
    std::string name{};
};
}

#endif /* TINY_CPP_CLIENT_User_H_ */
