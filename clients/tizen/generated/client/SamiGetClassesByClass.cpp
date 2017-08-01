
#include "SamiGetClassesByClass.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiGetClassesByClass::SamiGetClassesByClass() {
    init();
}

SamiGetClassesByClass::~SamiGetClassesByClass() {
    this->cleanup();
}

void
SamiGetClassesByClass::init() {
    pClasses = null;
p_class = null;
}

void
SamiGetClassesByClass::cleanup() {
    if(pClasses != null) {
        pClasses->RemoveAll(true);
        delete pClasses;
        pClasses = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiGetClassesByClass*
SamiGetClassesByClass::fromJson(String* json) {
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
SamiGetClassesByClass::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pClassesKey = new JsonString(L"classes");
        IJsonValue* pClassesVal = null;
        pJsonObject->GetValue(pClassesKey, pClassesVal);
        if(pClassesVal != null) {
            pClasses = new ArrayList();
            
            jsonToValue(pClasses, pClassesVal, L"IList", L"String");
        }
        delete pClassesKey;
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

SamiGetClassesByClass::SamiGetClassesByClass(String* json) {
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
SamiGetClassesByClass::asJson ()
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
SamiGetClassesByClass::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pClassesKey = new JsonString(L"classes");
    pJsonObject->Add(pClassesKey, toJson(getPClasses(), "String", "array"));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

IList*
SamiGetClassesByClass::getPClasses() {
    return pClasses;
}
void
SamiGetClassesByClass::setPClasses(IList* pClasses) {
    this->pClasses = pClasses;
}

String*
SamiGetClassesByClass::getPClass() {
    return p_class;
}
void
SamiGetClassesByClass::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

