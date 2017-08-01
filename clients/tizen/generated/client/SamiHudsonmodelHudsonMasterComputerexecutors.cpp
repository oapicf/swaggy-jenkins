
#include "SamiHudsonmodelHudsonMasterComputerexecutors.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelHudsonMasterComputerexecutors::SamiHudsonmodelHudsonMasterComputerexecutors() {
    init();
}

SamiHudsonmodelHudsonMasterComputerexecutors::~SamiHudsonmodelHudsonMasterComputerexecutors() {
    this->cleanup();
}

void
SamiHudsonmodelHudsonMasterComputerexecutors::init() {
    pCurrentExecutable = null;
pIdle = null;
pLikelyStuck = null;
pNumber = null;
pProgress = null;
p_class = null;
}

void
SamiHudsonmodelHudsonMasterComputerexecutors::cleanup() {
    if(pCurrentExecutable != null) {
        
        delete pCurrentExecutable;
        pCurrentExecutable = null;
    }
if(pIdle != null) {
        
        delete pIdle;
        pIdle = null;
    }
if(pLikelyStuck != null) {
        
        delete pLikelyStuck;
        pLikelyStuck = null;
    }
if(pNumber != null) {
        
        delete pNumber;
        pNumber = null;
    }
if(pProgress != null) {
        
        delete pProgress;
        pProgress = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiHudsonmodelHudsonMasterComputerexecutors*
SamiHudsonmodelHudsonMasterComputerexecutors::fromJson(String* json) {
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
SamiHudsonmodelHudsonMasterComputerexecutors::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pCurrentExecutableKey = new JsonString(L"currentExecutable");
        IJsonValue* pCurrentExecutableVal = null;
        pJsonObject->GetValue(pCurrentExecutableKey, pCurrentExecutableVal);
        if(pCurrentExecutableVal != null) {
            
            pCurrentExecutable = new SamiHudsonmodelFreeStyleBuild();
            jsonToValue(pCurrentExecutable, pCurrentExecutableVal, L"SamiHudsonmodelFreeStyleBuild", L"SamiHudsonmodelFreeStyleBuild");
        }
        delete pCurrentExecutableKey;
JsonString* pIdleKey = new JsonString(L"idle");
        IJsonValue* pIdleVal = null;
        pJsonObject->GetValue(pIdleKey, pIdleVal);
        if(pIdleVal != null) {
            
            pIdle = new Boolean(false);
            jsonToValue(pIdle, pIdleVal, L"Boolean", L"Boolean");
        }
        delete pIdleKey;
JsonString* pLikelyStuckKey = new JsonString(L"likelyStuck");
        IJsonValue* pLikelyStuckVal = null;
        pJsonObject->GetValue(pLikelyStuckKey, pLikelyStuckVal);
        if(pLikelyStuckVal != null) {
            
            pLikelyStuck = new Boolean(false);
            jsonToValue(pLikelyStuck, pLikelyStuckVal, L"Boolean", L"Boolean");
        }
        delete pLikelyStuckKey;
JsonString* pNumberKey = new JsonString(L"number");
        IJsonValue* pNumberVal = null;
        pJsonObject->GetValue(pNumberKey, pNumberVal);
        if(pNumberVal != null) {
            
            pNumber = null;
            jsonToValue(pNumber, pNumberVal, L"Integer", L"Integer");
        }
        delete pNumberKey;
JsonString* pProgressKey = new JsonString(L"progress");
        IJsonValue* pProgressVal = null;
        pJsonObject->GetValue(pProgressKey, pProgressVal);
        if(pProgressVal != null) {
            
            pProgress = null;
            jsonToValue(pProgress, pProgressVal, L"Integer", L"Integer");
        }
        delete pProgressKey;
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

SamiHudsonmodelHudsonMasterComputerexecutors::SamiHudsonmodelHudsonMasterComputerexecutors(String* json) {
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
SamiHudsonmodelHudsonMasterComputerexecutors::asJson ()
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
SamiHudsonmodelHudsonMasterComputerexecutors::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pCurrentExecutableKey = new JsonString(L"currentExecutable");
    pJsonObject->Add(pCurrentExecutableKey, toJson(getPCurrentExecutable(), "SamiHudsonmodelFreeStyleBuild", ""));

    JsonString *pIdleKey = new JsonString(L"idle");
    pJsonObject->Add(pIdleKey, toJson(getPIdle(), "Boolean", ""));

    JsonString *pLikelyStuckKey = new JsonString(L"likelyStuck");
    pJsonObject->Add(pLikelyStuckKey, toJson(getPLikelyStuck(), "Boolean", ""));

    JsonString *pNumberKey = new JsonString(L"number");
    pJsonObject->Add(pNumberKey, toJson(getPNumber(), "Integer", ""));

    JsonString *pProgressKey = new JsonString(L"progress");
    pJsonObject->Add(pProgressKey, toJson(getPProgress(), "Integer", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

SamiHudsonmodelFreeStyleBuild*
SamiHudsonmodelHudsonMasterComputerexecutors::getPCurrentExecutable() {
    return pCurrentExecutable;
}
void
SamiHudsonmodelHudsonMasterComputerexecutors::setPCurrentExecutable(SamiHudsonmodelFreeStyleBuild* pCurrentExecutable) {
    this->pCurrentExecutable = pCurrentExecutable;
}

Boolean*
SamiHudsonmodelHudsonMasterComputerexecutors::getPIdle() {
    return pIdle;
}
void
SamiHudsonmodelHudsonMasterComputerexecutors::setPIdle(Boolean* pIdle) {
    this->pIdle = pIdle;
}

Boolean*
SamiHudsonmodelHudsonMasterComputerexecutors::getPLikelyStuck() {
    return pLikelyStuck;
}
void
SamiHudsonmodelHudsonMasterComputerexecutors::setPLikelyStuck(Boolean* pLikelyStuck) {
    this->pLikelyStuck = pLikelyStuck;
}

Integer*
SamiHudsonmodelHudsonMasterComputerexecutors::getPNumber() {
    return pNumber;
}
void
SamiHudsonmodelHudsonMasterComputerexecutors::setPNumber(Integer* pNumber) {
    this->pNumber = pNumber;
}

Integer*
SamiHudsonmodelHudsonMasterComputerexecutors::getPProgress() {
    return pProgress;
}
void
SamiHudsonmodelHudsonMasterComputerexecutors::setPProgress(Integer* pProgress) {
    this->pProgress = pProgress;
}

String*
SamiHudsonmodelHudsonMasterComputerexecutors::getPClass() {
    return p_class;
}
void
SamiHudsonmodelHudsonMasterComputerexecutors::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

