
#include "SamiHudsonutilClockDifference.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonutilClockDifference::SamiHudsonutilClockDifference() {
    init();
}

SamiHudsonutilClockDifference::~SamiHudsonutilClockDifference() {
    this->cleanup();
}

void
SamiHudsonutilClockDifference::init() {
    p_class = null;
pDiff = null;
}

void
SamiHudsonutilClockDifference::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pDiff != null) {
        
        delete pDiff;
        pDiff = null;
    }
}


SamiHudsonutilClockDifference*
SamiHudsonutilClockDifference::fromJson(String* json) {
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
SamiHudsonutilClockDifference::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pDiffKey = new JsonString(L"diff");
        IJsonValue* pDiffVal = null;
        pJsonObject->GetValue(pDiffKey, pDiffVal);
        if(pDiffVal != null) {
            
            pDiff = null;
            jsonToValue(pDiff, pDiffVal, L"Integer", L"Integer");
        }
        delete pDiffKey;
    }
}

SamiHudsonutilClockDifference::SamiHudsonutilClockDifference(String* json) {
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
SamiHudsonutilClockDifference::asJson ()
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
SamiHudsonutilClockDifference::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pDiffKey = new JsonString(L"diff");
    pJsonObject->Add(pDiffKey, toJson(getPDiff(), "Integer", ""));

    return pJsonObject;
}

String*
SamiHudsonutilClockDifference::getPClass() {
    return p_class;
}
void
SamiHudsonutilClockDifference::setPClass(String* p_class) {
    this->p_class = p_class;
}

Integer*
SamiHudsonutilClockDifference::getPDiff() {
    return pDiff;
}
void
SamiHudsonutilClockDifference::setPDiff(Integer* pDiff) {
    this->pDiff = pDiff;
}



} /* namespace Swagger */

