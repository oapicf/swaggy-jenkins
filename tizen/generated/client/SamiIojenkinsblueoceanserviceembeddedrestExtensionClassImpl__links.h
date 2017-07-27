/*
 * SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links.h
 * 
 * 
 */

#ifndef SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links_H_
#define SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiIojenkinsblueoceanresthalLink.h"
using Tizen::Base::String;


namespace Swagger {

class SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links: public SamiObject {
public:
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links();
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links(String* json);
    virtual ~SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links* fromJson(String* obj);

    SamiIojenkinsblueoceanresthalLink* getPSelf();
    void setPSelf(SamiIojenkinsblueoceanresthalLink* pSelf);
    String* getPClass();
    void setPClass(String* p_class);

private:
    SamiIojenkinsblueoceanresthalLink* pSelf;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links_H_ */
