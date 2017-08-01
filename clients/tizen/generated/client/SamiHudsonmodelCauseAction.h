/*
 * SamiHudsonmodelCauseAction.h
 * 
 * 
 */

#ifndef SamiHudsonmodelCauseAction_H_
#define SamiHudsonmodelCauseAction_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelCauseUserIdCause.h"
using Tizen::Base::Collection::IList;
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelCauseAction: public SamiObject {
public:
    SamiHudsonmodelCauseAction();
    SamiHudsonmodelCauseAction(String* json);
    virtual ~SamiHudsonmodelCauseAction();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelCauseAction* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    IList* getPCauses();
    void setPCauses(IList* pCauses);

private:
    String* p_class;
IList* pCauses;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelCauseAction_H_ */
