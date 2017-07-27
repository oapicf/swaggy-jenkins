
#include "SamiHudsonsecuritycsrfDefaultCrumbIssuer.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonsecuritycsrfDefaultCrumbIssuer::SamiHudsonsecuritycsrfDefaultCrumbIssuer() {
    init();
}

SamiHudsonsecuritycsrfDefaultCrumbIssuer::~SamiHudsonsecuritycsrfDefaultCrumbIssuer() {
    this->cleanup();
}

void
SamiHudsonsecuritycsrfDefaultCrumbIssuer::init() {
    p_class = null;
pCrumb = null;
pCrumbRequestField = null;
}

void
SamiHudsonsecuritycsrfDefaultCrumbIssuer::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pCrumb != null) {
        
        delete pCrumb;
        pCrumb = null;
    }
if(pCrumbRequestField != null) {
        
        delete pCrumbRequestField;
        pCrumbRequestField = null;
    }
}


SamiHudsonsecuritycsrfDefaultCrumbIssuer*
SamiHudsonsecuritycsrfDefaultCrumbIssuer::fromJson(String* json) {
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
SamiHudsonsecuritycsrfDefaultCrumbIssuer::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pCrumbKey = new JsonString(L"crumb");
        IJsonValue* pCrumbVal = null;
        pJsonObject->GetValue(pCrumbKey, pCrumbVal);
        if(pCrumbVal != null) {
            
            pCrumb = new String();
            jsonToValue(pCrumb, pCrumbVal, L"String", L"String");
        }
        delete pCrumbKey;
JsonString* pCrumbRequestFieldKey = new JsonString(L"crumbRequestField");
        IJsonValue* pCrumbRequestFieldVal = null;
        pJsonObject->GetValue(pCrumbRequestFieldKey, pCrumbRequestFieldVal);
        if(pCrumbRequestFieldVal != null) {
            
            pCrumbRequestField = new String();
            jsonToValue(pCrumbRequestField, pCrumbRequestFieldVal, L"String", L"String");
        }
        delete pCrumbRequestFieldKey;
    }
}

SamiHudsonsecuritycsrfDefaultCrumbIssuer::SamiHudsonsecuritycsrfDefaultCrumbIssuer(String* json) {
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
SamiHudsonsecuritycsrfDefaultCrumbIssuer::asJson ()
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
SamiHudsonsecuritycsrfDefaultCrumbIssuer::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pCrumbKey = new JsonString(L"crumb");
    pJsonObject->Add(pCrumbKey, toJson(getPCrumb(), "String", ""));

    JsonString *pCrumbRequestFieldKey = new JsonString(L"crumbRequestField");
    pJsonObject->Add(pCrumbRequestFieldKey, toJson(getPCrumbRequestField(), "String", ""));

    return pJsonObject;
}

String*
SamiHudsonsecuritycsrfDefaultCrumbIssuer::getPClass() {
    return p_class;
}
void
SamiHudsonsecuritycsrfDefaultCrumbIssuer::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiHudsonsecuritycsrfDefaultCrumbIssuer::getPCrumb() {
    return pCrumb;
}
void
SamiHudsonsecuritycsrfDefaultCrumbIssuer::setPCrumb(String* pCrumb) {
    this->pCrumb = pCrumb;
}

String*
SamiHudsonsecuritycsrfDefaultCrumbIssuer::getPCrumbRequestField() {
    return pCrumbRequestField;
}
void
SamiHudsonsecuritycsrfDefaultCrumbIssuer::setPCrumbRequestField(String* pCrumbRequestField) {
    this->pCrumbRequestField = pCrumbRequestField;
}



} /* namespace Swagger */

