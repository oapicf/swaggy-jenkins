/*
 * SamiGetPipelineBranchesitem.h
 * 
 * 
 */

#ifndef SamiGetPipelineBranchesitem_H_
#define SamiGetPipelineBranchesitem_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiGetPipelineBranchesitem_latestRun.h"
#include "SamiGetPipelineBranchesitem_pullRequest.h"
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiGetPipelineBranchesitem: public SamiObject {
public:
    SamiGetPipelineBranchesitem();
    SamiGetPipelineBranchesitem(String* json);
    virtual ~SamiGetPipelineBranchesitem();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiGetPipelineBranchesitem* fromJson(String* obj);

    String* getPDisplayName();
    void setPDisplayName(String* pDisplayName);
    Integer* getPEstimatedDurationInMillis();
    void setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis);
    String* getPName();
    void setPName(String* pName);
    Integer* getPWeatherScore();
    void setPWeatherScore(Integer* pWeatherScore);
    SamiGetPipelineBranchesitem_latestRun* getPLatestRun();
    void setPLatestRun(SamiGetPipelineBranchesitem_latestRun* pLatestRun);
    String* getPOrganization();
    void setPOrganization(String* pOrganization);
    SamiGetPipelineBranchesitem_pullRequest* getPPullRequest();
    void setPPullRequest(SamiGetPipelineBranchesitem_pullRequest* pPullRequest);
    Integer* getPTotalNumberOfPullRequests();
    void setPTotalNumberOfPullRequests(Integer* pTotalNumberOfPullRequests);
    String* getPClass();
    void setPClass(String* p_class);

private:
    String* pDisplayName;
Integer* pEstimatedDurationInMillis;
String* pName;
Integer* pWeatherScore;
SamiGetPipelineBranchesitem_latestRun* pLatestRun;
String* pOrganization;
SamiGetPipelineBranchesitem_pullRequest* pPullRequest;
Integer* pTotalNumberOfPullRequests;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiGetPipelineBranchesitem_H_ */
