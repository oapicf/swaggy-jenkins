
#include "SamiHudsonmodelQueueLeftItem.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelQueueLeftItem::SamiHudsonmodelQueueLeftItem() {
    init();
}

SamiHudsonmodelQueueLeftItem::~SamiHudsonmodelQueueLeftItem() {
    this->cleanup();
}

void
SamiHudsonmodelQueueLeftItem::init() {
    p_class = null;
pActions = null;
pBlocked = null;
pBuildable = null;
pId = null;
pInQueueSince = null;
pParams = null;
pStuck = null;
pTask = null;
pUrl = null;
pWhy = null;
pCancelled = null;
pExecutable = null;
}

void
SamiHudsonmodelQueueLeftItem::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pActions != null) {
        pActions->RemoveAll(true);
        delete pActions;
        pActions = null;
    }
if(pBlocked != null) {
        
        delete pBlocked;
        pBlocked = null;
    }
if(pBuildable != null) {
        
        delete pBuildable;
        pBuildable = null;
    }
if(pId != null) {
        
        delete pId;
        pId = null;
    }
if(pInQueueSince != null) {
        
        delete pInQueueSince;
        pInQueueSince = null;
    }
if(pParams != null) {
        
        delete pParams;
        pParams = null;
    }
if(pStuck != null) {
        
        delete pStuck;
        pStuck = null;
    }
if(pTask != null) {
        
        delete pTask;
        pTask = null;
    }
if(pUrl != null) {
        
        delete pUrl;
        pUrl = null;
    }
if(pWhy != null) {
        
        delete pWhy;
        pWhy = null;
    }
if(pCancelled != null) {
        
        delete pCancelled;
        pCancelled = null;
    }
if(pExecutable != null) {
        
        delete pExecutable;
        pExecutable = null;
    }
}


SamiHudsonmodelQueueLeftItem*
SamiHudsonmodelQueueLeftItem::fromJson(String* json) {
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
SamiHudsonmodelQueueLeftItem::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pActionsKey = new JsonString(L"actions");
        IJsonValue* pActionsVal = null;
        pJsonObject->GetValue(pActionsKey, pActionsVal);
        if(pActionsVal != null) {
            pActions = new ArrayList();
            
            jsonToValue(pActions, pActionsVal, L"IList", L"SamiHudsonmodelCauseAction");
        }
        delete pActionsKey;
JsonString* pBlockedKey = new JsonString(L"blocked");
        IJsonValue* pBlockedVal = null;
        pJsonObject->GetValue(pBlockedKey, pBlockedVal);
        if(pBlockedVal != null) {
            
            pBlocked = new Boolean(false);
            jsonToValue(pBlocked, pBlockedVal, L"Boolean", L"Boolean");
        }
        delete pBlockedKey;
JsonString* pBuildableKey = new JsonString(L"buildable");
        IJsonValue* pBuildableVal = null;
        pJsonObject->GetValue(pBuildableKey, pBuildableVal);
        if(pBuildableVal != null) {
            
            pBuildable = new Boolean(false);
            jsonToValue(pBuildable, pBuildableVal, L"Boolean", L"Boolean");
        }
        delete pBuildableKey;
JsonString* pIdKey = new JsonString(L"id");
        IJsonValue* pIdVal = null;
        pJsonObject->GetValue(pIdKey, pIdVal);
        if(pIdVal != null) {
            
            pId = null;
            jsonToValue(pId, pIdVal, L"Integer", L"Integer");
        }
        delete pIdKey;
JsonString* pInQueueSinceKey = new JsonString(L"inQueueSince");
        IJsonValue* pInQueueSinceVal = null;
        pJsonObject->GetValue(pInQueueSinceKey, pInQueueSinceVal);
        if(pInQueueSinceVal != null) {
            
            pInQueueSince = null;
            jsonToValue(pInQueueSince, pInQueueSinceVal, L"Integer", L"Integer");
        }
        delete pInQueueSinceKey;
JsonString* pParamsKey = new JsonString(L"params");
        IJsonValue* pParamsVal = null;
        pJsonObject->GetValue(pParamsKey, pParamsVal);
        if(pParamsVal != null) {
            
            pParams = new String();
            jsonToValue(pParams, pParamsVal, L"String", L"String");
        }
        delete pParamsKey;
JsonString* pStuckKey = new JsonString(L"stuck");
        IJsonValue* pStuckVal = null;
        pJsonObject->GetValue(pStuckKey, pStuckVal);
        if(pStuckVal != null) {
            
            pStuck = new Boolean(false);
            jsonToValue(pStuck, pStuckVal, L"Boolean", L"Boolean");
        }
        delete pStuckKey;
JsonString* pTaskKey = new JsonString(L"task");
        IJsonValue* pTaskVal = null;
        pJsonObject->GetValue(pTaskKey, pTaskVal);
        if(pTaskVal != null) {
            
            pTask = new SamiHudsonmodelFreeStyleProject();
            jsonToValue(pTask, pTaskVal, L"SamiHudsonmodelFreeStyleProject", L"SamiHudsonmodelFreeStyleProject");
        }
        delete pTaskKey;
JsonString* pUrlKey = new JsonString(L"url");
        IJsonValue* pUrlVal = null;
        pJsonObject->GetValue(pUrlKey, pUrlVal);
        if(pUrlVal != null) {
            
            pUrl = new String();
            jsonToValue(pUrl, pUrlVal, L"String", L"String");
        }
        delete pUrlKey;
JsonString* pWhyKey = new JsonString(L"why");
        IJsonValue* pWhyVal = null;
        pJsonObject->GetValue(pWhyKey, pWhyVal);
        if(pWhyVal != null) {
            
            pWhy = new String();
            jsonToValue(pWhy, pWhyVal, L"String", L"String");
        }
        delete pWhyKey;
JsonString* pCancelledKey = new JsonString(L"cancelled");
        IJsonValue* pCancelledVal = null;
        pJsonObject->GetValue(pCancelledKey, pCancelledVal);
        if(pCancelledVal != null) {
            
            pCancelled = new Boolean(false);
            jsonToValue(pCancelled, pCancelledVal, L"Boolean", L"Boolean");
        }
        delete pCancelledKey;
JsonString* pExecutableKey = new JsonString(L"executable");
        IJsonValue* pExecutableVal = null;
        pJsonObject->GetValue(pExecutableKey, pExecutableVal);
        if(pExecutableVal != null) {
            
            pExecutable = new SamiHudsonmodelFreeStyleBuild();
            jsonToValue(pExecutable, pExecutableVal, L"SamiHudsonmodelFreeStyleBuild", L"SamiHudsonmodelFreeStyleBuild");
        }
        delete pExecutableKey;
    }
}

SamiHudsonmodelQueueLeftItem::SamiHudsonmodelQueueLeftItem(String* json) {
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
SamiHudsonmodelQueueLeftItem::asJson ()
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
SamiHudsonmodelQueueLeftItem::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pActionsKey = new JsonString(L"actions");
    pJsonObject->Add(pActionsKey, toJson(getPActions(), "SamiHudsonmodelCauseAction", "array"));

    JsonString *pBlockedKey = new JsonString(L"blocked");
    pJsonObject->Add(pBlockedKey, toJson(getPBlocked(), "Boolean", ""));

    JsonString *pBuildableKey = new JsonString(L"buildable");
    pJsonObject->Add(pBuildableKey, toJson(getPBuildable(), "Boolean", ""));

    JsonString *pIdKey = new JsonString(L"id");
    pJsonObject->Add(pIdKey, toJson(getPId(), "Integer", ""));

    JsonString *pInQueueSinceKey = new JsonString(L"inQueueSince");
    pJsonObject->Add(pInQueueSinceKey, toJson(getPInQueueSince(), "Integer", ""));

    JsonString *pParamsKey = new JsonString(L"params");
    pJsonObject->Add(pParamsKey, toJson(getPParams(), "String", ""));

    JsonString *pStuckKey = new JsonString(L"stuck");
    pJsonObject->Add(pStuckKey, toJson(getPStuck(), "Boolean", ""));

    JsonString *pTaskKey = new JsonString(L"task");
    pJsonObject->Add(pTaskKey, toJson(getPTask(), "SamiHudsonmodelFreeStyleProject", ""));

    JsonString *pUrlKey = new JsonString(L"url");
    pJsonObject->Add(pUrlKey, toJson(getPUrl(), "String", ""));

    JsonString *pWhyKey = new JsonString(L"why");
    pJsonObject->Add(pWhyKey, toJson(getPWhy(), "String", ""));

    JsonString *pCancelledKey = new JsonString(L"cancelled");
    pJsonObject->Add(pCancelledKey, toJson(getPCancelled(), "Boolean", ""));

    JsonString *pExecutableKey = new JsonString(L"executable");
    pJsonObject->Add(pExecutableKey, toJson(getPExecutable(), "SamiHudsonmodelFreeStyleBuild", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelQueueLeftItem::getPClass() {
    return p_class;
}
void
SamiHudsonmodelQueueLeftItem::setPClass(String* p_class) {
    this->p_class = p_class;
}

IList*
SamiHudsonmodelQueueLeftItem::getPActions() {
    return pActions;
}
void
SamiHudsonmodelQueueLeftItem::setPActions(IList* pActions) {
    this->pActions = pActions;
}

Boolean*
SamiHudsonmodelQueueLeftItem::getPBlocked() {
    return pBlocked;
}
void
SamiHudsonmodelQueueLeftItem::setPBlocked(Boolean* pBlocked) {
    this->pBlocked = pBlocked;
}

Boolean*
SamiHudsonmodelQueueLeftItem::getPBuildable() {
    return pBuildable;
}
void
SamiHudsonmodelQueueLeftItem::setPBuildable(Boolean* pBuildable) {
    this->pBuildable = pBuildable;
}

Integer*
SamiHudsonmodelQueueLeftItem::getPId() {
    return pId;
}
void
SamiHudsonmodelQueueLeftItem::setPId(Integer* pId) {
    this->pId = pId;
}

Integer*
SamiHudsonmodelQueueLeftItem::getPInQueueSince() {
    return pInQueueSince;
}
void
SamiHudsonmodelQueueLeftItem::setPInQueueSince(Integer* pInQueueSince) {
    this->pInQueueSince = pInQueueSince;
}

String*
SamiHudsonmodelQueueLeftItem::getPParams() {
    return pParams;
}
void
SamiHudsonmodelQueueLeftItem::setPParams(String* pParams) {
    this->pParams = pParams;
}

Boolean*
SamiHudsonmodelQueueLeftItem::getPStuck() {
    return pStuck;
}
void
SamiHudsonmodelQueueLeftItem::setPStuck(Boolean* pStuck) {
    this->pStuck = pStuck;
}

SamiHudsonmodelFreeStyleProject*
SamiHudsonmodelQueueLeftItem::getPTask() {
    return pTask;
}
void
SamiHudsonmodelQueueLeftItem::setPTask(SamiHudsonmodelFreeStyleProject* pTask) {
    this->pTask = pTask;
}

String*
SamiHudsonmodelQueueLeftItem::getPUrl() {
    return pUrl;
}
void
SamiHudsonmodelQueueLeftItem::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}

String*
SamiHudsonmodelQueueLeftItem::getPWhy() {
    return pWhy;
}
void
SamiHudsonmodelQueueLeftItem::setPWhy(String* pWhy) {
    this->pWhy = pWhy;
}

Boolean*
SamiHudsonmodelQueueLeftItem::getPCancelled() {
    return pCancelled;
}
void
SamiHudsonmodelQueueLeftItem::setPCancelled(Boolean* pCancelled) {
    this->pCancelled = pCancelled;
}

SamiHudsonmodelFreeStyleBuild*
SamiHudsonmodelQueueLeftItem::getPExecutable() {
    return pExecutable;
}
void
SamiHudsonmodelQueueLeftItem::setPExecutable(SamiHudsonmodelFreeStyleBuild* pExecutable) {
    this->pExecutable = pExecutable;
}



} /* namespace Swagger */

