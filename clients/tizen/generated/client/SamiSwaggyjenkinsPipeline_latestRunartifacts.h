/*
 * SamiSwaggyjenkinsPipeline_latestRunartifacts.h
 * 
 * 
 */

#ifndef SamiSwaggyjenkinsPipeline_latestRunartifacts_H_
#define SamiSwaggyjenkinsPipeline_latestRunartifacts_H_

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

class SamiSwaggyjenkinsPipeline_latestRunartifacts: public SamiObject {
public:
    SamiSwaggyjenkinsPipeline_latestRunartifacts();
    SamiSwaggyjenkinsPipeline_latestRunartifacts(String* json);
    virtual ~SamiSwaggyjenkinsPipeline_latestRunartifacts();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiSwaggyjenkinsPipeline_latestRunartifacts* fromJson(String* obj);

    String* getPName();
    void setPName(String* pName);
    Integer* getPSize();
    void setPSize(Integer* pSize);
    String* getPUrl();
    void setPUrl(String* pUrl);
    String* getPClass();
    void setPClass(String* p_class);

private:
    String* pName;
Integer* pSize;
String* pUrl;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiSwaggyjenkinsPipeline_latestRunartifacts_H_ */
