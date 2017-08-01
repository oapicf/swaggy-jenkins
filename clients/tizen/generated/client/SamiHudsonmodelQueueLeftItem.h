/*
 * SamiHudsonmodelQueueLeftItem.h
 * 
 * 
 */

#ifndef SamiHudsonmodelQueueLeftItem_H_
#define SamiHudsonmodelQueueLeftItem_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelCauseAction.h"
#include "SamiHudsonmodelFreeStyleBuild.h"
#include "SamiHudsonmodelFreeStyleProject.h"
using Tizen::Base::Boolean;
using Tizen::Base::Collection::IList;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelQueueLeftItem: public SamiObject {
public:
    SamiHudsonmodelQueueLeftItem();
    SamiHudsonmodelQueueLeftItem(String* json);
    virtual ~SamiHudsonmodelQueueLeftItem();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelQueueLeftItem* fromJson(String* obj);

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
    Boolean* getPCancelled();
    void setPCancelled(Boolean* pCancelled);
    SamiHudsonmodelFreeStyleBuild* getPExecutable();
    void setPExecutable(SamiHudsonmodelFreeStyleBuild* pExecutable);

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
Boolean* pCancelled;
SamiHudsonmodelFreeStyleBuild* pExecutable;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelQueueLeftItem_H_ */
