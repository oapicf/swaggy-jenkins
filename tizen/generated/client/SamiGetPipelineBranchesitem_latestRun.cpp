
#include "SamiGetPipelineBranchesitem_latestRun.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiGetPipelineBranchesitem_latestRun::SamiGetPipelineBranchesitem_latestRun() {
    init();
}

SamiGetPipelineBranchesitem_latestRun::~SamiGetPipelineBranchesitem_latestRun() {
    this->cleanup();
}

void
SamiGetPipelineBranchesitem_latestRun::init() {
    pDurationInMillis = null;
pEstimatedDurationInMillis = null;
pEnQueueTime = null;
pEndTime = null;
pId = null;
pOrganization = null;
pPipeline = null;
pResult = null;
pRunSummary = null;
pStartTime = null;
pState = null;
pType = null;
pCommitId = null;
p_class = null;
}

void
SamiGetPipelineBranchesitem_latestRun::cleanup() {
    if(pDurationInMillis != null) {
        
        delete pDurationInMillis;
        pDurationInMillis = null;
    }
if(pEstimatedDurationInMillis != null) {
        
        delete pEstimatedDurationInMillis;
        pEstimatedDurationInMillis = null;
    }
if(pEnQueueTime != null) {
        
        delete pEnQueueTime;
        pEnQueueTime = null;
    }
if(pEndTime != null) {
        
        delete pEndTime;
        pEndTime = null;
    }
if(pId != null) {
        
        delete pId;
        pId = null;
    }
if(pOrganization != null) {
        
        delete pOrganization;
        pOrganization = null;
    }
if(pPipeline != null) {
        
        delete pPipeline;
        pPipeline = null;
    }
if(pResult != null) {
        
        delete pResult;
        pResult = null;
    }
if(pRunSummary != null) {
        
        delete pRunSummary;
        pRunSummary = null;
    }
if(pStartTime != null) {
        
        delete pStartTime;
        pStartTime = null;
    }
if(pState != null) {
        
        delete pState;
        pState = null;
    }
if(pType != null) {
        
        delete pType;
        pType = null;
    }
if(pCommitId != null) {
        
        delete pCommitId;
        pCommitId = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiGetPipelineBranchesitem_latestRun*
SamiGetPipelineBranchesitem_latestRun::fromJson(String* json) {
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
SamiGetPipelineBranchesitem_latestRun::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pDurationInMillisKey = new JsonString(L"durationInMillis");
        IJsonValue* pDurationInMillisVal = null;
        pJsonObject->GetValue(pDurationInMillisKey, pDurationInMillisVal);
        if(pDurationInMillisVal != null) {
            
            pDurationInMillis = null;
            jsonToValue(pDurationInMillis, pDurationInMillisVal, L"Integer", L"Integer");
        }
        delete pDurationInMillisKey;
JsonString* pEstimatedDurationInMillisKey = new JsonString(L"estimatedDurationInMillis");
        IJsonValue* pEstimatedDurationInMillisVal = null;
        pJsonObject->GetValue(pEstimatedDurationInMillisKey, pEstimatedDurationInMillisVal);
        if(pEstimatedDurationInMillisVal != null) {
            
            pEstimatedDurationInMillis = null;
            jsonToValue(pEstimatedDurationInMillis, pEstimatedDurationInMillisVal, L"Integer", L"Integer");
        }
        delete pEstimatedDurationInMillisKey;
JsonString* pEnQueueTimeKey = new JsonString(L"enQueueTime");
        IJsonValue* pEnQueueTimeVal = null;
        pJsonObject->GetValue(pEnQueueTimeKey, pEnQueueTimeVal);
        if(pEnQueueTimeVal != null) {
            
            pEnQueueTime = new String();
            jsonToValue(pEnQueueTime, pEnQueueTimeVal, L"String", L"String");
        }
        delete pEnQueueTimeKey;
JsonString* pEndTimeKey = new JsonString(L"endTime");
        IJsonValue* pEndTimeVal = null;
        pJsonObject->GetValue(pEndTimeKey, pEndTimeVal);
        if(pEndTimeVal != null) {
            
            pEndTime = new String();
            jsonToValue(pEndTime, pEndTimeVal, L"String", L"String");
        }
        delete pEndTimeKey;
JsonString* pIdKey = new JsonString(L"id");
        IJsonValue* pIdVal = null;
        pJsonObject->GetValue(pIdKey, pIdVal);
        if(pIdVal != null) {
            
            pId = new String();
            jsonToValue(pId, pIdVal, L"String", L"String");
        }
        delete pIdKey;
JsonString* pOrganizationKey = new JsonString(L"organization");
        IJsonValue* pOrganizationVal = null;
        pJsonObject->GetValue(pOrganizationKey, pOrganizationVal);
        if(pOrganizationVal != null) {
            
            pOrganization = new String();
            jsonToValue(pOrganization, pOrganizationVal, L"String", L"String");
        }
        delete pOrganizationKey;
JsonString* pPipelineKey = new JsonString(L"pipeline");
        IJsonValue* pPipelineVal = null;
        pJsonObject->GetValue(pPipelineKey, pPipelineVal);
        if(pPipelineVal != null) {
            
            pPipeline = new String();
            jsonToValue(pPipeline, pPipelineVal, L"String", L"String");
        }
        delete pPipelineKey;
JsonString* pResultKey = new JsonString(L"result");
        IJsonValue* pResultVal = null;
        pJsonObject->GetValue(pResultKey, pResultVal);
        if(pResultVal != null) {
            
            pResult = new String();
            jsonToValue(pResult, pResultVal, L"String", L"String");
        }
        delete pResultKey;
JsonString* pRunSummaryKey = new JsonString(L"runSummary");
        IJsonValue* pRunSummaryVal = null;
        pJsonObject->GetValue(pRunSummaryKey, pRunSummaryVal);
        if(pRunSummaryVal != null) {
            
            pRunSummary = new String();
            jsonToValue(pRunSummary, pRunSummaryVal, L"String", L"String");
        }
        delete pRunSummaryKey;
JsonString* pStartTimeKey = new JsonString(L"startTime");
        IJsonValue* pStartTimeVal = null;
        pJsonObject->GetValue(pStartTimeKey, pStartTimeVal);
        if(pStartTimeVal != null) {
            
            pStartTime = new String();
            jsonToValue(pStartTime, pStartTimeVal, L"String", L"String");
        }
        delete pStartTimeKey;
JsonString* pStateKey = new JsonString(L"state");
        IJsonValue* pStateVal = null;
        pJsonObject->GetValue(pStateKey, pStateVal);
        if(pStateVal != null) {
            
            pState = new String();
            jsonToValue(pState, pStateVal, L"String", L"String");
        }
        delete pStateKey;
JsonString* pTypeKey = new JsonString(L"type");
        IJsonValue* pTypeVal = null;
        pJsonObject->GetValue(pTypeKey, pTypeVal);
        if(pTypeVal != null) {
            
            pType = new String();
            jsonToValue(pType, pTypeVal, L"String", L"String");
        }
        delete pTypeKey;
JsonString* pCommitIdKey = new JsonString(L"commitId");
        IJsonValue* pCommitIdVal = null;
        pJsonObject->GetValue(pCommitIdKey, pCommitIdVal);
        if(pCommitIdVal != null) {
            
            pCommitId = new String();
            jsonToValue(pCommitId, pCommitIdVal, L"String", L"String");
        }
        delete pCommitIdKey;
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

SamiGetPipelineBranchesitem_latestRun::SamiGetPipelineBranchesitem_latestRun(String* json) {
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
SamiGetPipelineBranchesitem_latestRun::asJson ()
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
SamiGetPipelineBranchesitem_latestRun::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pDurationInMillisKey = new JsonString(L"durationInMillis");
    pJsonObject->Add(pDurationInMillisKey, toJson(getPDurationInMillis(), "Integer", ""));

    JsonString *pEstimatedDurationInMillisKey = new JsonString(L"estimatedDurationInMillis");
    pJsonObject->Add(pEstimatedDurationInMillisKey, toJson(getPEstimatedDurationInMillis(), "Integer", ""));

    JsonString *pEnQueueTimeKey = new JsonString(L"enQueueTime");
    pJsonObject->Add(pEnQueueTimeKey, toJson(getPEnQueueTime(), "String", ""));

    JsonString *pEndTimeKey = new JsonString(L"endTime");
    pJsonObject->Add(pEndTimeKey, toJson(getPEndTime(), "String", ""));

    JsonString *pIdKey = new JsonString(L"id");
    pJsonObject->Add(pIdKey, toJson(getPId(), "String", ""));

    JsonString *pOrganizationKey = new JsonString(L"organization");
    pJsonObject->Add(pOrganizationKey, toJson(getPOrganization(), "String", ""));

    JsonString *pPipelineKey = new JsonString(L"pipeline");
    pJsonObject->Add(pPipelineKey, toJson(getPPipeline(), "String", ""));

    JsonString *pResultKey = new JsonString(L"result");
    pJsonObject->Add(pResultKey, toJson(getPResult(), "String", ""));

    JsonString *pRunSummaryKey = new JsonString(L"runSummary");
    pJsonObject->Add(pRunSummaryKey, toJson(getPRunSummary(), "String", ""));

    JsonString *pStartTimeKey = new JsonString(L"startTime");
    pJsonObject->Add(pStartTimeKey, toJson(getPStartTime(), "String", ""));

    JsonString *pStateKey = new JsonString(L"state");
    pJsonObject->Add(pStateKey, toJson(getPState(), "String", ""));

    JsonString *pTypeKey = new JsonString(L"type");
    pJsonObject->Add(pTypeKey, toJson(getPType(), "String", ""));

    JsonString *pCommitIdKey = new JsonString(L"commitId");
    pJsonObject->Add(pCommitIdKey, toJson(getPCommitId(), "String", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

Integer*
SamiGetPipelineBranchesitem_latestRun::getPDurationInMillis() {
    return pDurationInMillis;
}
void
SamiGetPipelineBranchesitem_latestRun::setPDurationInMillis(Integer* pDurationInMillis) {
    this->pDurationInMillis = pDurationInMillis;
}

Integer*
SamiGetPipelineBranchesitem_latestRun::getPEstimatedDurationInMillis() {
    return pEstimatedDurationInMillis;
}
void
SamiGetPipelineBranchesitem_latestRun::setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis) {
    this->pEstimatedDurationInMillis = pEstimatedDurationInMillis;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPEnQueueTime() {
    return pEnQueueTime;
}
void
SamiGetPipelineBranchesitem_latestRun::setPEnQueueTime(String* pEnQueueTime) {
    this->pEnQueueTime = pEnQueueTime;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPEndTime() {
    return pEndTime;
}
void
SamiGetPipelineBranchesitem_latestRun::setPEndTime(String* pEndTime) {
    this->pEndTime = pEndTime;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPId() {
    return pId;
}
void
SamiGetPipelineBranchesitem_latestRun::setPId(String* pId) {
    this->pId = pId;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPOrganization() {
    return pOrganization;
}
void
SamiGetPipelineBranchesitem_latestRun::setPOrganization(String* pOrganization) {
    this->pOrganization = pOrganization;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPPipeline() {
    return pPipeline;
}
void
SamiGetPipelineBranchesitem_latestRun::setPPipeline(String* pPipeline) {
    this->pPipeline = pPipeline;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPResult() {
    return pResult;
}
void
SamiGetPipelineBranchesitem_latestRun::setPResult(String* pResult) {
    this->pResult = pResult;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPRunSummary() {
    return pRunSummary;
}
void
SamiGetPipelineBranchesitem_latestRun::setPRunSummary(String* pRunSummary) {
    this->pRunSummary = pRunSummary;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPStartTime() {
    return pStartTime;
}
void
SamiGetPipelineBranchesitem_latestRun::setPStartTime(String* pStartTime) {
    this->pStartTime = pStartTime;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPState() {
    return pState;
}
void
SamiGetPipelineBranchesitem_latestRun::setPState(String* pState) {
    this->pState = pState;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPType() {
    return pType;
}
void
SamiGetPipelineBranchesitem_latestRun::setPType(String* pType) {
    this->pType = pType;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPCommitId() {
    return pCommitId;
}
void
SamiGetPipelineBranchesitem_latestRun::setPCommitId(String* pCommitId) {
    this->pCommitId = pCommitId;
}

String*
SamiGetPipelineBranchesitem_latestRun::getPClass() {
    return p_class;
}
void
SamiGetPipelineBranchesitem_latestRun::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

