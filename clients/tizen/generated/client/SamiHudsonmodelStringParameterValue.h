/*
 * SamiHudsonmodelStringParameterValue.h
 * 
 * 
 */

#ifndef SamiHudsonmodelStringParameterValue_H_
#define SamiHudsonmodelStringParameterValue_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelStringParameterValue: public SamiObject {
public:
    SamiHudsonmodelStringParameterValue();
    SamiHudsonmodelStringParameterValue(String* json);
    virtual ~SamiHudsonmodelStringParameterValue();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelStringParameterValue* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPName();
    void setPName(String* pName);
    String* getPValue();
    void setPValue(String* pValue);

private:
    String* p_class;
String* pName;
String* pValue;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelStringParameterValue_H_ */
