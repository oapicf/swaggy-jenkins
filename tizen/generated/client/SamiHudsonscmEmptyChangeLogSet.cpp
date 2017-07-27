
#include "SamiHudsonscmEmptyChangeLogSet.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonscmEmptyChangeLogSet::SamiHudsonscmEmptyChangeLogSet() {
    init();
}

SamiHudsonscmEmptyChangeLogSet::~SamiHudsonscmEmptyChangeLogSet() {
    this->cleanup();
}

void
SamiHudsonscmEmptyChangeLogSet::init() {
    p_class = null;
pKind = null;
}

void
SamiHudsonscmEmptyChangeLogSet::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pKind != null) {
        
        delete pKind;
        pKind = null;
    }
}


SamiHudsonscmEmptyChangeLogSet*
SamiHudsonscmEmptyChangeLogSet::fromJson(String* json) {
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
SamiHudsonscmEmptyChangeLogSet::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pKindKey = new JsonString(L"kind");
        IJsonValue* pKindVal = null;
        pJsonObject->GetValue(pKindKey, pKindVal);
        if(pKindVal != null) {
            
            pKind = new String();
            jsonToValue(pKind, pKindVal, L"String", L"String");
        }
        delete pKindKey;
    }
}

SamiHudsonscmEmptyChangeLogSet::SamiHudsonscmEmptyChangeLogSet(String* json) {
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
SamiHudsonscmEmptyChangeLogSet::asJson ()
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
SamiHudsonscmEmptyChangeLogSet::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pKindKey = new JsonString(L"kind");
    pJsonObject->Add(pKindKey, toJson(getPKind(), "String", ""));

    return pJsonObject;
}

String*
SamiHudsonscmEmptyChangeLogSet::getPClass() {
    return p_class;
}
void
SamiHudsonscmEmptyChangeLogSet::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiHudsonscmEmptyChangeLogSet::getPKind() {
    return pKind;
}
void
SamiHudsonscmEmptyChangeLogSet::setPKind(String* pKind) {
    this->pKind = pKind;
}



} /* namespace Swagger */

