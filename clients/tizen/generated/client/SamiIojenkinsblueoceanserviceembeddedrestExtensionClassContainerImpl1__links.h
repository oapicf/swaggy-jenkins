/*
 * SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links.h
 * 
 * 
 */

#ifndef SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links_H_
#define SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links_H_

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

class SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links: public SamiObject {
public:
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links();
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links(String* json);
    virtual ~SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links* fromJson(String* obj);

    SamiIojenkinsblueoceanresthalLink* getPSelf();
    void setPSelf(SamiIojenkinsblueoceanresthalLink* pSelf);
    String* getPClass();
    void setPClass(String* p_class);

private:
    SamiIojenkinsblueoceanresthalLink* pSelf;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links_H_ */
