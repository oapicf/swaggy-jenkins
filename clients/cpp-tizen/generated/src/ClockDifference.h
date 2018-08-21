/*
 * ClockDifference.h
 *
 * 
 */

#ifndef _ClockDifference_H_
#define _ClockDifference_H_


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

class ClockDifference : public Object {
public:
	/*! \brief Constructor.
	 */
	ClockDifference();
	ClockDifference(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ClockDifference();

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
	int getDiff();

	/*! \brief Set 
	 */
	void setDiff(int  diff);

private:
	std::string _class;
	int diff;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ClockDifference_H_ */
