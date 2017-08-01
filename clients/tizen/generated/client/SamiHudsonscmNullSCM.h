/*
 * SamiHudsonscmNullSCM.h
 * 
 * 
 */

#ifndef SamiHudsonscmNullSCM_H_
#define SamiHudsonscmNullSCM_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiHudsonscmNullSCM: public SamiObject {
public:
    SamiHudsonscmNullSCM();
    SamiHudsonscmNullSCM(String* json);
    virtual ~SamiHudsonscmNullSCM();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonscmNullSCM* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);

private:
    String* p_class;
};

} /* namespace Swagger */

#endif /* SamiHudsonscmNullSCM_H_ */
