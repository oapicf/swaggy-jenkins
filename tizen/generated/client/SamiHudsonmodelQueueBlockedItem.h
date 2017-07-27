/*
 * SamiHudsonmodelQueueBlockedItem.h
 * 
 * 
 */

#ifndef SamiHudsonmodelQueueBlockedItem_H_
#define SamiHudsonmodelQueueBlockedItem_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelCauseAction.h"
#include "SamiHudsonmodelFreeStyleProject.h"
using Tizen::Base::Boolean;
using Tizen::Base::Collection::IList;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelQueueBlockedItem: public SamiObject {
public:
    SamiHudsonmodelQueueBlockedItem();
    SamiHudsonmodelQueueBlockedItem(String* json);
    virtual ~SamiHudsonmodelQueueBlockedItem();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelQueueBlockedItem* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    IList* getPActions();
    void setPActions(IList* pActions);
    Boolean* getPBlocked();
    void setPBlocked(Boolean* pBlocked);
    Boolean* getPBuildable();
    void setPBuildable(Boolean* pBuildable);
    Integer* getPId();
    void setPId(Integer* pId);
    Integer* getPInQueueSince();
    void setPInQueueSince(Integer* pInQueueSince);
    String* getPParams();
    void setPParams(String* pParams);
    Boolean* getPStuck();
    void setPStuck(Boolean* pStuck);
    SamiHudsonmodelFreeStyleProject* getPTask();
    void setPTask(SamiHudsonmodelFreeStyleProject* pTask);
    String* getPUrl();
    void setPUrl(String* pUrl);
    String* getPWhy();
    void setPWhy(String* pWhy);
    Integer* getPBuildableStartMilliseconds();
    void setPBuildableStartMilliseconds(Integer* pBuildableStartMilliseconds);

private:
    String* p_class;
IList* pActions;
Boolean* pBlocked;
Boolean* pBuildable;
Integer* pId;
Integer* pInQueueSince;
String* pParams;
Boolean* pStuck;
SamiHudsonmodelFreeStyleProject* pTask;
String* pUrl;
String* pWhy;
Integer* pBuildableStartMilliseconds;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelQueueBlockedItem_H_ */
