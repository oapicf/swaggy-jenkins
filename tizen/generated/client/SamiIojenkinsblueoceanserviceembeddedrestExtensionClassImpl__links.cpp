
#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links() {
    init();
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::~SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links() {
    this->cleanup();
}

void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::init() {
    pSelf = null;
p_class = null;
}

void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::cleanup() {
    if(pSelf != null) {
        
        delete pSelf;
        pSelf = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::fromJson(String* json) {
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
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pSelfKey = new JsonString(L"self");
        IJsonValue* pSelfVal = null;
        pJsonObject->GetValue(pSelfKey, pSelfVal);
        if(pSelfVal != null) {
            
            pSelf = new SamiIojenkinsblueoceanresthalLink();
            jsonToValue(pSelf, pSelfVal, L"SamiIojenkinsblueoceanresthalLink", L"SamiIojenkinsblueoceanresthalLink");
        }
        delete pSelfKey;
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

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links(String* json) {
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
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::asJson ()
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
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pSelfKey = new JsonString(L"self");
    pJsonObject->Add(pSelfKey, toJson(getPSelf(), "SamiIojenkinsblueoceanresthalLink", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

SamiIojenkinsblueoceanresthalLink*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::getPSelf() {
    return pSelf;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::setPSelf(SamiIojenkinsblueoceanresthalLink* pSelf) {
    this->pSelf = pSelf;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::getPClass() {
    return p_class;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

