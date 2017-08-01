/*
 * SamiHudsonmodelStringParameterDefinition.h
 * 
 * 
 */

#ifndef SamiHudsonmodelStringParameterDefinition_H_
#define SamiHudsonmodelStringParameterDefinition_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiHudsonmodelStringParameterValue.h"
using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelStringParameterDefinition: public SamiObject {
public:
    SamiHudsonmodelStringParameterDefinition();
    SamiHudsonmodelStringParameterDefinition(String* json);
    virtual ~SamiHudsonmodelStringParameterDefinition();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelStringParameterDefinition* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    SamiHudsonmodelStringParameterValue* getPDefaultParameterValue();
    void setPDefaultParameterValue(SamiHudsonmodelStringParameterValue* pDefaultParameterValue);
    String* getPDescription();
    void setPDescription(String* pDescription);
    String* getPName();
    void setPName(String* pName);
    String* getPType();
    void setPType(String* pType);

private:
    String* p_class;
SamiHudsonmodelStringParameterValue* pDefaultParameterValue;
String* pDescription;
String* pName;
String* pType;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelStringParameterDefinition_H_ */
