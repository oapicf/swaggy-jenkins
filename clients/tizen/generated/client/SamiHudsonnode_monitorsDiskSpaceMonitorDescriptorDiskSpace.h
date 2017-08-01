/*
 * SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace.h
 * 
 * 
 */

#ifndef SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace_H_
#define SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace_H_

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

class SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace: public SamiObject {
public:
    SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace();
    SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace(String* json);
    virtual ~SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    Integer* getPTimestamp();
    void setPTimestamp(Integer* pTimestamp);
    String* getPPath();
    void setPPath(String* pPath);
    Integer* getPSize();
    void setPSize(Integer* pSize);

private:
    String* p_class;
Integer* pTimestamp;
String* pPath;
Integer* pSize;
};

} /* namespace Swagger */

#endif /* SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace_H_ */
