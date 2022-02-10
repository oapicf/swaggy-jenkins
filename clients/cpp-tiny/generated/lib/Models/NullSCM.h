
/*
 * NullSCM.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_NullSCM_H_
#define TINY_CPP_CLIENT_NullSCM_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class NullSCM{
public:

    /*! \brief Constructor.
	 */
    NullSCM();
    NullSCM(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~NullSCM();


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


    private:
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_NullSCM_H_ */
