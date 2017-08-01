
#include "SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions() {
    init();
}

SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::~SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions() {
    this->cleanup();
}

void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::init() {
    pCreate = null;
pRead = null;
pStart = null;
pStop = null;
p_class = null;
}

void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::cleanup() {
    if(pCreate != null) {
        
        delete pCreate;
        pCreate = null;
    }
if(pRead != null) {
        
        delete pRead;
        pRead = null;
    }
if(pStart != null) {
        
        delete pStart;
        pStart = null;
    }
if(pStop != null) {
        
        delete pStop;
        pStop = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::fromJson(String* json) {
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
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pCreateKey = new JsonString(L"create");
        IJsonValue* pCreateVal = null;
        pJsonObject->GetValue(pCreateKey, pCreateVal);
        if(pCreateVal != null) {
            
            pCreate = new Boolean(false);
            jsonToValue(pCreate, pCreateVal, L"Boolean", L"Boolean");
        }
        delete pCreateKey;
JsonString* pReadKey = new JsonString(L"read");
        IJsonValue* pReadVal = null;
        pJsonObject->GetValue(pReadKey, pReadVal);
        if(pReadVal != null) {
            
            pRead = new Boolean(false);
            jsonToValue(pRead, pReadVal, L"Boolean", L"Boolean");
        }
        delete pReadKey;
JsonString* pStartKey = new JsonString(L"start");
        IJsonValue* pStartVal = null;
        pJsonObject->GetValue(pStartKey, pStartVal);
        if(pStartVal != null) {
            
            pStart = new Boolean(false);
            jsonToValue(pStart, pStartVal, L"Boolean", L"Boolean");
        }
        delete pStartKey;
JsonString* pStopKey = new JsonString(L"stop");
        IJsonValue* pStopVal = null;
        pJsonObject->GetValue(pStopKey, pStopVal);
        if(pStopVal != null) {
            
            pStop = new Boolean(false);
            jsonToValue(pStop, pStopVal, L"Boolean", L"Boolean");
        }
        delete pStopKey;
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

SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions(String* json) {
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
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::asJson ()
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
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pCreateKey = new JsonString(L"create");
    pJsonObject->Add(pCreateKey, toJson(getPCreate(), "Boolean", ""));

    JsonString *pReadKey = new JsonString(L"read");
    pJsonObject->Add(pReadKey, toJson(getPRead(), "Boolean", ""));

    JsonString *pStartKey = new JsonString(L"start");
    pJsonObject->Add(pStartKey, toJson(getPStart(), "Boolean", ""));

    JsonString *pStopKey = new JsonString(L"stop");
    pJsonObject->Add(pStopKey, toJson(getPStop(), "Boolean", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

Boolean*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::getPCreate() {
    return pCreate;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::setPCreate(Boolean* pCreate) {
    this->pCreate = pCreate;
}

Boolean*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::getPRead() {
    return pRead;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::setPRead(Boolean* pRead) {
    this->pRead = pRead;
}

Boolean*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::getPStart() {
    return pStart;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::setPStart(Boolean* pStart) {
    this->pStart = pStart;
}

Boolean*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::getPStop() {
    return pStop;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::setPStop(Boolean* pStop) {
    this->pStop = pStop;
}

String*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::getPClass() {
    return p_class;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

