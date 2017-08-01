/*
 * SamiGetPipelineBranchesitem_latestRun.h
 * 
 * 
 */

#ifndef SamiGetPipelineBranchesitem_latestRun_H_
#define SamiGetPipelineBranchesitem_latestRun_H_

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

class SamiGetPipelineBranchesitem_latestRun: public SamiObject {
public:
    SamiGetPipelineBranchesitem_latestRun();
    SamiGetPipelineBranchesitem_latestRun(String* json);
    virtual ~SamiGetPipelineBranchesitem_latestRun();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiGetPipelineBranchesitem_latestRun* fromJson(String* obj);

    Integer* getPDurationInMillis();
    void setPDurationInMillis(Integer* pDurationInMillis);
    Integer* getPEstimatedDurationInMillis();
    void setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis);
    String* getPEnQueueTime();
    void setPEnQueueTime(String* pEnQueueTime);
    String* getPEndTime();
    void setPEndTime(String* pEndTime);
    String* getPId();
    void setPId(String* pId);
    String* getPOrganization();
    void setPOrganization(String* pOrganization);
    String* getPPipeline();
    void setPPipeline(String* pPipeline);
    String* getPResult();
    void setPResult(String* pResult);
    String* getPRunSummary();
    void setPRunSummary(String* pRunSummary);
    String* getPStartTime();
    void setPStartTime(String* pStartTime);
    String* getPState();
    void setPState(String* pState);
    String* getPType();
    void setPType(String* pType);
    String* getPCommitId();
    void setPCommitId(String* pCommitId);
    String* getPClass();
    void setPClass(String* p_class);

private:
    Integer* pDurationInMillis;
Integer* pEstimatedDurationInMillis;
String* pEnQueueTime;
String* pEndTime;
String* pId;
String* pOrganization;
String* pPipeline;
String* pResult;
String* pRunSummary;
String* pStartTime;
String* pState;
String* pType;
String* pCommitId;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiGetPipelineBranchesitem_latestRun_H_ */
