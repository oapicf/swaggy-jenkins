
/*
 * Link.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_Link_H_
#define TINY_CPP_CLIENT_Link_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class Link{
public:

    /*! \brief Constructor.
	 */
    Link();
    Link(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~Link();


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
	std::string getHref();

	/*! \brief Set 
	 */
	void setHref(std::string  href);


    private:
    std::string _class{};
    std::string href{};
};
}

#endif /* TINY_CPP_CLIENT_Link_H_ */
