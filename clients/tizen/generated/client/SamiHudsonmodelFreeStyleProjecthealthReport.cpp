
#include "SamiHudsonmodelFreeStyleProjecthealthReport.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelFreeStyleProjecthealthReport::SamiHudsonmodelFreeStyleProjecthealthReport() {
    init();
}

SamiHudsonmodelFreeStyleProjecthealthReport::~SamiHudsonmodelFreeStyleProjecthealthReport() {
    this->cleanup();
}

void
SamiHudsonmodelFreeStyleProjecthealthReport::init() {
    pDescription = null;
pIconClassName = null;
pIconUrl = null;
pScore = null;
p_class = null;
}

void
SamiHudsonmodelFreeStyleProjecthealthReport::cleanup() {
    if(pDescription != null) {
        
        delete pDescription;
        pDescription = null;
    }
if(pIconClassName != null) {
        
        delete pIconClassName;
        pIconClassName = null;
    }
if(pIconUrl != null) {
        
        delete pIconUrl;
        pIconUrl = null;
    }
if(pScore != null) {
        
        delete pScore;
        pScore = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiHudsonmodelFreeStyleProjecthealthReport*
SamiHudsonmodelFreeStyleProjecthealthReport::fromJson(String* json) {
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
SamiHudsonmodelFreeStyleProjecthealthReport::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pDescriptionKey = new JsonString(L"description");
        IJsonValue* pDescriptionVal = null;
        pJsonObject->GetValue(pDescriptionKey, pDescriptionVal);
        if(pDescriptionVal != null) {
            
            pDescription = new String();
            jsonToValue(pDescription, pDescriptionVal, L"String", L"String");
        }
        delete pDescriptionKey;
JsonString* pIconClassNameKey = new JsonString(L"iconClassName");
        IJsonValue* pIconClassNameVal = null;
        pJsonObject->GetValue(pIconClassNameKey, pIconClassNameVal);
        if(pIconClassNameVal != null) {
            
            pIconClassName = new String();
            jsonToValue(pIconClassName, pIconClassNameVal, L"String", L"String");
        }
        delete pIconClassNameKey;
JsonString* pIconUrlKey = new JsonString(L"iconUrl");
        IJsonValue* pIconUrlVal = null;
        pJsonObject->GetValue(pIconUrlKey, pIconUrlVal);
        if(pIconUrlVal != null) {
            
            pIconUrl = new String();
            jsonToValue(pIconUrl, pIconUrlVal, L"String", L"String");
        }
        delete pIconUrlKey;
JsonString* pScoreKey = new JsonString(L"score");
        IJsonValue* pScoreVal = null;
        pJsonObject->GetValue(pScoreKey, pScoreVal);
        if(pScoreVal != null) {
            
            pScore = null;
            jsonToValue(pScore, pScoreVal, L"Integer", L"Integer");
        }
        delete pScoreKey;
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

SamiHudsonmodelFreeStyleProjecthealthReport::SamiHudsonmodelFreeStyleProjecthealthReport(String* json) {
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
SamiHudsonmodelFreeStyleProjecthealthReport::asJson ()
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
SamiHudsonmodelFreeStyleProjecthealthReport::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pDescriptionKey = new JsonString(L"description");
    pJsonObject->Add(pDescriptionKey, toJson(getPDescription(), "String", ""));

    JsonString *pIconClassNameKey = new JsonString(L"iconClassName");
    pJsonObject->Add(pIconClassNameKey, toJson(getPIconClassName(), "String", ""));

    JsonString *pIconUrlKey = new JsonString(L"iconUrl");
    pJsonObject->Add(pIconUrlKey, toJson(getPIconUrl(), "String", ""));

    JsonString *pScoreKey = new JsonString(L"score");
    pJsonObject->Add(pScoreKey, toJson(getPScore(), "Integer", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelFreeStyleProjecthealthReport::getPDescription() {
    return pDescription;
}
void
SamiHudsonmodelFreeStyleProjecthealthReport::setPDescription(String* pDescription) {
    this->pDescription = pDescription;
}

String*
SamiHudsonmodelFreeStyleProjecthealthReport::getPIconClassName() {
    return pIconClassName;
}
void
SamiHudsonmodelFreeStyleProjecthealthReport::setPIconClassName(String* pIconClassName) {
    this->pIconClassName = pIconClassName;
}

String*
SamiHudsonmodelFreeStyleProjecthealthReport::getPIconUrl() {
    return pIconUrl;
}
void
SamiHudsonmodelFreeStyleProjecthealthReport::setPIconUrl(String* pIconUrl) {
    this->pIconUrl = pIconUrl;
}

Integer*
SamiHudsonmodelFreeStyleProjecthealthReport::getPScore() {
    return pScore;
}
void
SamiHudsonmodelFreeStyleProjecthealthReport::setPScore(Integer* pScore) {
    this->pScore = pScore;
}

String*
SamiHudsonmodelFreeStyleProjecthealthReport::getPClass() {
    return p_class;
}
void
SamiHudsonmodelFreeStyleProjecthealthReport::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

