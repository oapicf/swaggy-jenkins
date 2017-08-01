/*
 * SamiGetClassesByClass.h
 * 
 * 
 */

#ifndef SamiGetClassesByClass_H_
#define SamiGetClassesByClass_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


using Tizen::Base::Collection::IList;
using Tizen::Base::String;


namespace Swagger {

class SamiGetClassesByClass: public SamiObject {
public:
    SamiGetClassesByClass();
    SamiGetClassesByClass(String* json);
    virtual ~SamiGetClassesByClass();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiGetClassesByClass* fromJson(String* obj);

    IList* getPClasses();
    void setPClasses(IList* pClasses);
    String* getPClass();
    void setPClass(String* p_class);

private:
    IList* pClasses;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiGetClassesByClass_H_ */
