/*
 * SamiHudsonmodelLabel1.h
 * 
 * 
 */

#ifndef SamiHudsonmodelLabel1_H_
#define SamiHudsonmodelLabel1_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelLabel1: public SamiObject {
public:
    SamiHudsonmodelLabel1();
    SamiHudsonmodelLabel1(String* json);
    virtual ~SamiHudsonmodelLabel1();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelLabel1* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);

private:
    String* p_class;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelLabel1_H_ */
