
#include "SamiHudsonmodelCauseAction.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelCauseAction::SamiHudsonmodelCauseAction() {
    init();
}

SamiHudsonmodelCauseAction::~SamiHudsonmodelCauseAction() {
    this->cleanup();
}

void
SamiHudsonmodelCauseAction::init() {
    p_class = null;
pCauses = null;
}

void
SamiHudsonmodelCauseAction::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pCauses != null) {
        pCauses->RemoveAll(true);
        delete pCauses;
        pCauses = null;
    }
}


SamiHudsonmodelCauseAction*
SamiHudsonmodelCauseAction::fromJson(String* json) {
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
SamiHudsonmodelCauseAction::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pCausesKey = new JsonString(L"causes");
        IJsonValue* pCausesVal = null;
        pJsonObject->GetValue(pCausesKey, pCausesVal);
        if(pCausesVal != null) {
            pCauses = new ArrayList();
            
            jsonToValue(pCauses, pCausesVal, L"IList", L"SamiHudsonmodelCauseUserIdCause");
        }
        delete pCausesKey;
    }
}

SamiHudsonmodelCauseAction::SamiHudsonmodelCauseAction(String* json) {
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
SamiHudsonmodelCauseAction::asJson ()
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
SamiHudsonmodelCauseAction::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pCausesKey = new JsonString(L"causes");
    pJsonObject->Add(pCausesKey, toJson(getPCauses(), "SamiHudsonmodelCauseUserIdCause", "array"));

    return pJsonObject;
}

String*
SamiHudsonmodelCauseAction::getPClass() {
    return p_class;
}
void
SamiHudsonmodelCauseAction::setPClass(String* p_class) {
    this->p_class = p_class;
}

IList*
SamiHudsonmodelCauseAction::getPCauses() {
    return pCauses;
}
void
SamiHudsonmodelCauseAction::setPCauses(IList* pCauses) {
    this->pCauses = pCauses;
}



} /* namespace Swagger */

