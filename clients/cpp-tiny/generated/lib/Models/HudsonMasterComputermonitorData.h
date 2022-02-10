
/*
 * HudsonMasterComputermonitorData.h
 *
 * 
 */

#ifndef TINY_CPP_CLIENT_HudsonMasterComputermonitorData_H_
#define TINY_CPP_CLIENT_HudsonMasterComputermonitorData_H_


#include <string>
#include "bourne/json.hpp"
#include "Helpers.h"
#include "ClockDifference.h"
#include "DiskSpaceMonitorDescriptorDiskSpace.h"
#include "ResponseTimeMonitorData.h"
#include "SwapSpaceMonitorMemoryUsage2.h"

namespace Tiny {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class HudsonMasterComputermonitorData{
public:

    /*! \brief Constructor.
	 */
    HudsonMasterComputermonitorData();
    HudsonMasterComputermonitorData(std::string jsonString);


    /*! \brief Destructor.
	 */
    virtual ~HudsonMasterComputermonitorData();


    /*! \brief Retrieve a bourne JSON representation of this class.
	 */
    bourne::json toJson();


    /*! \brief Fills in members of this class from bourne JSON object representing it.
	 */
    void fromJson(std::string jsonObj);

	/*! \brief Get 
	 */
	SwapSpaceMonitorMemoryUsage2 getHudsonnodeMonitorsSwapSpaceMonitor();

	/*! \brief Set 
	 */
	void setHudsonnodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2  hudsonnode_monitorsSwapSpaceMonitor);
	/*! \brief Get 
	 */
	DiskSpaceMonitorDescriptorDiskSpace getHudsonnodeMonitorsTemporarySpaceMonitor();

	/*! \brief Set 
	 */
	void setHudsonnodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace  hudsonnode_monitorsTemporarySpaceMonitor);
	/*! \brief Get 
	 */
	DiskSpaceMonitorDescriptorDiskSpace getHudsonnodeMonitorsDiskSpaceMonitor();

	/*! \brief Set 
	 */
	void setHudsonnodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace  hudsonnode_monitorsDiskSpaceMonitor);
	/*! \brief Get 
	 */
	std::string getHudsonnodeMonitorsArchitectureMonitor();

	/*! \brief Set 
	 */
	void setHudsonnodeMonitorsArchitectureMonitor(std::string  hudsonnode_monitorsArchitectureMonitor);
	/*! \brief Get 
	 */
	ResponseTimeMonitorData getHudsonnodeMonitorsResponseTimeMonitor();

	/*! \brief Set 
	 */
	void setHudsonnodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData  hudsonnode_monitorsResponseTimeMonitor);
	/*! \brief Get 
	 */
	ClockDifference getHudsonnodeMonitorsClockMonitor();

	/*! \brief Set 
	 */
	void setHudsonnodeMonitorsClockMonitor(ClockDifference  hudsonnode_monitorsClockMonitor);
	/*! \brief Get 
	 */
	std::string getClass();

	/*! \brief Set 
	 */
	void setClass(std::string  _class);


    private:
    SwapSpaceMonitorMemoryUsage2 hudsonnode_monitorsSwapSpaceMonitor;
    DiskSpaceMonitorDescriptorDiskSpace hudsonnode_monitorsTemporarySpaceMonitor;
    DiskSpaceMonitorDescriptorDiskSpace hudsonnode_monitorsDiskSpaceMonitor;
    std::string hudsonnode_monitorsArchitectureMonitor{};
    ResponseTimeMonitorData hudsonnode_monitorsResponseTimeMonitor;
    ClockDifference hudsonnode_monitorsClockMonitor;
    std::string _class{};
};
}

#endif /* TINY_CPP_CLIENT_HudsonMasterComputermonitorData_H_ */
