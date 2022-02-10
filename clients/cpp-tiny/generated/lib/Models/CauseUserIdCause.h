
/*
 * CauseUserIdCause.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_CauseUserIdCause_H_
#define TINY_CPP_CLIENT_CauseUserIdCause_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class CauseUserIdCause{
public:

    /*! \brief Constructor.
	 */
    CauseUserIdCause();
    CauseUserIdCause(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~CauseUserIdCause();


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
    std::string _class{};
    std::string shortDescription{};
    std::string userId{};
    std::string userName{};
};
}

#endif /* TINY_CPP_CLIENT_CauseUserIdCause_H_ */
