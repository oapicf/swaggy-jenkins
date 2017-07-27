/*
 * SamiHudsonmodelHudson.h
 * 
 * 
 */

#ifndef SamiHudsonmodelHudson_H_
#define SamiHudsonmodelHudson_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelAllView.h"
#include "SamiHudsonmodelFreeStyleProject.h"
#include "SamiHudsonmodelHudsonassignedLabels.h"
#include "SamiJenkinsmodelUnlabeledLoadStatistics.h"
using Tizen::Base::Boolean;
using Tizen::Base::Collection::IList;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelHudson: public SamiObject {
public:
    SamiHudsonmodelHudson();
    SamiHudsonmodelHudson(String* json);
    virtual ~SamiHudsonmodelHudson();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelHudson* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    IList* getPAssignedLabels();
    void setPAssignedLabels(IList* pAssignedLabels);
    String* getPMode();
    void setPMode(String* pMode);
    String* getPNodeDescription();
    void setPNodeDescription(String* pNodeDescription);
    String* getPNodeName();
    void setPNodeName(String* pNodeName);
    Integer* getPNumExecutors();
    void setPNumExecutors(Integer* pNumExecutors);
    String* getPDescription();
    void setPDescription(String* pDescription);
    IList* getPJobs();
    void setPJobs(IList* pJobs);
    SamiHudsonmodelAllView* getPPrimaryView();
    void setPPrimaryView(SamiHudsonmodelAllView* pPrimaryView);
    Boolean* getPQuietingDown();
    void setPQuietingDown(Boolean* pQuietingDown);
    Integer* getPSlaveAgentPort();
    void setPSlaveAgentPort(Integer* pSlaveAgentPort);
    SamiJenkinsmodelUnlabeledLoadStatistics* getPUnlabeledLoad();
    void setPUnlabeledLoad(SamiJenkinsmodelUnlabeledLoadStatistics* pUnlabeledLoad);
    Boolean* getPUseCrumbs();
    void setPUseCrumbs(Boolean* pUseCrumbs);
    Boolean* getPUseSecurity();
    void setPUseSecurity(Boolean* pUseSecurity);
    IList* getPViews();
    void setPViews(IList* pViews);

private:
    String* p_class;
IList* pAssignedLabels;
String* pMode;
String* pNodeDescription;
String* pNodeName;
Integer* pNumExecutors;
String* pDescription;
IList* pJobs;
SamiHudsonmodelAllView* pPrimaryView;
Boolean* pQuietingDown;
Integer* pSlaveAgentPort;
SamiJenkinsmodelUnlabeledLoadStatistics* pUnlabeledLoad;
Boolean* pUseCrumbs;
Boolean* pUseSecurity;
IList* pViews;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelHudson_H_ */
