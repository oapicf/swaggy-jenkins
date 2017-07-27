
#include "SamiHudsonmodelCauseUserIdCause.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelCauseUserIdCause::SamiHudsonmodelCauseUserIdCause() {
    init();
}

SamiHudsonmodelCauseUserIdCause::~SamiHudsonmodelCauseUserIdCause() {
    this->cleanup();
}

void
SamiHudsonmodelCauseUserIdCause::init() {
    p_class = null;
pShortDescription = null;
pUserId = null;
pUserName = null;
}

void
SamiHudsonmodelCauseUserIdCause::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pShortDescription != null) {
        
        delete pShortDescription;
        pShortDescription = null;
    }
if(pUserId != null) {
        
        delete pUserId;
        pUserId = null;
    }
if(pUserName != null) {
        
        delete pUserName;
        pUserName = null;
    }
}


SamiHudsonmodelCauseUserIdCause*
SamiHudsonmodelCauseUserIdCause::fromJson(String* json) {
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
SamiHudsonmodelCauseUserIdCause::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pShortDescriptionKey = new JsonString(L"shortDescription");
        IJsonValue* pShortDescriptionVal = null;
        pJsonObject->GetValue(pShortDescriptionKey, pShortDescriptionVal);
        if(pShortDescriptionVal != null) {
            
            pShortDescription = new String();
            jsonToValue(pShortDescription, pShortDescriptionVal, L"String", L"String");
        }
        delete pShortDescriptionKey;
JsonString* pUserIdKey = new JsonString(L"userId");
        IJsonValue* pUserIdVal = null;
        pJsonObject->GetValue(pUserIdKey, pUserIdVal);
        if(pUserIdVal != null) {
            
            pUserId = new String();
            jsonToValue(pUserId, pUserIdVal, L"String", L"String");
        }
        delete pUserIdKey;
JsonString* pUserNameKey = new JsonString(L"userName");
        IJsonValue* pUserNameVal = null;
        pJsonObject->GetValue(pUserNameKey, pUserNameVal);
        if(pUserNameVal != null) {
            
            pUserName = new String();
            jsonToValue(pUserName, pUserNameVal, L"String", L"String");
        }
        delete pUserNameKey;
    }
}

SamiHudsonmodelCauseUserIdCause::SamiHudsonmodelCauseUserIdCause(String* json) {
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
SamiHudsonmodelCauseUserIdCause::asJson ()
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
SamiHudsonmodelCauseUserIdCause::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pShortDescriptionKey = new JsonString(L"shortDescription");
    pJsonObject->Add(pShortDescriptionKey, toJson(getPShortDescription(), "String", ""));

    JsonString *pUserIdKey = new JsonString(L"userId");
    pJsonObject->Add(pUserIdKey, toJson(getPUserId(), "String", ""));

    JsonString *pUserNameKey = new JsonString(L"userName");
    pJsonObject->Add(pUserNameKey, toJson(getPUserName(), "String", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelCauseUserIdCause::getPClass() {
    return p_class;
}
void
SamiHudsonmodelCauseUserIdCause::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiHudsonmodelCauseUserIdCause::getPShortDescription() {
    return pShortDescription;
}
void
SamiHudsonmodelCauseUserIdCause::setPShortDescription(String* pShortDescription) {
    this->pShortDescription = pShortDescription;
}

String*
SamiHudsonmodelCauseUserIdCause::getPUserId() {
    return pUserId;
}
void
SamiHudsonmodelCauseUserIdCause::setPUserId(String* pUserId) {
    this->pUserId = pUserId;
}

String*
SamiHudsonmodelCauseUserIdCause::getPUserName() {
    return pUserName;
}
void
SamiHudsonmodelCauseUserIdCause::setPUserName(String* pUserName) {
    this->pUserName = pUserName;
}



} /* namespace Swagger */

