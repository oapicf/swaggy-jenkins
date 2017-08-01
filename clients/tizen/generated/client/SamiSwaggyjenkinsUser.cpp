
#include "SamiSwaggyjenkinsUser.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiSwaggyjenkinsUser::SamiSwaggyjenkinsUser() {
    init();
}

SamiSwaggyjenkinsUser::~SamiSwaggyjenkinsUser() {
    this->cleanup();
}

void
SamiSwaggyjenkinsUser::init() {
    p_class = null;
pId = null;
pFullName = null;
pEmail = null;
pName = null;
}

void
SamiSwaggyjenkinsUser::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pId != null) {
        
        delete pId;
        pId = null;
    }
if(pFullName != null) {
        
        delete pFullName;
        pFullName = null;
    }
if(pEmail != null) {
        
        delete pEmail;
        pEmail = null;
    }
if(pName != null) {
        
        delete pName;
        pName = null;
    }
}


SamiSwaggyjenkinsUser*
SamiSwaggyjenkinsUser::fromJson(String* json) {
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
SamiSwaggyjenkinsUser::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pIdKey = new JsonString(L"id");
        IJsonValue* pIdVal = null;
        pJsonObject->GetValue(pIdKey, pIdVal);
        if(pIdVal != null) {
            
            pId = new String();
            jsonToValue(pId, pIdVal, L"String", L"String");
        }
        delete pIdKey;
JsonString* pFullNameKey = new JsonString(L"fullName");
        IJsonValue* pFullNameVal = null;
        pJsonObject->GetValue(pFullNameKey, pFullNameVal);
        if(pFullNameVal != null) {
            
            pFullName = new String();
            jsonToValue(pFullName, pFullNameVal, L"String", L"String");
        }
        delete pFullNameKey;
JsonString* pEmailKey = new JsonString(L"email");
        IJsonValue* pEmailVal = null;
        pJsonObject->GetValue(pEmailKey, pEmailVal);
        if(pEmailVal != null) {
            
            pEmail = new String();
            jsonToValue(pEmail, pEmailVal, L"String", L"String");
        }
        delete pEmailKey;
JsonString* pNameKey = new JsonString(L"name");
        IJsonValue* pNameVal = null;
        pJsonObject->GetValue(pNameKey, pNameVal);
        if(pNameVal != null) {
            
            pName = new String();
            jsonToValue(pName, pNameVal, L"String", L"String");
        }
        delete pNameKey;
    }
}

SamiSwaggyjenkinsUser::SamiSwaggyjenkinsUser(String* json) {
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
SamiSwaggyjenkinsUser::asJson ()
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
SamiSwaggyjenkinsUser::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pIdKey = new JsonString(L"id");
    pJsonObject->Add(pIdKey, toJson(getPId(), "String", ""));

    JsonString *pFullNameKey = new JsonString(L"fullName");
    pJsonObject->Add(pFullNameKey, toJson(getPFullName(), "String", ""));

    JsonString *pEmailKey = new JsonString(L"email");
    pJsonObject->Add(pEmailKey, toJson(getPEmail(), "String", ""));

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    return pJsonObject;
}

String*
SamiSwaggyjenkinsUser::getPClass() {
    return p_class;
}
void
SamiSwaggyjenkinsUser::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiSwaggyjenkinsUser::getPId() {
    return pId;
}
void
SamiSwaggyjenkinsUser::setPId(String* pId) {
    this->pId = pId;
}

String*
SamiSwaggyjenkinsUser::getPFullName() {
    return pFullName;
}
void
SamiSwaggyjenkinsUser::setPFullName(String* pFullName) {
    this->pFullName = pFullName;
}

String*
SamiSwaggyjenkinsUser::getPEmail() {
    return pEmail;
}
void
SamiSwaggyjenkinsUser::setPEmail(String* pEmail) {
    this->pEmail = pEmail;
}

String*
SamiSwaggyjenkinsUser::getPName() {
    return pName;
}
void
SamiSwaggyjenkinsUser::setPName(String* pName) {
    this->pName = pName;
}



} /* namespace Swagger */

