/*
 * ResponseTimeMonitorData.h
 *
 * 
 */

#ifndef _ResponseTimeMonitorData_H_
#define _ResponseTimeMonitorData_H_


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

class ResponseTimeMonitorData : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeMonitorData();
	ResponseTimeMonitorData(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeMonitorData();

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
	int getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(int  timestamp);
	/*! \brief Get 
	 */
	int getAverage();

	/*! \brief Set 
	 */
	void setAverage(int  average);

private:
	std::string _class;
	int timestamp;
	int average;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeMonitorData_H_ */
