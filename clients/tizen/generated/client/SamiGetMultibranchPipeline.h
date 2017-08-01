/*
 * SamiGetMultibranchPipeline.h
 * 
 * 
 */

#ifndef SamiGetMultibranchPipeline_H_
#define SamiGetMultibranchPipeline_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::Collection::IList;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiGetMultibranchPipeline: public SamiObject {
public:
    SamiGetMultibranchPipeline();
    SamiGetMultibranchPipeline(String* json);
    virtual ~SamiGetMultibranchPipeline();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiGetMultibranchPipeline* fromJson(String* obj);

    String* getPDisplayName();
    void setPDisplayName(String* pDisplayName);
    Integer* getPEstimatedDurationInMillis();
    void setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis);
    String* getPLatestRun();
    void setPLatestRun(String* pLatestRun);
    String* getPName();
    void setPName(String* pName);
    String* getPOrganization();
    void setPOrganization(String* pOrganization);
    Integer* getPWeatherScore();
    void setPWeatherScore(Integer* pWeatherScore);
    IList* getPBranchNames();
    void setPBranchNames(IList* pBranchNames);
    Integer* getPNumberOfFailingBranches();
    void setPNumberOfFailingBranches(Integer* pNumberOfFailingBranches);
    Integer* getPNumberOfFailingPullRequests();
    void setPNumberOfFailingPullRequests(Integer* pNumberOfFailingPullRequests);
    Integer* getPNumberOfSuccessfulBranches();
    void setPNumberOfSuccessfulBranches(Integer* pNumberOfSuccessfulBranches);
    Integer* getPNumberOfSuccessfulPullRequests();
    void setPNumberOfSuccessfulPullRequests(Integer* pNumberOfSuccessfulPullRequests);
    Integer* getPTotalNumberOfBranches();
    void setPTotalNumberOfBranches(Integer* pTotalNumberOfBranches);
    Integer* getPTotalNumberOfPullRequests();
    void setPTotalNumberOfPullRequests(Integer* pTotalNumberOfPullRequests);
    String* getPClass();
    void setPClass(String* p_class);

private:
    String* pDisplayName;
Integer* pEstimatedDurationInMillis;
String* pLatestRun;
String* pName;
String* pOrganization;
Integer* pWeatherScore;
IList* pBranchNames;
Integer* pNumberOfFailingBranches;
Integer* pNumberOfFailingPullRequests;
Integer* pNumberOfSuccessfulBranches;
Integer* pNumberOfSuccessfulPullRequests;
Integer* pTotalNumberOfBranches;
Integer* pTotalNumberOfPullRequests;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiGetMultibranchPipeline_H_ */
