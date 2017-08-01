
#include "SamiHudsonmodelStringParameterValue.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelStringParameterValue::SamiHudsonmodelStringParameterValue() {
    init();
}

SamiHudsonmodelStringParameterValue::~SamiHudsonmodelStringParameterValue() {
    this->cleanup();
}

void
SamiHudsonmodelStringParameterValue::init() {
    p_class = null;
pName = null;
pValue = null;
}

void
SamiHudsonmodelStringParameterValue::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pValue != null) {
        
        delete pValue;
        pValue = null;
    }
}


SamiHudsonmodelStringParameterValue*
SamiHudsonmodelStringParameterValue::fromJson(String* json) {
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
SamiHudsonmodelStringParameterValue::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pNameKey = new JsonString(L"name");
        IJsonValue* pNameVal = null;
        pJsonObject->GetValue(pNameKey, pNameVal);
        if(pNameVal != null) {
            
            pName = new String();
            jsonToValue(pName, pNameVal, L"String", L"String");
        }
        delete pNameKey;
JsonString* pValueKey = new JsonString(L"value");
        IJsonValue* pValueVal = null;
        pJsonObject->GetValue(pValueKey, pValueVal);
        if(pValueVal != null) {
            
            pValue = new String();
            jsonToValue(pValue, pValueVal, L"String", L"String");
        }
        delete pValueKey;
    }
}

SamiHudsonmodelStringParameterValue::SamiHudsonmodelStringParameterValue(String* json) {
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
SamiHudsonmodelStringParameterValue::asJson ()
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
SamiHudsonmodelStringParameterValue::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pValueKey = new JsonString(L"value");
    pJsonObject->Add(pValueKey, toJson(getPValue(), "String", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelStringParameterValue::getPClass() {
    return p_class;
}
void
SamiHudsonmodelStringParameterValue::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiHudsonmodelStringParameterValue::getPName() {
    return pName;
}
void
SamiHudsonmodelStringParameterValue::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiHudsonmodelStringParameterValue::getPValue() {
    return pValue;
}
void
SamiHudsonmodelStringParameterValue::setPValue(String* pValue) {
    this->pValue = pValue;
}



} /* namespace Swagger */

