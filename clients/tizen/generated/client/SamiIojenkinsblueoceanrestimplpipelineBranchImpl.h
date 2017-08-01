/*
 * SamiIojenkinsblueoceanrestimplpipelineBranchImpl.h
 * 
 * 
 */

#ifndef SamiIojenkinsblueoceanrestimplpipelineBranchImpl_H_
#define SamiIojenkinsblueoceanrestimplpipelineBranchImpl_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelStringParameterDefinition.h"
#include "SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions.h"
using Tizen::Base::Collection::IList;
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiIojenkinsblueoceanrestimplpipelineBranchImpl: public SamiObject {
public:
    SamiIojenkinsblueoceanrestimplpipelineBranchImpl();
    SamiIojenkinsblueoceanrestimplpipelineBranchImpl(String* json);
    virtual ~SamiIojenkinsblueoceanrestimplpipelineBranchImpl();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiIojenkinsblueoceanrestimplpipelineBranchImpl* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPDisplayName();
    void setPDisplayName(String* pDisplayName);
    Integer* getPEstimatedDurationInMillis();
    void setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis);
    String* getPFullDisplayName();
    void setPFullDisplayName(String* pFullDisplayName);
    String* getPFullName();
    void setPFullName(String* pFullName);
    String* getPName();
    void setPName(String* pName);
    String* getPOrganization();
    void setPOrganization(String* pOrganization);
    IList* getPParameters();
    void setPParameters(IList* pParameters);
    SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions* getPPermissions();
    void setPPermissions(SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions* pPermissions);
    Integer* getPWeatherScore();
    void setPWeatherScore(Integer* pWeatherScore);
    String* getPPullRequest();
    void setPPullRequest(String* pPullRequest);

private:
    String* p_class;
String* pDisplayName;
Integer* pEstimatedDurationInMillis;
String* pFullDisplayName;
String* pFullName;
String* pName;
String* pOrganization;
IList* pParameters;
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions* pPermissions;
Integer* pWeatherScore;
String* pPullRequest;
};

} /* namespace Swagger */

#endif /* SamiIojenkinsblueoceanrestimplpipelineBranchImpl_H_ */
