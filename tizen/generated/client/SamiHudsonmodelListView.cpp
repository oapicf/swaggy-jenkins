
#include "SamiHudsonmodelListView.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelListView::SamiHudsonmodelListView() {
    init();
}

SamiHudsonmodelListView::~SamiHudsonmodelListView() {
    this->cleanup();
}

void
SamiHudsonmodelListView::init() {
    p_class = null;
pDescription = null;
pJobs = null;
pName = null;
pUrl = null;
}

void
SamiHudsonmodelListView::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pDescription != null) {
        
        delete pDescription;
        pDescription = null;
    }
if(pJobs != null) {
        pJobs->RemoveAll(true);
        delete pJobs;
        pJobs = null;
    }
if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pUrl != null) {
        
        delete pUrl;
        pUrl = null;
    }
}


SamiHudsonmodelListView*
SamiHudsonmodelListView::fromJson(String* json) {
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
SamiHudsonmodelListView::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pDescriptionKey = new JsonString(L"description");
        IJsonValue* pDescriptionVal = null;
        pJsonObject->GetValue(pDescriptionKey, pDescriptionVal);
        if(pDescriptionVal != null) {
            
            pDescription = new String();
            jsonToValue(pDescription, pDescriptionVal, L"String", L"String");
        }
        delete pDescriptionKey;
JsonString* pJobsKey = new JsonString(L"jobs");
        IJsonValue* pJobsVal = null;
        pJsonObject->GetValue(pJobsKey, pJobsVal);
        if(pJobsVal != null) {
            pJobs = new ArrayList();
            
            jsonToValue(pJobs, pJobsVal, L"IList", L"SamiHudsonmodelFreeStyleProject");
        }
        delete pJobsKey;
JsonString* pNameKey = new JsonString(L"name");
        IJsonValue* pNameVal = null;
        pJsonObject->GetValue(pNameKey, pNameVal);
        if(pNameVal != null) {
            
            pName = new String();
            jsonToValue(pName, pNameVal, L"String", L"String");
        }
        delete pNameKey;
JsonString* pUrlKey = new JsonString(L"url");
        IJsonValue* pUrlVal = null;
        pJsonObject->GetValue(pUrlKey, pUrlVal);
        if(pUrlVal != null) {
            
            pUrl = new String();
            jsonToValue(pUrl, pUrlVal, L"String", L"String");
        }
        delete pUrlKey;
    }
}

SamiHudsonmodelListView::SamiHudsonmodelListView(String* json) {
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
SamiHudsonmodelListView::asJson ()
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
SamiHudsonmodelListView::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pDescriptionKey = new JsonString(L"description");
    pJsonObject->Add(pDescriptionKey, toJson(getPDescription(), "String", ""));

    JsonString *pJobsKey = new JsonString(L"jobs");
    pJsonObject->Add(pJobsKey, toJson(getPJobs(), "SamiHudsonmodelFreeStyleProject", "array"));

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pUrlKey = new JsonString(L"url");
    pJsonObject->Add(pUrlKey, toJson(getPUrl(), "String", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelListView::getPClass() {
    return p_class;
}
void
SamiHudsonmodelListView::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiHudsonmodelListView::getPDescription() {
    return pDescription;
}
void
SamiHudsonmodelListView::setPDescription(String* pDescription) {
    this->pDescription = pDescription;
}

IList*
SamiHudsonmodelListView::getPJobs() {
    return pJobs;
}
void
SamiHudsonmodelListView::setPJobs(IList* pJobs) {
    this->pJobs = pJobs;
}

String*
SamiHudsonmodelListView::getPName() {
    return pName;
}
void
SamiHudsonmodelListView::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiHudsonmodelListView::getPUrl() {
    return pUrl;
}
void
SamiHudsonmodelListView::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}



} /* namespace Swagger */

