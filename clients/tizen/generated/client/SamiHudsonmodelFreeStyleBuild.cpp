
#include "SamiHudsonmodelFreeStyleBuild.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelFreeStyleBuild::SamiHudsonmodelFreeStyleBuild() {
    init();
}

SamiHudsonmodelFreeStyleBuild::~SamiHudsonmodelFreeStyleBuild() {
    this->cleanup();
}

void
SamiHudsonmodelFreeStyleBuild::init() {
    p_class = null;
pNumber = null;
pUrl = null;
pActions = null;
pBuilding = null;
pDescription = null;
pDisplayName = null;
pDuration = null;
pEstimatedDuration = null;
pExecutor = null;
pFullDisplayName = null;
pId = null;
pKeepLog = null;
pQueueId = null;
pResult = null;
pTimestamp = null;
pBuiltOn = null;
pChangeSet = null;
}

void
SamiHudsonmodelFreeStyleBuild::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pNumber != null) {
        
        delete pNumber;
        pNumber = null;
    }
if(pUrl != null) {
        
        delete pUrl;
        pUrl = null;
    }
if(pActions != null) {
        pActions->RemoveAll(true);
        delete pActions;
        pActions = null;
    }
if(pBuilding != null) {
        
        delete pBuilding;
        pBuilding = null;
    }
if(pDescription != null) {
        
        delete pDescription;
        pDescription = null;
    }
if(pDisplayName != null) {
        
        delete pDisplayName;
        pDisplayName = null;
    }
if(pDuration != null) {
        
        delete pDuration;
        pDuration = null;
    }
if(pEstimatedDuration != null) {
        
        delete pEstimatedDuration;
        pEstimatedDuration = null;
    }
if(pExecutor != null) {
        
        delete pExecutor;
        pExecutor = null;
    }
if(pFullDisplayName != null) {
        
        delete pFullDisplayName;
        pFullDisplayName = null;
    }
if(pId != null) {
        
        delete pId;
        pId = null;
    }
if(pKeepLog != null) {
        
        delete pKeepLog;
        pKeepLog = null;
    }
if(pQueueId != null) {
        
        delete pQueueId;
        pQueueId = null;
    }
if(pResult != null) {
        
        delete pResult;
        pResult = null;
    }
if(pTimestamp != null) {
        
        delete pTimestamp;
        pTimestamp = null;
    }
if(pBuiltOn != null) {
        
        delete pBuiltOn;
        pBuiltOn = null;
    }
if(pChangeSet != null) {
        
        delete pChangeSet;
        pChangeSet = null;
    }
}


SamiHudsonmodelFreeStyleBuild*
SamiHudsonmodelFreeStyleBuild::fromJson(String* json) {
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
SamiHudsonmodelFreeStyleBuild::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pNumberKey = new JsonString(L"number");
        IJsonValue* pNumberVal = null;
        pJsonObject->GetValue(pNumberKey, pNumberVal);
        if(pNumberVal != null) {
            
            pNumber = null;
            jsonToValue(pNumber, pNumberVal, L"Integer", L"Integer");
        }
        delete pNumberKey;
JsonString* pUrlKey = new JsonString(L"url");
        IJsonValue* pUrlVal = null;
        pJsonObject->GetValue(pUrlKey, pUrlVal);
        if(pUrlVal != null) {
            
            pUrl = new String();
            jsonToValue(pUrl, pUrlVal, L"String", L"String");
        }
        delete pUrlKey;
JsonString* pActionsKey = new JsonString(L"actions");
        IJsonValue* pActionsVal = null;
        pJsonObject->GetValue(pActionsKey, pActionsVal);
        if(pActionsVal != null) {
            pActions = new ArrayList();
            
            jsonToValue(pActions, pActionsVal, L"IList", L"SamiHudsonmodelCauseAction");
        }
        delete pActionsKey;
JsonString* pBuildingKey = new JsonString(L"building");
        IJsonValue* pBuildingVal = null;
        pJsonObject->GetValue(pBuildingKey, pBuildingVal);
        if(pBuildingVal != null) {
            
            pBuilding = new Boolean(false);
            jsonToValue(pBuilding, pBuildingVal, L"Boolean", L"Boolean");
        }
        delete pBuildingKey;
JsonString* pDescriptionKey = new JsonString(L"description");
        IJsonValue* pDescriptionVal = null;
        pJsonObject->GetValue(pDescriptionKey, pDescriptionVal);
        if(pDescriptionVal != null) {
            
            pDescription = new String();
            jsonToValue(pDescription, pDescriptionVal, L"String", L"String");
        }
        delete pDescriptionKey;
JsonString* pDisplayNameKey = new JsonString(L"displayName");
        IJsonValue* pDisplayNameVal = null;
        pJsonObject->GetValue(pDisplayNameKey, pDisplayNameVal);
        if(pDisplayNameVal != null) {
            
            pDisplayName = new String();
            jsonToValue(pDisplayName, pDisplayNameVal, L"String", L"String");
        }
        delete pDisplayNameKey;
JsonString* pDurationKey = new JsonString(L"duration");
        IJsonValue* pDurationVal = null;
        pJsonObject->GetValue(pDurationKey, pDurationVal);
        if(pDurationVal != null) {
            
            pDuration = null;
            jsonToValue(pDuration, pDurationVal, L"Integer", L"Integer");
        }
        delete pDurationKey;
JsonString* pEstimatedDurationKey = new JsonString(L"estimatedDuration");
        IJsonValue* pEstimatedDurationVal = null;
        pJsonObject->GetValue(pEstimatedDurationKey, pEstimatedDurationVal);
        if(pEstimatedDurationVal != null) {
            
            pEstimatedDuration = null;
            jsonToValue(pEstimatedDuration, pEstimatedDurationVal, L"Integer", L"Integer");
        }
        delete pEstimatedDurationKey;
JsonString* pExecutorKey = new JsonString(L"executor");
        IJsonValue* pExecutorVal = null;
        pJsonObject->GetValue(pExecutorKey, pExecutorVal);
        if(pExecutorVal != null) {
            
            pExecutor = new String();
            jsonToValue(pExecutor, pExecutorVal, L"String", L"String");
        }
        delete pExecutorKey;
JsonString* pFullDisplayNameKey = new JsonString(L"fullDisplayName");
        IJsonValue* pFullDisplayNameVal = null;
        pJsonObject->GetValue(pFullDisplayNameKey, pFullDisplayNameVal);
        if(pFullDisplayNameVal != null) {
            
            pFullDisplayName = new String();
            jsonToValue(pFullDisplayName, pFullDisplayNameVal, L"String", L"String");
        }
        delete pFullDisplayNameKey;
JsonString* pIdKey = new JsonString(L"id");
        IJsonValue* pIdVal = null;
        pJsonObject->GetValue(pIdKey, pIdVal);
        if(pIdVal != null) {
            
            pId = new String();
            jsonToValue(pId, pIdVal, L"String", L"String");
        }
        delete pIdKey;
JsonString* pKeepLogKey = new JsonString(L"keepLog");
        IJsonValue* pKeepLogVal = null;
        pJsonObject->GetValue(pKeepLogKey, pKeepLogVal);
        if(pKeepLogVal != null) {
            
            pKeepLog = new Boolean(false);
            jsonToValue(pKeepLog, pKeepLogVal, L"Boolean", L"Boolean");
        }
        delete pKeepLogKey;
JsonString* pQueueIdKey = new JsonString(L"queueId");
        IJsonValue* pQueueIdVal = null;
        pJsonObject->GetValue(pQueueIdKey, pQueueIdVal);
        if(pQueueIdVal != null) {
            
            pQueueId = null;
            jsonToValue(pQueueId, pQueueIdVal, L"Integer", L"Integer");
        }
        delete pQueueIdKey;
JsonString* pResultKey = new JsonString(L"result");
        IJsonValue* pResultVal = null;
        pJsonObject->GetValue(pResultKey, pResultVal);
        if(pResultVal != null) {
            
            pResult = new String();
            jsonToValue(pResult, pResultVal, L"String", L"String");
        }
        delete pResultKey;
JsonString* pTimestampKey = new JsonString(L"timestamp");
        IJsonValue* pTimestampVal = null;
        pJsonObject->GetValue(pTimestampKey, pTimestampVal);
        if(pTimestampVal != null) {
            
            pTimestamp = null;
            jsonToValue(pTimestamp, pTimestampVal, L"Integer", L"Integer");
        }
        delete pTimestampKey;
JsonString* pBuiltOnKey = new JsonString(L"builtOn");
        IJsonValue* pBuiltOnVal = null;
        pJsonObject->GetValue(pBuiltOnKey, pBuiltOnVal);
        if(pBuiltOnVal != null) {
            
            pBuiltOn = new String();
            jsonToValue(pBuiltOn, pBuiltOnVal, L"String", L"String");
        }
        delete pBuiltOnKey;
JsonString* pChangeSetKey = new JsonString(L"changeSet");
        IJsonValue* pChangeSetVal = null;
        pJsonObject->GetValue(pChangeSetKey, pChangeSetVal);
        if(pChangeSetVal != null) {
            
            pChangeSet = new SamiHudsonscmEmptyChangeLogSet();
            jsonToValue(pChangeSet, pChangeSetVal, L"SamiHudsonscmEmptyChangeLogSet", L"SamiHudsonscmEmptyChangeLogSet");
        }
        delete pChangeSetKey;
    }
}

SamiHudsonmodelFreeStyleBuild::SamiHudsonmodelFreeStyleBuild(String* json) {
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
SamiHudsonmodelFreeStyleBuild::asJson ()
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
SamiHudsonmodelFreeStyleBuild::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pNumberKey = new JsonString(L"number");
    pJsonObject->Add(pNumberKey, toJson(getPNumber(), "Integer", ""));

    JsonString *pUrlKey = new JsonString(L"url");
    pJsonObject->Add(pUrlKey, toJson(getPUrl(), "String", ""));

    JsonString *pActionsKey = new JsonString(L"actions");
    pJsonObject->Add(pActionsKey, toJson(getPActions(), "SamiHudsonmodelCauseAction", "array"));

    JsonString *pBuildingKey = new JsonString(L"building");
    pJsonObject->Add(pBuildingKey, toJson(getPBuilding(), "Boolean", ""));

    JsonString *pDescriptionKey = new JsonString(L"description");
    pJsonObject->Add(pDescriptionKey, toJson(getPDescription(), "String", ""));

    JsonString *pDisplayNameKey = new JsonString(L"displayName");
    pJsonObject->Add(pDisplayNameKey, toJson(getPDisplayName(), "String", ""));

    JsonString *pDurationKey = new JsonString(L"duration");
    pJsonObject->Add(pDurationKey, toJson(getPDuration(), "Integer", ""));

    JsonString *pEstimatedDurationKey = new JsonString(L"estimatedDuration");
    pJsonObject->Add(pEstimatedDurationKey, toJson(getPEstimatedDuration(), "Integer", ""));

    JsonString *pExecutorKey = new JsonString(L"executor");
    pJsonObject->Add(pExecutorKey, toJson(getPExecutor(), "String", ""));

    JsonString *pFullDisplayNameKey = new JsonString(L"fullDisplayName");
    pJsonObject->Add(pFullDisplayNameKey, toJson(getPFullDisplayName(), "String", ""));

    JsonString *pIdKey = new JsonString(L"id");
    pJsonObject->Add(pIdKey, toJson(getPId(), "String", ""));

    JsonString *pKeepLogKey = new JsonString(L"keepLog");
    pJsonObject->Add(pKeepLogKey, toJson(getPKeepLog(), "Boolean", ""));

    JsonString *pQueueIdKey = new JsonString(L"queueId");
    pJsonObject->Add(pQueueIdKey, toJson(getPQueueId(), "Integer", ""));

    JsonString *pResultKey = new JsonString(L"result");
    pJsonObject->Add(pResultKey, toJson(getPResult(), "String", ""));

    JsonString *pTimestampKey = new JsonString(L"timestamp");
    pJsonObject->Add(pTimestampKey, toJson(getPTimestamp(), "Integer", ""));

    JsonString *pBuiltOnKey = new JsonString(L"builtOn");
    pJsonObject->Add(pBuiltOnKey, toJson(getPBuiltOn(), "String", ""));

    JsonString *pChangeSetKey = new JsonString(L"changeSet");
    pJsonObject->Add(pChangeSetKey, toJson(getPChangeSet(), "SamiHudsonscmEmptyChangeLogSet", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelFreeStyleBuild::getPClass() {
    return p_class;
}
void
SamiHudsonmodelFreeStyleBuild::setPClass(String* p_class) {
    this->p_class = p_class;
}

Integer*
SamiHudsonmodelFreeStyleBuild::getPNumber() {
    return pNumber;
}
void
SamiHudsonmodelFreeStyleBuild::setPNumber(Integer* pNumber) {
    this->pNumber = pNumber;
}

String*
SamiHudsonmodelFreeStyleBuild::getPUrl() {
    return pUrl;
}
void
SamiHudsonmodelFreeStyleBuild::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}

IList*
SamiHudsonmodelFreeStyleBuild::getPActions() {
    return pActions;
}
void
SamiHudsonmodelFreeStyleBuild::setPActions(IList* pActions) {
    this->pActions = pActions;
}

Boolean*
SamiHudsonmodelFreeStyleBuild::getPBuilding() {
    return pBuilding;
}
void
SamiHudsonmodelFreeStyleBuild::setPBuilding(Boolean* pBuilding) {
    this->pBuilding = pBuilding;
}

String*
SamiHudsonmodelFreeStyleBuild::getPDescription() {
    return pDescription;
}
void
SamiHudsonmodelFreeStyleBuild::setPDescription(String* pDescription) {
    this->pDescription = pDescription;
}

String*
SamiHudsonmodelFreeStyleBuild::getPDisplayName() {
    return pDisplayName;
}
void
SamiHudsonmodelFreeStyleBuild::setPDisplayName(String* pDisplayName) {
    this->pDisplayName = pDisplayName;
}

Integer*
SamiHudsonmodelFreeStyleBuild::getPDuration() {
    return pDuration;
}
void
SamiHudsonmodelFreeStyleBuild::setPDuration(Integer* pDuration) {
    this->pDuration = pDuration;
}

Integer*
SamiHudsonmodelFreeStyleBuild::getPEstimatedDuration() {
    return pEstimatedDuration;
}
void
SamiHudsonmodelFreeStyleBuild::setPEstimatedDuration(Integer* pEstimatedDuration) {
    this->pEstimatedDuration = pEstimatedDuration;
}

String*
SamiHudsonmodelFreeStyleBuild::getPExecutor() {
    return pExecutor;
}
void
SamiHudsonmodelFreeStyleBuild::setPExecutor(String* pExecutor) {
    this->pExecutor = pExecutor;
}

String*
SamiHudsonmodelFreeStyleBuild::getPFullDisplayName() {
    return pFullDisplayName;
}
void
SamiHudsonmodelFreeStyleBuild::setPFullDisplayName(String* pFullDisplayName) {
    this->pFullDisplayName = pFullDisplayName;
}

String*
SamiHudsonmodelFreeStyleBuild::getPId() {
    return pId;
}
void
SamiHudsonmodelFreeStyleBuild::setPId(String* pId) {
    this->pId = pId;
}

Boolean*
SamiHudsonmodelFreeStyleBuild::getPKeepLog() {
    return pKeepLog;
}
void
SamiHudsonmodelFreeStyleBuild::setPKeepLog(Boolean* pKeepLog) {
    this->pKeepLog = pKeepLog;
}

Integer*
SamiHudsonmodelFreeStyleBuild::getPQueueId() {
    return pQueueId;
}
void
SamiHudsonmodelFreeStyleBuild::setPQueueId(Integer* pQueueId) {
    this->pQueueId = pQueueId;
}

String*
SamiHudsonmodelFreeStyleBuild::getPResult() {
    return pResult;
}
void
SamiHudsonmodelFreeStyleBuild::setPResult(String* pResult) {
    this->pResult = pResult;
}

Integer*
SamiHudsonmodelFreeStyleBuild::getPTimestamp() {
    return pTimestamp;
}
void
SamiHudsonmodelFreeStyleBuild::setPTimestamp(Integer* pTimestamp) {
    this->pTimestamp = pTimestamp;
}

String*
SamiHudsonmodelFreeStyleBuild::getPBuiltOn() {
    return pBuiltOn;
}
void
SamiHudsonmodelFreeStyleBuild::setPBuiltOn(String* pBuiltOn) {
    this->pBuiltOn = pBuiltOn;
}

SamiHudsonscmEmptyChangeLogSet*
SamiHudsonmodelFreeStyleBuild::getPChangeSet() {
    return pChangeSet;
}
void
SamiHudsonmodelFreeStyleBuild::setPChangeSet(SamiHudsonscmEmptyChangeLogSet* pChangeSet) {
    this->pChangeSet = pChangeSet;
}



} /* namespace Swagger */

