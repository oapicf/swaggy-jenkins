/*
 * SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.h
 * 
 * 
 */

#ifndef SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_H_
#define SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links.h"
#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map.h"
using Tizen::Base::String;


namespace Swagger {

class SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1: public SamiObject {
public:
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1();
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1(String* json);
    virtual ~SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1* fromJson(String* obj);

    String* getPClass();
    void setPClass(String* p_class);
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links* getPLinks();
    void setPLinks(SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links* p_links);
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map* getPMap();
    void setPMap(SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map* pMap);

private:
    String* p_class;
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links* p_links;
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map* pMap;
};

} /* namespace Swagger */

#endif /* SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_H_ */
