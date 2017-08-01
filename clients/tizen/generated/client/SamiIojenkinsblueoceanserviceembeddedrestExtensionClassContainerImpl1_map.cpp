
#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map() {
    init();
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::~SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map() {
    this->cleanup();
}

void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::init() {
    pIojenkinsblueoceanserviceembeddedrestPipelineImpl = null;
pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl = null;
p_class = null;
}

void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::cleanup() {
    if(pIojenkinsblueoceanserviceembeddedrestPipelineImpl != null) {
        
        delete pIojenkinsblueoceanserviceembeddedrestPipelineImpl;
        pIojenkinsblueoceanserviceembeddedrestPipelineImpl = null;
    }
if(pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl != null) {
        
        delete pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
        pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::fromJson(String* json) {
    this->cleanup();
    String str(json->GetPointer());
    int length = str.GetLength();

    ByteBuffer buffer;
    buffer.Construct(length);

    for (int i = 0; i < length; ++i) {
       byte b = str[i];
       buffer.SetByte(b);
    }

    IJsonValue* pJson = JsonParser::ParseN(buffer);
    fromJsonObject(pJson);
    if (pJson->GetType() == JSON_TYPE_OBJECT) {
       JsonObject* pObject = static_cast< JsonObject* >(pJson);
       pObject->RemoveAll(true);
    }
    else if (pJson->GetType() == JSON_TYPE_ARRAY) {
       JsonArray* pArray = static_cast< JsonArray* >(pJson);
       pArray->RemoveAll(true);
    }
    delete pJson;
    return this;
}


void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pIojenkinsblueoceanserviceembeddedrestPipelineImplKey = new JsonString(L"io.jenkins.blueocean.service.embedded.rest.PipelineImpl");
        IJsonValue* pIojenkinsblueoceanserviceembeddedrestPipelineImplVal = null;
        pJsonObject->GetValue(pIojenkinsblueoceanserviceembeddedrestPipelineImplKey, pIojenkinsblueoceanserviceembeddedrestPipelineImplVal);
        if(pIojenkinsblueoceanserviceembeddedrestPipelineImplVal != null) {
            
            pIojenkinsblueoceanserviceembeddedrestPipelineImpl = new SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl();
            jsonToValue(pIojenkinsblueoceanserviceembeddedrestPipelineImpl, pIojenkinsblueoceanserviceembeddedrestPipelineImplVal, L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl", L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl");
        }
        delete pIojenkinsblueoceanserviceembeddedrestPipelineImplKey;
JsonString* pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey = new JsonString(L"io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl");
        IJsonValue* pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplVal = null;
        pJsonObject->GetValue(pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey, pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplVal);
        if(pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplVal != null) {
            
            pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl = new SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl();
            jsonToValue(pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl, pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplVal, L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl", L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl");
        }
        delete pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey;
JsonString* p_classKey = new JsonString(L"_class");
        IJsonValue* p_classVal = null;
        pJsonObject->GetValue(p_classKey, p_classVal);
        if(p_classVal != null) {
            
            p_class = new String();
            jsonToValue(p_class, p_classVal, L"String", L"String");
        }
        delete p_classKey;
    }
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map(String* json) {
    init();
    String str(json->GetPointer());
    int length = str.GetLength();

    ByteBuffer buffer;
    buffer.Construct(length);

    for (int i = 0; i < length; ++i) {
       byte b = str[i];
       buffer.SetByte(b);
    }

    IJsonValue* pJson = JsonParser::ParseN(buffer);
    fromJsonObject(pJson);
    if (pJson->GetType() == JSON_TYPE_OBJECT) {
       JsonObject* pObject = static_cast< JsonObject* >(pJson);
       pObject->RemoveAll(true);
    }
    else if (pJson->GetType() == JSON_TYPE_ARRAY) {
       JsonArray* pArray = static_cast< JsonArray* >(pJson);
       pArray->RemoveAll(true);
    }
    delete pJson;
}

String
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::asJson ()
{
    JsonObject* pJsonObject = asJsonObject();

    char *pComposeBuf = new char[256];
    JsonWriter::Compose(pJsonObject, pComposeBuf, 256);
    String s = String(pComposeBuf);

    delete pComposeBuf;
    pJsonObject->RemoveAll(true);
    delete pJsonObject;

    return s;
}

JsonObject*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pIojenkinsblueoceanserviceembeddedrestPipelineImplKey = new JsonString(L"io.jenkins.blueocean.service.embedded.rest.PipelineImpl");
    pJsonObject->Add(pIojenkinsblueoceanserviceembeddedrestPipelineImplKey, toJson(getPIojenkinsblueoceanserviceembeddedrestPipelineImpl(), "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl", ""));

    JsonString *pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey = new JsonString(L"io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl");
    pJsonObject->Add(pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImplKey, toJson(getPIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl(), "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::getPIojenkinsblueoceanserviceembeddedrestPipelineImpl() {
    return pIojenkinsblueoceanserviceembeddedrestPipelineImpl;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::setPIojenkinsblueoceanserviceembeddedrestPipelineImpl(SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl* pIojenkinsblueoceanserviceembeddedrestPipelineImpl) {
    this->pIojenkinsblueoceanserviceembeddedrestPipelineImpl = pIojenkinsblueoceanserviceembeddedrestPipelineImpl;
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::getPIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl() {
    return pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::setPIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl(SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl* pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl) {
    this->pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl = pIojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::getPClass() {
    return p_class;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

