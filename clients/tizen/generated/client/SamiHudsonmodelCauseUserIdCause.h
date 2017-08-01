/*
 * SamiHudsonmodelCauseUserIdCause.h
 * 
 * 
 */

#ifndef SamiHudsonmodelCauseUserIdCause_H_
#define SamiHudsonmodelCauseUserIdCause_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelCauseUserIdCause: public SamiObject {
public:
    SamiHudsonmodelCauseUserIdCause();
    SamiHudsonmodelCauseUserIdCause(String* json);
    virtual ~SamiHudsonmodelCauseUserIdCause();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelCauseUserIdCause* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPShortDescription();
    void setPShortDescription(String* pShortDescription);
    String* getPUserId();
    void setPUserId(String* pUserId);
    String* getPUserName();
    void setPUserName(String* pUserName);

private:
    String* p_class;
String* pShortDescription;
String* pUserId;
String* pUserName;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelCauseUserIdCause_H_ */
