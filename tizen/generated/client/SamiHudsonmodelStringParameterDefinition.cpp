
#include "SamiHudsonmodelStringParameterDefinition.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelStringParameterDefinition::SamiHudsonmodelStringParameterDefinition() {
    init();
}

SamiHudsonmodelStringParameterDefinition::~SamiHudsonmodelStringParameterDefinition() {
    this->cleanup();
}

void
SamiHudsonmodelStringParameterDefinition::init() {
    p_class = null;
pDefaultParameterValue = null;
pDescription = null;
pName = null;
pType = null;
}

void
SamiHudsonmodelStringParameterDefinition::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pDefaultParameterValue != null) {
        
        delete pDefaultParameterValue;
        pDefaultParameterValue = null;
    }
if(pDescription != null) {
        
        delete pDescription;
        pDescription = null;
    }
if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pType != null) {
        
        delete pType;
        pType = null;
    }
}


SamiHudsonmodelStringParameterDefinition*
SamiHudsonmodelStringParameterDefinition::fromJson(String* json) {
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
SamiHudsonmodelStringParameterDefinition::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pDefaultParameterValueKey = new JsonString(L"defaultParameterValue");
        IJsonValue* pDefaultParameterValueVal = null;
        pJsonObject->GetValue(pDefaultParameterValueKey, pDefaultParameterValueVal);
        if(pDefaultParameterValueVal != null) {
            
            pDefaultParameterValue = new SamiHudsonmodelStringParameterValue();
            jsonToValue(pDefaultParameterValue, pDefaultParameterValueVal, L"SamiHudsonmodelStringParameterValue", L"SamiHudsonmodelStringParameterValue");
        }
        delete pDefaultParameterValueKey;
JsonString* pDescriptionKey = new JsonString(L"description");
        IJsonValue* pDescriptionVal = null;
        pJsonObject->GetValue(pDescriptionKey, pDescriptionVal);
        if(pDescriptionVal != null) {
            
            pDescription = new String();
            jsonToValue(pDescription, pDescriptionVal, L"String", L"String");
        }
        delete pDescriptionKey;
JsonString* pNameKey = new JsonString(L"name");
        IJsonValue* pNameVal = null;
        pJsonObject->GetValue(pNameKey, pNameVal);
        if(pNameVal != null) {
            
            pName = new String();
            jsonToValue(pName, pNameVal, L"String", L"String");
        }
        delete pNameKey;
JsonString* pTypeKey = new JsonString(L"type");
        IJsonValue* pTypeVal = null;
        pJsonObject->GetValue(pTypeKey, pTypeVal);
        if(pTypeVal != null) {
            
            pType = new String();
            jsonToValue(pType, pTypeVal, L"String", L"String");
        }
        delete pTypeKey;
    }
}

SamiHudsonmodelStringParameterDefinition::SamiHudsonmodelStringParameterDefinition(String* json) {
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
SamiHudsonmodelStringParameterDefinition::asJson ()
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
SamiHudsonmodelStringParameterDefinition::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pDefaultParameterValueKey = new JsonString(L"defaultParameterValue");
    pJsonObject->Add(pDefaultParameterValueKey, toJson(getPDefaultParameterValue(), "SamiHudsonmodelStringParameterValue", ""));

    JsonString *pDescriptionKey = new JsonString(L"description");
    pJsonObject->Add(pDescriptionKey, toJson(getPDescription(), "String", ""));

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pTypeKey = new JsonString(L"type");
    pJsonObject->Add(pTypeKey, toJson(getPType(), "String", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelStringParameterDefinition::getPClass() {
    return p_class;
}
void
SamiHudsonmodelStringParameterDefinition::setPClass(String* p_class) {
    this->p_class = p_class;
}

SamiHudsonmodelStringParameterValue*
SamiHudsonmodelStringParameterDefinition::getPDefaultParameterValue() {
    return pDefaultParameterValue;
}
void
SamiHudsonmodelStringParameterDefinition::setPDefaultParameterValue(SamiHudsonmodelStringParameterValue* pDefaultParameterValue) {
    this->pDefaultParameterValue = pDefaultParameterValue;
}

String*
SamiHudsonmodelStringParameterDefinition::getPDescription() {
    return pDescription;
}
void
SamiHudsonmodelStringParameterDefinition::setPDescription(String* pDescription) {
    this->pDescription = pDescription;
}

String*
SamiHudsonmodelStringParameterDefinition::getPName() {
    return pName;
}
void
SamiHudsonmodelStringParameterDefinition::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiHudsonmodelStringParameterDefinition::getPType() {
    return pType;
}
void
SamiHudsonmodelStringParameterDefinition::setPType(String* pType) {
    this->pType = pType;
}



} /* namespace Swagger */

