/*
 * SamiHudsonmodelFreeStyleProject.h
 * 
 * 
 */

#ifndef SamiHudsonmodelFreeStyleProject_H_
#define SamiHudsonmodelFreeStyleProject_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelFreeStyleBuild.h"
#include "SamiHudsonmodelFreeStyleProjectactions.h"
#include "SamiHudsonmodelFreeStyleProjecthealthReport.h"
#include "SamiHudsonscmNullSCM.h"
using Tizen::Base::Boolean;
using Tizen::Base::Collection::IList;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelFreeStyleProject: public SamiObject {
public:
    SamiHudsonmodelFreeStyleProject();
    SamiHudsonmodelFreeStyleProject(String* json);
    virtual ~SamiHudsonmodelFreeStyleProject();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelFreeStyleProject* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPName();
    void setPName(String* pName);
    String* getPUrl();
    void setPUrl(String* pUrl);
    String* getPColor();
    void setPColor(String* pColor);
    IList* getPActions();
    void setPActions(IList* pActions);
    String* getPDescription();
    void setPDescription(String* pDescription);
    String* getPDisplayName();
    void setPDisplayName(String* pDisplayName);
    String* getPDisplayNameOrNull();
    void setPDisplayNameOrNull(String* pDisplayNameOrNull);
    String* getPFullDisplayName();
    void setPFullDisplayName(String* pFullDisplayName);
    String* getPFullName();
    void setPFullName(String* pFullName);
    Boolean* getPBuildable();
    void setPBuildable(Boolean* pBuildable);
    IList* getPBuilds();
    void setPBuilds(IList* pBuilds);
    SamiHudsonmodelFreeStyleBuild* getPFirstBuild();
    void setPFirstBuild(SamiHudsonmodelFreeStyleBuild* pFirstBuild);
    IList* getPHealthReport();
    void setPHealthReport(IList* pHealthReport);
    Boolean* getPInQueue();
    void setPInQueue(Boolean* pInQueue);
    Boolean* getPKeepDependencies();
    void setPKeepDependencies(Boolean* pKeepDependencies);
    SamiHudsonmodelFreeStyleBuild* getPLastBuild();
    void setPLastBuild(SamiHudsonmodelFreeStyleBuild* pLastBuild);
    SamiHudsonmodelFreeStyleBuild* getPLastCompletedBuild();
    void setPLastCompletedBuild(SamiHudsonmodelFreeStyleBuild* pLastCompletedBuild);
    String* getPLastFailedBuild();
    void setPLastFailedBuild(String* pLastFailedBuild);
    SamiHudsonmodelFreeStyleBuild* getPLastStableBuild();
    void setPLastStableBuild(SamiHudsonmodelFreeStyleBuild* pLastStableBuild);
    SamiHudsonmodelFreeStyleBuild* getPLastSuccessfulBuild();
    void setPLastSuccessfulBuild(SamiHudsonmodelFreeStyleBuild* pLastSuccessfulBuild);
    String* getPLastUnstableBuild();
    void setPLastUnstableBuild(String* pLastUnstableBuild);
    String* getPLastUnsuccessfulBuild();
    void setPLastUnsuccessfulBuild(String* pLastUnsuccessfulBuild);
    Integer* getPNextBuildNumber();
    void setPNextBuildNumber(Integer* pNextBuildNumber);
    String* getPQueueItem();
    void setPQueueItem(String* pQueueItem);
    Boolean* getPConcurrentBuild();
    void setPConcurrentBuild(Boolean* pConcurrentBuild);
    SamiHudsonscmNullSCM* getPScm();
    void setPScm(SamiHudsonscmNullSCM* pScm);

private:
    String* p_class;
String* pName;
String* pUrl;
String* pColor;
IList* pActions;
String* pDescription;
String* pDisplayName;
String* pDisplayNameOrNull;
String* pFullDisplayName;
String* pFullName;
Boolean* pBuildable;
IList* pBuilds;
SamiHudsonmodelFreeStyleBuild* pFirstBuild;
IList* pHealthReport;
Boolean* pInQueue;
Boolean* pKeepDependencies;
SamiHudsonmodelFreeStyleBuild* pLastBuild;
SamiHudsonmodelFreeStyleBuild* pLastCompletedBuild;
String* pLastFailedBuild;
SamiHudsonmodelFreeStyleBuild* pLastStableBuild;
SamiHudsonmodelFreeStyleBuild* pLastSuccessfulBuild;
String* pLastUnstableBuild;
String* pLastUnsuccessfulBuild;
Integer* pNextBuildNumber;
String* pQueueItem;
Boolean* pConcurrentBuild;
SamiHudsonscmNullSCM* pScm;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelFreeStyleProject_H_ */
