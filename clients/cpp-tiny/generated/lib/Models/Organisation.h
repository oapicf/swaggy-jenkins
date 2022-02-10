
/*
 * Organisation.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Organisation_H_
#define TINY_CPP_CLIENT_Organisation_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Organisation{
public:

    /*! \brief Constructor.
	 */
    Organisation();
    Organisation(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Organisation();


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
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);


    private:
    std::string _class{};
    std::string name{};
};
}

#endif /* TINY_CPP_CLIENT_Organisation_H_ */
