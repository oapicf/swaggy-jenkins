
/*
 * SwapSpaceMonitorMemoryUsage2.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_SwapSpaceMonitorMemoryUsage2_H_
#define TINY_CPP_CLIENT_SwapSpaceMonitorMemoryUsage2_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class SwapSpaceMonitorMemoryUsage2{
public:

    /*! \brief Constructor.
	 */
    SwapSpaceMonitorMemoryUsage2();
    SwapSpaceMonitorMemoryUsage2(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~SwapSpaceMonitorMemoryUsage2();


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
    std::string _class{};
    int availablePhysicalMemory{};
    int availableSwapSpace{};
    int totalPhysicalMemory{};
    int totalSwapSpace{};
};
}

#endif /* TINY_CPP_CLIENT_SwapSpaceMonitorMemoryUsage2_H_ */
