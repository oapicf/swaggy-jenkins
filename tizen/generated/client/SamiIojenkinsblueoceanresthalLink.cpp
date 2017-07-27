
#include "SamiIojenkinsblueoceanresthalLink.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiIojenkinsblueoceanresthalLink::SamiIojenkinsblueoceanresthalLink() {
    init();
}

SamiIojenkinsblueoceanresthalLink::~SamiIojenkinsblueoceanresthalLink() {
    this->cleanup();
}

void
SamiIojenkinsblueoceanresthalLink::init() {
    p_class = null;
pHref = null;
}

void
SamiIojenkinsblueoceanresthalLink::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pHref != null) {
        
        delete pHref;
        pHref = null;
    }
}


SamiIojenkinsblueoceanresthalLink*
SamiIojenkinsblueoceanresthalLink::fromJson(String* json) {
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
SamiIojenkinsblueoceanresthalLink::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pHrefKey = new JsonString(L"href");
        IJsonValue* pHrefVal = null;
        pJsonObject->GetValue(pHrefKey, pHrefVal);
        if(pHrefVal != null) {
            
            pHref = new String();
            jsonToValue(pHref, pHrefVal, L"String", L"String");
        }
        delete pHrefKey;
    }
}

SamiIojenkinsblueoceanresthalLink::SamiIojenkinsblueoceanresthalLink(String* json) {
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
SamiIojenkinsblueoceanresthalLink::asJson ()
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
SamiIojenkinsblueoceanresthalLink::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pHrefKey = new JsonString(L"href");
    pJsonObject->Add(pHrefKey, toJson(getPHref(), "String", ""));

    return pJsonObject;
}

String*
SamiIojenkinsblueoceanresthalLink::getPClass() {
    return p_class;
}
void
SamiIojenkinsblueoceanresthalLink::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiIojenkinsblueoceanresthalLink::getPHref() {
    return pHref;
}
void
SamiIojenkinsblueoceanresthalLink::setPHref(String* pHref) {
    this->pHref = pHref;
}



} /* namespace Swagger */

