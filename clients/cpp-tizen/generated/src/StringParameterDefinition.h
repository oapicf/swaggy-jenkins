/*
 * StringParameterDefinition.h
 *
 * 
 */

#ifndef _StringParameterDefinition_H_
#define _StringParameterDefinition_H_


#include <string>
#include "StringParameterValue.h"
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

class StringParameterDefinition : public Object {
public:
	/*! \brief Constructor.
	 */
	StringParameterDefinition();
	StringParameterDefinition(char* str);

	/*! \brief Destructor.
	 */
	virtual ~StringParameterDefinition();

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
	std::string _class;
	StringParameterValue defaultParameterValue;
	std::string description;
	std::string name;
	std::string type;
	void __init();
	void __cleanup();

};
}
}

#endif /* _StringParameterDefinition_H_ */
