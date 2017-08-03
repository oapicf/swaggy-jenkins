/*
 * HudsonMasterComputermonitorData.h
 *
 * 
 */

#ifndef _HudsonMasterComputermonitorData_H_
#define _HudsonMasterComputermonitorData_H_


#include <string>
#include "ClockDifference.h"
#include "DiskSpaceMonitorDescriptorDiskSpace.h"
#include "ResponseTimeMonitorData.h"
#include "SwapSpaceMonitorMemoryUsage2.h"
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

class HudsonMasterComputermonitorData : public Object {
public:
	/*! \brief Constructor.
	 */
	HudsonMasterComputermonitorData();
	HudsonMasterComputermonitorData(char* str);

	/*! \brief Destructor.
	 */
	virtual ~HudsonMasterComputermonitorData();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

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
	std::string hudsonnode_monitorsArchitectureMonitor;
	ResponseTimeMonitorData hudsonnode_monitorsResponseTimeMonitor;
	ClockDifference hudsonnode_monitorsClockMonitor;
	std::string _class;
	void __init();
	void __cleanup();

};
}
}

#endif /* _HudsonMasterComputermonitorData_H_ */
