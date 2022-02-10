
/*
 * ClockDifference.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_ClockDifference_H_
#define TINY_CPP_CLIENT_ClockDifference_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ClockDifference{
public:

    /*! \brief Constructor.
	 */
    ClockDifference();
    ClockDifference(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~ClockDifference();


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
	int getDiff();

	/*! \brief Set 
	 */
	void setDiff(int  diff);


    private:
    std::string _class{};
    int diff{};
};
}

#endif /* TINY_CPP_CLIENT_ClockDifference_H_ */
