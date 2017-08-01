/*
 * SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl.h
 * 
 * 
 */

#ifndef SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl_H_
#define SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links.h"
using Tizen::Base::Collection::IList;
using Tizen::Base::String;


namespace Swagger {

class SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl: public SamiObject {
public:
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl();
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl(String* json);
    virtual ~SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links* getPLinks();
    void setPLinks(SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links* p_links);
    IList* getPClasses();
    void setPClasses(IList* pClasses);

private:
    String* p_class;
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links* p_links;
IList* pClasses;
};

} /* namespace Swagger */

#endif /* SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl_H_ */
