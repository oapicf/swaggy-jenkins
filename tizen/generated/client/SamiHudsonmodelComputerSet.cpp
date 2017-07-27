
#include "SamiHudsonmodelComputerSet.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelComputerSet::SamiHudsonmodelComputerSet() {
    init();
}

SamiHudsonmodelComputerSet::~SamiHudsonmodelComputerSet() {
    this->cleanup();
}

void
SamiHudsonmodelComputerSet::init() {
    p_class = null;
pBusyExecutors = null;
pComputer = null;
pDisplayName = null;
pTotalExecutors = null;
}

void
SamiHudsonmodelComputerSet::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pBusyExecutors != null) {
        
        delete pBusyExecutors;
        pBusyExecutors = null;
    }
if(pComputer != null) {
        pComputer->RemoveAll(true);
        delete pComputer;
        pComputer = null;
    }
if(pDisplayName != null) {
        
        delete pDisplayName;
        pDisplayName = null;
    }
if(pTotalExecutors != null) {
        
        delete pTotalExecutors;
        pTotalExecutors = null;
    }
}


SamiHudsonmodelComputerSet*
SamiHudsonmodelComputerSet::fromJson(String* json) {
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
SamiHudsonmodelComputerSet::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pBusyExecutorsKey = new JsonString(L"busyExecutors");
        IJsonValue* pBusyExecutorsVal = null;
        pJsonObject->GetValue(pBusyExecutorsKey, pBusyExecutorsVal);
        if(pBusyExecutorsVal != null) {
            
            pBusyExecutors = null;
            jsonToValue(pBusyExecutors, pBusyExecutorsVal, L"Integer", L"Integer");
        }
        delete pBusyExecutorsKey;
JsonString* pComputerKey = new JsonString(L"computer");
        IJsonValue* pComputerVal = null;
        pJsonObject->GetValue(pComputerKey, pComputerVal);
        if(pComputerVal != null) {
            pComputer = new ArrayList();
            
            jsonToValue(pComputer, pComputerVal, L"IList", L"SamiHudsonmodelHudsonMasterComputer");
        }
        delete pComputerKey;
JsonString* pDisplayNameKey = new JsonString(L"displayName");
        IJsonValue* pDisplayNameVal = null;
        pJsonObject->GetValue(pDisplayNameKey, pDisplayNameVal);
        if(pDisplayNameVal != null) {
            
            pDisplayName = new String();
            jsonToValue(pDisplayName, pDisplayNameVal, L"String", L"String");
        }
        delete pDisplayNameKey;
JsonString* pTotalExecutorsKey = new JsonString(L"totalExecutors");
        IJsonValue* pTotalExecutorsVal = null;
        pJsonObject->GetValue(pTotalExecutorsKey, pTotalExecutorsVal);
        if(pTotalExecutorsVal != null) {
            
            pTotalExecutors = null;
            jsonToValue(pTotalExecutors, pTotalExecutorsVal, L"Integer", L"Integer");
        }
        delete pTotalExecutorsKey;
    }
}

SamiHudsonmodelComputerSet::SamiHudsonmodelComputerSet(String* json) {
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
SamiHudsonmodelComputerSet::asJson ()
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
SamiHudsonmodelComputerSet::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pBusyExecutorsKey = new JsonString(L"busyExecutors");
    pJsonObject->Add(pBusyExecutorsKey, toJson(getPBusyExecutors(), "Integer", ""));

    JsonString *pComputerKey = new JsonString(L"computer");
    pJsonObject->Add(pComputerKey, toJson(getPComputer(), "SamiHudsonmodelHudsonMasterComputer", "array"));

    JsonString *pDisplayNameKey = new JsonString(L"displayName");
    pJsonObject->Add(pDisplayNameKey, toJson(getPDisplayName(), "String", ""));

    JsonString *pTotalExecutorsKey = new JsonString(L"totalExecutors");
    pJsonObject->Add(pTotalExecutorsKey, toJson(getPTotalExecutors(), "Integer", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelComputerSet::getPClass() {
    return p_class;
}
void
SamiHudsonmodelComputerSet::setPClass(String* p_class) {
    this->p_class = p_class;
}

Integer*
SamiHudsonmodelComputerSet::getPBusyExecutors() {
    return pBusyExecutors;
}
void
SamiHudsonmodelComputerSet::setPBusyExecutors(Integer* pBusyExecutors) {
    this->pBusyExecutors = pBusyExecutors;
}

IList*
SamiHudsonmodelComputerSet::getPComputer() {
    return pComputer;
}
void
SamiHudsonmodelComputerSet::setPComputer(IList* pComputer) {
    this->pComputer = pComputer;
}

String*
SamiHudsonmodelComputerSet::getPDisplayName() {
    return pDisplayName;
}
void
SamiHudsonmodelComputerSet::setPDisplayName(String* pDisplayName) {
    this->pDisplayName = pDisplayName;
}

Integer*
SamiHudsonmodelComputerSet::getPTotalExecutors() {
    return pTotalExecutors;
}
void
SamiHudsonmodelComputerSet::setPTotalExecutors(Integer* pTotalExecutors) {
    this->pTotalExecutors = pTotalExecutors;
}



} /* namespace Swagger */

