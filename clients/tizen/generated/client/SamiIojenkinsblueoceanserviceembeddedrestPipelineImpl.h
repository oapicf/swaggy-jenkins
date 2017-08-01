/*
 * SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl.h
 * 
 * 
 */

#ifndef SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl_H_
#define SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl_H_

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

class SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl: public SamiObject {
public:
    SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl();
    SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl(String* json);
    virtual ~SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPDisplayName();
    void setPDisplayName(String* pDisplayName);
    Integer* getPEstimatedDurationInMillis();
    void setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis);
    String* getPFullName();
    void setPFullName(String* pFullName);
    String* getPLatestRun();
    void setPLatestRun(String* pLatestRun);
    String* getPName();
    void setPName(String* pName);
    String* getPOrganization();
    void setPOrganization(String* pOrganization);
    Integer* getPWeatherScore();
    void setPWeatherScore(Integer* pWeatherScore);

private:
    String* p_class;
String* pDisplayName;
Integer* pEstimatedDurationInMillis;
String* pFullName;
String* pLatestRun;
String* pName;
String* pOrganization;
Integer* pWeatherScore;
};

} /* namespace Swagger */

#endif /* SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl_H_ */
