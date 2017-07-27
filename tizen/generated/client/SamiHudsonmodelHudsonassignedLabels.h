/*
 * SamiHudsonmodelHudsonassignedLabels.h
 * 
 * 
 */

#ifndef SamiHudsonmodelHudsonassignedLabels_H_
#define SamiHudsonmodelHudsonassignedLabels_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelHudsonassignedLabels: public SamiObject {
public:
    SamiHudsonmodelHudsonassignedLabels();
    SamiHudsonmodelHudsonassignedLabels(String* json);
    virtual ~SamiHudsonmodelHudsonassignedLabels();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelHudsonassignedLabels* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);

private:
    String* p_class;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelHudsonassignedLabels_H_ */
