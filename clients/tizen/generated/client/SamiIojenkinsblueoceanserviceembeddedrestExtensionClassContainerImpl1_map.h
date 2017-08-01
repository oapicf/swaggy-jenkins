/*
 * SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map.h
 * 
 * 
 */

#ifndef SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map_H_
#define SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map_H_

#include <FApp.h>
#include <FBase.h>
#include <FSystem.h>
#include <FWebJson.h>
#include "SamiHelpers.h"
#include "SamiObject.h"

using namespace Tizen::Web::Json;


#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl.h"
using Tizen::Base::String;


namespace Swagger {

class SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map: public SamiObject {
public:
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map();
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map(String* json);
    virtual ~SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map();

    void init();

    void cleanup();

    String asJson ();

    JsonObject* asJsonObject();

    void fromJsonObject(IJsonValue* json);

    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map* fromJson(String* obj);

    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl* getPIojenkinsblueoceanserviceembeddedrestPipelineImpl();
    void setPIojenkinsblueoceanserviceembeddedrestPipelineImpl(SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl* pIojenkinsblueoceanserviceembeddedrestPipelineImpl);
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl* getPIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl();
    void setPIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl(SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl* pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl);
    String* getPClass();
    void setPClass(String* p_class);

private:
    SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl* pIojenkinsblueoceanserviceembeddedrestPipelineImpl;
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl* pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
String* p_class;
};

} /* namespace Swagger */

#endif /* SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map_H_ */
