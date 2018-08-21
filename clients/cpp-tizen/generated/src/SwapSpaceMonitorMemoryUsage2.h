/*
 * SwapSpaceMonitorMemoryUsage2.h
 *
 * 
 */

#ifndef _SwapSpaceMonitorMemoryUsage2_H_
#define _SwapSpaceMonitorMemoryUsage2_H_


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

class SwapSpaceMonitorMemoryUsage2 : public Object {
public:
	/*! \brief Constructor.
	 */
	SwapSpaceMonitorMemoryUsage2();
	SwapSpaceMonitorMemoryUsage2(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SwapSpaceMonitorMemoryUsage2();

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
	int getAvailablePhysicalMemory();

	/*! \brief Set 
	 */
	void setAvailablePhysicalMemory(int  availablePhysicalMemory);
	/*! \brief Get 
	 */
	int getAvailableSwapSpace();

	/*! \brief Set 
	 */
	void setAvailableSwapSpace(int  availableSwapSpace);
	/*! \brief Get 
	 */
	int getTotalPhysicalMemory();

	/*! \brief Set 
	 */
	void setTotalPhysicalMemory(int  totalPhysicalMemory);
	/*! \brief Get 
	 */
	int getTotalSwapSpace();

	/*! \brief Set 
	 */
	void setTotalSwapSpace(int  totalSwapSpace);

private:
	std::string _class;
	int availablePhysicalMemory;
	int availableSwapSpace;
	int totalPhysicalMemory;
	int totalSwapSpace;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SwapSpaceMonitorMemoryUsage2_H_ */
