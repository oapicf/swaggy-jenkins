
#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1() {
    init();
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::~SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1() {
    this->cleanup();
}

void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::init() {
    p_class = null;
p_links = null;
pMap = null;
}

void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(p_links != null) {
        
        delete p_links;
        p_links = null;
    }
if(pMap != null) {
        
        delete pMap;
        pMap = null;
    }
}


SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::fromJson(String* json) {
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
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* p_classKey = new JsonString(L"_class");
        IJsonValue* p_classVal = null;
        pJsonObject->GetValue(p_classKey, p_classVal);
        if(p_classVal != null) {
            
            p_class = new String();
            jsonToValue(p_class, p_classVal, L"String", L"String");
        }
        delete p_classKey;
JsonString* p_linksKey = new JsonString(L"_links");
        IJsonValue* p_linksVal = null;
        pJsonObject->GetValue(p_linksKey, p_linksVal);
        if(p_linksVal != null) {
            
            p_links = new SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links();
            jsonToValue(p_links, p_linksVal, L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links", L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links");
        }
        delete p_linksKey;
JsonString* pMapKey = new JsonString(L"map");
        IJsonValue* pMapVal = null;
        pJsonObject->GetValue(pMapKey, pMapVal);
        if(pMapVal != null) {
            
            pMap = new SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map();
            jsonToValue(pMap, pMapVal, L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map", L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map");
        }
        delete pMapKey;
    }
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1(String* json) {
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
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::asJson ()
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
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *p_linksKey = new JsonString(L"_links");
    pJsonObject->Add(p_linksKey, toJson(getPLinks(), "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links", ""));

    JsonString *pMapKey = new JsonString(L"map");
    pJsonObject->Add(pMapKey, toJson(getPMap(), "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map", ""));

    return pJsonObject;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::getPClass() {
    return p_class;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::setPClass(String* p_class) {
    this->p_class = p_class;
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::getPLinks() {
    return p_links;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::setPLinks(SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links* p_links) {
    this->p_links = p_links;
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::getPMap() {
    return pMap;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1::setPMap(SamiIojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map* pMap) {
    this->pMap = pMap;
}



} /* namespace Swagger */

