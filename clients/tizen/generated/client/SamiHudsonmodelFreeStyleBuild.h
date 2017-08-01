/*
 * SamiHudsonmodelFreeStyleBuild.h
 * 
 * 
 */

#ifndef SamiHudsonmodelFreeStyleBuild_H_
#define SamiHudsonmodelFreeStyleBuild_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelCauseAction.h"
#include "SamiHudsonscmEmptyChangeLogSet.h"
using Tizen::Base::Boolean;
using Tizen::Base::Collection::IList;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelFreeStyleBuild: public SamiObject {
public:
    SamiHudsonmodelFreeStyleBuild();
    SamiHudsonmodelFreeStyleBuild(String* json);
    virtual ~SamiHudsonmodelFreeStyleBuild();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelFreeStyleBuild* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    Integer* getPNumber();
    void setPNumber(Integer* pNumber);
    String* getPUrl();
    void setPUrl(String* pUrl);
    IList* getPActions();
    void setPActions(IList* pActions);
    Boolean* getPBuilding();
    void setPBuilding(Boolean* pBuilding);
    String* getPDescription();
    void setPDescription(String* pDescription);
    String* getPDisplayName();
    void setPDisplayName(String* pDisplayName);
    Integer* getPDuration();
    void setPDuration(Integer* pDuration);
    Integer* getPEstimatedDuration();
    void setPEstimatedDuration(Integer* pEstimatedDuration);
    String* getPExecutor();
    void setPExecutor(String* pExecutor);
    String* getPFullDisplayName();
    void setPFullDisplayName(String* pFullDisplayName);
    String* getPId();
    void setPId(String* pId);
    Boolean* getPKeepLog();
    void setPKeepLog(Boolean* pKeepLog);
    Integer* getPQueueId();
    void setPQueueId(Integer* pQueueId);
    String* getPResult();
    void setPResult(String* pResult);
    Integer* getPTimestamp();
    void setPTimestamp(Integer* pTimestamp);
    String* getPBuiltOn();
    void setPBuiltOn(String* pBuiltOn);
    SamiHudsonscmEmptyChangeLogSet* getPChangeSet();
    void setPChangeSet(SamiHudsonscmEmptyChangeLogSet* pChangeSet);

private:
    String* p_class;
Integer* pNumber;
String* pUrl;
IList* pActions;
Boolean* pBuilding;
String* pDescription;
String* pDisplayName;
Integer* pDuration;
Integer* pEstimatedDuration;
String* pExecutor;
String* pFullDisplayName;
String* pId;
Boolean* pKeepLog;
Integer* pQueueId;
String* pResult;
Integer* pTimestamp;
String* pBuiltOn;
SamiHudsonscmEmptyChangeLogSet* pChangeSet;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelFreeStyleBuild_H_ */
