/*
 * SamiHudsonmodelHudsonMasterComputer.h
 * 
 * 
 */

#ifndef SamiHudsonmodelHudsonMasterComputer_H_
#define SamiHudsonmodelHudsonMasterComputer_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelHudsonMasterComputer_monitorData.h"
#include "SamiHudsonmodelHudsonMasterComputerexecutors.h"
#include "SamiHudsonmodelLabel1.h"
using Tizen::Base::Boolean;
using Tizen::Base::Collection::IList;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelHudsonMasterComputer: public SamiObject {
public:
    SamiHudsonmodelHudsonMasterComputer();
    SamiHudsonmodelHudsonMasterComputer(String* json);
    virtual ~SamiHudsonmodelHudsonMasterComputer();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelHudsonMasterComputer* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPDisplayName();
    void setPDisplayName(String* pDisplayName);
    IList* getPExecutors();
    void setPExecutors(IList* pExecutors);
    String* getPIcon();
    void setPIcon(String* pIcon);
    String* getPIconClassName();
    void setPIconClassName(String* pIconClassName);
    Boolean* getPIdle();
    void setPIdle(Boolean* pIdle);
    Boolean* getPJnlpAgent();
    void setPJnlpAgent(Boolean* pJnlpAgent);
    Boolean* getPLaunchSupported();
    void setPLaunchSupported(Boolean* pLaunchSupported);
    SamiHudsonmodelLabel1* getPLoadStatistics();
    void setPLoadStatistics(SamiHudsonmodelLabel1* pLoadStatistics);
    Boolean* getPManualLaunchAllowed();
    void setPManualLaunchAllowed(Boolean* pManualLaunchAllowed);
    SamiHudsonmodelHudsonMasterComputer_monitorData* getPMonitorData();
    void setPMonitorData(SamiHudsonmodelHudsonMasterComputer_monitorData* pMonitorData);
    Integer* getPNumExecutors();
    void setPNumExecutors(Integer* pNumExecutors);
    Boolean* getPOffline();
    void setPOffline(Boolean* pOffline);
    String* getPOfflineCause();
    void setPOfflineCause(String* pOfflineCause);
    String* getPOfflineCauseReason();
    void setPOfflineCauseReason(String* pOfflineCauseReason);
    Boolean* getPTemporarilyOffline();
    void setPTemporarilyOffline(Boolean* pTemporarilyOffline);

private:
    String* p_class;
String* pDisplayName;
IList* pExecutors;
String* pIcon;
String* pIconClassName;
Boolean* pIdle;
Boolean* pJnlpAgent;
Boolean* pLaunchSupported;
SamiHudsonmodelLabel1* pLoadStatistics;
Boolean* pManualLaunchAllowed;
SamiHudsonmodelHudsonMasterComputer_monitorData* pMonitorData;
Integer* pNumExecutors;
Boolean* pOffline;
String* pOfflineCause;
String* pOfflineCauseReason;
Boolean* pTemporarilyOffline;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelHudsonMasterComputer_H_ */
