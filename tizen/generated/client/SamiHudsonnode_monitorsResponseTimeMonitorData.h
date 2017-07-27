/*
 * SamiHudsonnode_monitorsResponseTimeMonitorData.h
 * 
 * 
 */

#ifndef SamiHudsonnode_monitorsResponseTimeMonitorData_H_
#define SamiHudsonnode_monitorsResponseTimeMonitorData_H_

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

class SamiHudsonnode_monitorsResponseTimeMonitorData: public SamiObject {
public:
    SamiHudsonnode_monitorsResponseTimeMonitorData();
    SamiHudsonnode_monitorsResponseTimeMonitorData(String* json);
    virtual ~SamiHudsonnode_monitorsResponseTimeMonitorData();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonnode_monitorsResponseTimeMonitorData* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    Integer* getPTimestamp();
    void setPTimestamp(Integer* pTimestamp);
    Integer* getPAverage();
    void setPAverage(Integer* pAverage);

private:
    String* p_class;
Integer* pTimestamp;
Integer* pAverage;
};

} /* namespace Swagger */

#endif /* SamiHudsonnode_monitorsResponseTimeMonitorData_H_ */
