
/*
 * StringParameterValue.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_StringParameterValue_H_
#define TINY_CPP_CLIENT_StringParameterValue_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class StringParameterValue{
public:

    /*! \brief Constructor.
	 */
    StringParameterValue();
    StringParameterValue(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~StringParameterValue();


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
	/*! \brief Get 
	 */
	std::string getValue();

	/*! \brief Set 
	 */
	void setValue(std::string  value);


    private:
    std::string _class{};
    std::string name{};
    std::string value{};
};
}

#endif /* TINY_CPP_CLIENT_StringParameterValue_H_ */
