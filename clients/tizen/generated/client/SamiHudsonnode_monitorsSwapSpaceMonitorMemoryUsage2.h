/*
 * SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2.h
 * 
 * 
 */

#ifndef SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2_H_
#define SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2: public SamiObject {
public:
    SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2();
    SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2(String* json);
    virtual ~SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    Integer* getPAvailablePhysicalMemory();
    void setPAvailablePhysicalMemory(Integer* pAvailablePhysicalMemory);
    Integer* getPAvailableSwapSpace();
    void setPAvailableSwapSpace(Integer* pAvailableSwapSpace);
    Integer* getPTotalPhysicalMemory();
    void setPTotalPhysicalMemory(Integer* pTotalPhysicalMemory);
    Integer* getPTotalSwapSpace();
    void setPTotalSwapSpace(Integer* pTotalSwapSpace);

private:
    String* p_class;
Integer* pAvailablePhysicalMemory;
Integer* pAvailableSwapSpace;
Integer* pTotalPhysicalMemory;
Integer* pTotalSwapSpace;
};

} /* namespace Swagger */

#endif /* SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2_H_ */
