/*
 * SamiSwaggyjenkinsPipeline.h
 * 
 * 
 */

#ifndef SamiSwaggyjenkinsPipeline_H_
#define SamiSwaggyjenkinsPipeline_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiSwaggyjenkinsPipeline_latestRun.h"
using Tizen::Base::Integer;
using Tizen::Base::String;


namespace Swagger {

class SamiSwaggyjenkinsPipeline: public SamiObject {
public:
    SamiSwaggyjenkinsPipeline();
    SamiSwaggyjenkinsPipeline(String* json);
    virtual ~SamiSwaggyjenkinsPipeline();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiSwaggyjenkinsPipeline* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPOrganization();
    void setPOrganization(String* pOrganization);
    String* getPName();
    void setPName(String* pName);
    String* getPDisplayName();
    void setPDisplayName(String* pDisplayName);
    String* getPFullName();
    void setPFullName(String* pFullName);
    Integer* getPWeatherScore();
    void setPWeatherScore(Integer* pWeatherScore);
    Integer* getPEstimatedDurationInMillis();
    void setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis);
    SamiSwaggyjenkinsPipeline_latestRun* getPLatestRun();
    void setPLatestRun(SamiSwaggyjenkinsPipeline_latestRun* pLatestRun);

private:
    String* p_class;
String* pOrganization;
String* pName;
String* pDisplayName;
String* pFullName;
Integer* pWeatherScore;
Integer* pEstimatedDurationInMillis;
SamiSwaggyjenkinsPipeline_latestRun* pLatestRun;
};

} /* namespace Swagger */

#endif /* SamiSwaggyjenkinsPipeline_H_ */
