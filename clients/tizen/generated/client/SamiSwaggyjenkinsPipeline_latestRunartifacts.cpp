
#include "SamiSwaggyjenkinsPipeline_latestRunartifacts.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiSwaggyjenkinsPipeline_latestRunartifacts::SamiSwaggyjenkinsPipeline_latestRunartifacts() {
    init();
}

SamiSwaggyjenkinsPipeline_latestRunartifacts::~SamiSwaggyjenkinsPipeline_latestRunartifacts() {
    this->cleanup();
}

void
SamiSwaggyjenkinsPipeline_latestRunartifacts::init() {
    pName = null;
pSize = null;
pUrl = null;
p_class = null;
}

void
SamiSwaggyjenkinsPipeline_latestRunartifacts::cleanup() {
    if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pSize != null) {
        
        delete pSize;
        pSize = null;
    }
if(pUrl != null) {
        
        delete pUrl;
        pUrl = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiSwaggyjenkinsPipeline_latestRunartifacts*
SamiSwaggyjenkinsPipeline_latestRunartifacts::fromJson(String* json) {
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
SamiSwaggyjenkinsPipeline_latestRunartifacts::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pNameKey = new JsonString(L"name");
        IJsonValue* pNameVal = null;
        pJsonObject->GetValue(pNameKey, pNameVal);
        if(pNameVal != null) {
            
            pName = new String();
            jsonToValue(pName, pNameVal, L"String", L"String");
        }
        delete pNameKey;
JsonString* pSizeKey = new JsonString(L"size");
        IJsonValue* pSizeVal = null;
        pJsonObject->GetValue(pSizeKey, pSizeVal);
        if(pSizeVal != null) {
            
            pSize = null;
            jsonToValue(pSize, pSizeVal, L"Integer", L"Integer");
        }
        delete pSizeKey;
JsonString* pUrlKey = new JsonString(L"url");
        IJsonValue* pUrlVal = null;
        pJsonObject->GetValue(pUrlKey, pUrlVal);
        if(pUrlVal != null) {
            
            pUrl = new String();
            jsonToValue(pUrl, pUrlVal, L"String", L"String");
        }
        delete pUrlKey;
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

SamiSwaggyjenkinsPipeline_latestRunartifacts::SamiSwaggyjenkinsPipeline_latestRunartifacts(String* json) {
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
SamiSwaggyjenkinsPipeline_latestRunartifacts::asJson ()
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
SamiSwaggyjenkinsPipeline_latestRunartifacts::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pSizeKey = new JsonString(L"size");
    pJsonObject->Add(pSizeKey, toJson(getPSize(), "Integer", ""));

    JsonString *pUrlKey = new JsonString(L"url");
    pJsonObject->Add(pUrlKey, toJson(getPUrl(), "String", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

String*
SamiSwaggyjenkinsPipeline_latestRunartifacts::getPName() {
    return pName;
}
void
SamiSwaggyjenkinsPipeline_latestRunartifacts::setPName(String* pName) {
    this->pName = pName;
}

Integer*
SamiSwaggyjenkinsPipeline_latestRunartifacts::getPSize() {
    return pSize;
}
void
SamiSwaggyjenkinsPipeline_latestRunartifacts::setPSize(Integer* pSize) {
    this->pSize = pSize;
}

String*
SamiSwaggyjenkinsPipeline_latestRunartifacts::getPUrl() {
    return pUrl;
}
void
SamiSwaggyjenkinsPipeline_latestRunartifacts::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}

String*
SamiSwaggyjenkinsPipeline_latestRunartifacts::getPClass() {
    return p_class;
}
void
SamiSwaggyjenkinsPipeline_latestRunartifacts::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

