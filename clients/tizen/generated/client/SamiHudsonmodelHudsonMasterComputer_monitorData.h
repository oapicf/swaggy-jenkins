/*
 * SamiHudsonmodelHudsonMasterComputer_monitorData.h
 * 
 * 
 */

#ifndef SamiHudsonmodelHudsonMasterComputer_monitorData_H_
#define SamiHudsonmodelHudsonMasterComputer_monitorData_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace.h"
#include "SamiHudsonnode_monitorsResponseTimeMonitorData.h"
#include "SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2.h"
#include "SamiHudsonutilClockDifference.h"
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelHudsonMasterComputer_monitorData: public SamiObject {
public:
    SamiHudsonmodelHudsonMasterComputer_monitorData();
    SamiHudsonmodelHudsonMasterComputer_monitorData(String* json);
    virtual ~SamiHudsonmodelHudsonMasterComputer_monitorData();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelHudsonMasterComputer_monitorData* fromJson(String* obj);

    SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2* getPHudsonnodeMonitorsSwapSpaceMonitor();
    void setPHudsonnodeMonitorsSwapSpaceMonitor(SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2* pHudsonnode_monitorsSwapSpaceMonitor);
    SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace* getPHudsonnodeMonitorsTemporarySpaceMonitor();
    void setPHudsonnodeMonitorsTemporarySpaceMonitor(SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace* pHudsonnode_monitorsTemporarySpaceMonitor);
    SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace* getPHudsonnodeMonitorsDiskSpaceMonitor();
    void setPHudsonnodeMonitorsDiskSpaceMonitor(SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace* pHudsonnode_monitorsDiskSpaceMonitor);
    String* getPHudsonnodeMonitorsArchitectureMonitor();
    void setPHudsonnodeMonitorsArchitectureMonitor(String* pHudsonnode_monitorsArchitectureMonitor);
    SamiHudsonnode_monitorsResponseTimeMonitorData* getPHudsonnodeMonitorsResponseTimeMonitor();
    void setPHudsonnodeMonitorsResponseTimeMonitor(SamiHudsonnode_monitorsResponseTimeMonitorData* pHudsonnode_monitorsResponseTimeMonitor);
    SamiHudsonutilClockDifference* getPHudsonnodeMonitorsClockMonitor();
    void setPHudsonnodeMonitorsClockMonitor(SamiHudsonutilClockDifference* pHudsonnode_monitorsClockMonitor);
    String* getPClass();
    void setPClass(String* p_class);

private:
    SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2* pHudsonnode_monitorsSwapSpaceMonitor;
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace* pHudsonnode_monitorsTemporarySpaceMonitor;
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace* pHudsonnode_monitorsDiskSpaceMonitor;
String* pHudsonnode_monitorsArchitectureMonitor;
SamiHudsonnode_monitorsResponseTimeMonitorData* pHudsonnode_monitorsResponseTimeMonitor;
SamiHudsonutilClockDifference* pHudsonnode_monitorsClockMonitor;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelHudsonMasterComputer_monitorData_H_ */
