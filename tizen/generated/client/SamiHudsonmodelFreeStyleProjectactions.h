/*
 * SamiHudsonmodelFreeStyleProjectactions.h
 * 
 * 
 */

#ifndef SamiHudsonmodelFreeStyleProjectactions_H_
#define SamiHudsonmodelFreeStyleProjectactions_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelFreeStyleProjectactions: public SamiObject {
public:
    SamiHudsonmodelFreeStyleProjectactions();
    SamiHudsonmodelFreeStyleProjectactions(String* json);
    virtual ~SamiHudsonmodelFreeStyleProjectactions();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelFreeStyleProjectactions* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);

private:
    String* p_class;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelFreeStyleProjectactions_H_ */
