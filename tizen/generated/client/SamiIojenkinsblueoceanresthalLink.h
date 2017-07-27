/*
 * SamiIojenkinsblueoceanresthalLink.h
 * 
 * 
 */

#ifndef SamiIojenkinsblueoceanresthalLink_H_
#define SamiIojenkinsblueoceanresthalLink_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiIojenkinsblueoceanresthalLink: public SamiObject {
public:
    SamiIojenkinsblueoceanresthalLink();
    SamiIojenkinsblueoceanresthalLink(String* json);
    virtual ~SamiIojenkinsblueoceanresthalLink();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiIojenkinsblueoceanresthalLink* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPHref();
    void setPHref(String* pHref);

private:
    String* p_class;
String* pHref;
};

} /* namespace Swagger */

#endif /* SamiIojenkinsblueoceanresthalLink_H_ */
