/*
 * SamiHudsonmodelAllView.h
 * 
 * 
 */

#ifndef SamiHudsonmodelAllView_H_
#define SamiHudsonmodelAllView_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiHudsonmodelAllView: public SamiObject {
public:
    SamiHudsonmodelAllView();
    SamiHudsonmodelAllView(String* json);
    virtual ~SamiHudsonmodelAllView();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonmodelAllView* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPName();
    void setPName(String* pName);
    String* getPUrl();
    void setPUrl(String* pUrl);

private:
    String* p_class;
String* pName;
String* pUrl;
};

} /* namespace Swagger */

#endif /* SamiHudsonmodelAllView_H_ */
