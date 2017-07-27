
#include "SamiHudsonmodelQueueBlockedItem.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelQueueBlockedItem::SamiHudsonmodelQueueBlockedItem() {
    init();
}

SamiHudsonmodelQueueBlockedItem::~SamiHudsonmodelQueueBlockedItem() {
    this->cleanup();
}

void
SamiHudsonmodelQueueBlockedItem::init() {
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
pBuildableStartMilliseconds = null;
}

void
SamiHudsonmodelQueueBlockedItem::cleanup() {
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
if(pBuildableStartMilliseconds != null) {
        
        delete pBuildableStartMilliseconds;
        pBuildableStartMilliseconds = null;
    }
}


SamiHudsonmodelQueueBlockedItem*
SamiHudsonmodelQueueBlockedItem::fromJson(String* json) {
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
SamiHudsonmodelQueueBlockedItem::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pBuildableStartMillisecondsKey = new JsonString(L"buildableStartMilliseconds");
        IJsonValue* pBuildableStartMillisecondsVal = null;
        pJsonObject->GetValue(pBuildableStartMillisecondsKey, pBuildableStartMillisecondsVal);
        if(pBuildableStartMillisecondsVal != null) {
            
            pBuildableStartMilliseconds = null;
            jsonToValue(pBuildableStartMilliseconds, pBuildableStartMillisecondsVal, L"Integer", L"Integer");
        }
        delete pBuildableStartMillisecondsKey;
    }
}

SamiHudsonmodelQueueBlockedItem::SamiHudsonmodelQueueBlockedItem(String* json) {
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
SamiHudsonmodelQueueBlockedItem::asJson ()
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
SamiHudsonmodelQueueBlockedItem::asJsonObject() {
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

    JsonString *pBuildableStartMillisecondsKey = new JsonString(L"buildableStartMilliseconds");
    pJsonObject->Add(pBuildableStartMillisecondsKey, toJson(getPBuildableStartMilliseconds(), "Integer", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelQueueBlockedItem::getPClass() {
    return p_class;
}
void
SamiHudsonmodelQueueBlockedItem::setPClass(String* p_class) {
    this->p_class = p_class;
}

IList*
SamiHudsonmodelQueueBlockedItem::getPActions() {
    return pActions;
}
void
SamiHudsonmodelQueueBlockedItem::setPActions(IList* pActions) {
    this->pActions = pActions;
}

Boolean*
SamiHudsonmodelQueueBlockedItem::getPBlocked() {
    return pBlocked;
}
void
SamiHudsonmodelQueueBlockedItem::setPBlocked(Boolean* pBlocked) {
    this->pBlocked = pBlocked;
}

Boolean*
SamiHudsonmodelQueueBlockedItem::getPBuildable() {
    return pBuildable;
}
void
SamiHudsonmodelQueueBlockedItem::setPBuildable(Boolean* pBuildable) {
    this->pBuildable = pBuildable;
}

Integer*
SamiHudsonmodelQueueBlockedItem::getPId() {
    return pId;
}
void
SamiHudsonmodelQueueBlockedItem::setPId(Integer* pId) {
    this->pId = pId;
}

Integer*
SamiHudsonmodelQueueBlockedItem::getPInQueueSince() {
    return pInQueueSince;
}
void
SamiHudsonmodelQueueBlockedItem::setPInQueueSince(Integer* pInQueueSince) {
    this->pInQueueSince = pInQueueSince;
}

String*
SamiHudsonmodelQueueBlockedItem::getPParams() {
    return pParams;
}
void
SamiHudsonmodelQueueBlockedItem::setPParams(String* pParams) {
    this->pParams = pParams;
}

Boolean*
SamiHudsonmodelQueueBlockedItem::getPStuck() {
    return pStuck;
}
void
SamiHudsonmodelQueueBlockedItem::setPStuck(Boolean* pStuck) {
    this->pStuck = pStuck;
}

SamiHudsonmodelFreeStyleProject*
SamiHudsonmodelQueueBlockedItem::getPTask() {
    return pTask;
}
void
SamiHudsonmodelQueueBlockedItem::setPTask(SamiHudsonmodelFreeStyleProject* pTask) {
    this->pTask = pTask;
}

String*
SamiHudsonmodelQueueBlockedItem::getPUrl() {
    return pUrl;
}
void
SamiHudsonmodelQueueBlockedItem::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}

String*
SamiHudsonmodelQueueBlockedItem::getPWhy() {
    return pWhy;
}
void
SamiHudsonmodelQueueBlockedItem::setPWhy(String* pWhy) {
    this->pWhy = pWhy;
}

Integer*
SamiHudsonmodelQueueBlockedItem::getPBuildableStartMilliseconds() {
    return pBuildableStartMilliseconds;
}
void
SamiHudsonmodelQueueBlockedItem::setPBuildableStartMilliseconds(Integer* pBuildableStartMilliseconds) {
    this->pBuildableStartMilliseconds = pBuildableStartMilliseconds;
}



} /* namespace Swagger */

