/*
 * SamiHudsonscmEmptyChangeLogSet.h
 * 
 * 
 */

#ifndef SamiHudsonscmEmptyChangeLogSet_H_
#define SamiHudsonscmEmptyChangeLogSet_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::String;


namespace Swagger {

class SamiHudsonscmEmptyChangeLogSet: public SamiObject {
public:
    SamiHudsonscmEmptyChangeLogSet();
    SamiHudsonscmEmptyChangeLogSet(String* json);
    virtual ~SamiHudsonscmEmptyChangeLogSet();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiHudsonscmEmptyChangeLogSet* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    String* getPKind();
    void setPKind(String* pKind);

private:
    String* p_class;
String* pKind;
};

} /* namespace Swagger */

#endif /* SamiHudsonscmEmptyChangeLogSet_H_ */
