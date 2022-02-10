
/*
 * StringParameterDefinition.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_StringParameterDefinition_H_
#define TINY_CPP_CLIENT_StringParameterDefinition_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "StringParameterValue.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class StringParameterDefinition{
public:

    /*! \brief Constructor.
	 */
    StringParameterDefinition();
    StringParameterDefinition(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~StringParameterDefinition();


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
	StringParameterValue getDefaultParameterValue();

	/*! \brief Set 
	 */
	void setDefaultParameterValue(StringParameterValue  defaultParameterValue);
	/*! \brief Get 
	 */
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);


    private:
    std::string _class{};
    StringParameterValue defaultParameterValue;
    std::string description{};
    std::string name{};
    std::string type{};
};
}

#endif /* TINY_CPP_CLIENT_StringParameterDefinition_H_ */
