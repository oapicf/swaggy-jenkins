/*
 * GenericResource.h
 *
 * 
 */

#ifndef _GenericResource_H_
#define _GenericResource_H_


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

class GenericResource : public Object {
public:
	/*! \brief Constructor.
	 */
	GenericResource();
	GenericResource(char* str);

	/*! \brief Destructor.
	 */
	virtual ~GenericResource();

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
	std::string getDisplayName();

	/*! \brief Set 
	 */
	void setDisplayName(std::string  displayName);
	/*! \brief Get 
	 */
	int getDurationInMillis();

	/*! \brief Set 
	 */
	void setDurationInMillis(int  durationInMillis);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getResult();

	/*! \brief Set 
	 */
	void setResult(std::string  result);
	/*! \brief Get 
	 */
	std::string getStartTime();

	/*! \brief Set 
	 */
	void setStartTime(std::string  startTime);

private:
	std::string _class;
	std::string displayName;
	int durationInMillis;
	std::string id;
	std::string result;
	std::string startTime;
	void __init();
	void __cleanup();

};
}
}

#endif /* _GenericResource_H_ */
