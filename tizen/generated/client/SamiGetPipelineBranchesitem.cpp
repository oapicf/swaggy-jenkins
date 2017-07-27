
#include "SamiGetPipelineBranchesitem.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiGetPipelineBranchesitem::SamiGetPipelineBranchesitem() {
    init();
}

SamiGetPipelineBranchesitem::~SamiGetPipelineBranchesitem() {
    this->cleanup();
}

void
SamiGetPipelineBranchesitem::init() {
    pDisplayName = null;
pEstimatedDurationInMillis = null;
pName = null;
pWeatherScore = null;
pLatestRun = null;
pOrganization = null;
pPullRequest = null;
pTotalNumberOfPullRequests = null;
p_class = null;
}

void
SamiGetPipelineBranchesitem::cleanup() {
    if(pDisplayName != null) {
        
        delete pDisplayName;
        pDisplayName = null;
    }
if(pEstimatedDurationInMillis != null) {
        
        delete pEstimatedDurationInMillis;
        pEstimatedDurationInMillis = null;
    }
if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pWeatherScore != null) {
        
        delete pWeatherScore;
        pWeatherScore = null;
    }
if(pLatestRun != null) {
        
        delete pLatestRun;
        pLatestRun = null;
    }
if(pOrganization != null) {
        
        delete pOrganization;
        pOrganization = null;
    }
if(pPullRequest != null) {
        
        delete pPullRequest;
        pPullRequest = null;
    }
if(pTotalNumberOfPullRequests != null) {
        
        delete pTotalNumberOfPullRequests;
        pTotalNumberOfPullRequests = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiGetPipelineBranchesitem*
SamiGetPipelineBranchesitem::fromJson(String* json) {
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
SamiGetPipelineBranchesitem::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pDisplayNameKey = new JsonString(L"displayName");
        IJsonValue* pDisplayNameVal = null;
        pJsonObject->GetValue(pDisplayNameKey, pDisplayNameVal);
        if(pDisplayNameVal != null) {
            
            pDisplayName = new String();
            jsonToValue(pDisplayName, pDisplayNameVal, L"String", L"String");
        }
        delete pDisplayNameKey;
JsonString* pEstimatedDurationInMillisKey = new JsonString(L"estimatedDurationInMillis");
        IJsonValue* pEstimatedDurationInMillisVal = null;
        pJsonObject->GetValue(pEstimatedDurationInMillisKey, pEstimatedDurationInMillisVal);
        if(pEstimatedDurationInMillisVal != null) {
            
            pEstimatedDurationInMillis = null;
            jsonToValue(pEstimatedDurationInMillis, pEstimatedDurationInMillisVal, L"Integer", L"Integer");
        }
        delete pEstimatedDurationInMillisKey;
JsonString* pNameKey = new JsonString(L"name");
        IJsonValue* pNameVal = null;
        pJsonObject->GetValue(pNameKey, pNameVal);
        if(pNameVal != null) {
            
            pName = new String();
            jsonToValue(pName, pNameVal, L"String", L"String");
        }
        delete pNameKey;
JsonString* pWeatherScoreKey = new JsonString(L"weatherScore");
        IJsonValue* pWeatherScoreVal = null;
        pJsonObject->GetValue(pWeatherScoreKey, pWeatherScoreVal);
        if(pWeatherScoreVal != null) {
            
            pWeatherScore = null;
            jsonToValue(pWeatherScore, pWeatherScoreVal, L"Integer", L"Integer");
        }
        delete pWeatherScoreKey;
JsonString* pLatestRunKey = new JsonString(L"latestRun");
        IJsonValue* pLatestRunVal = null;
        pJsonObject->GetValue(pLatestRunKey, pLatestRunVal);
        if(pLatestRunVal != null) {
            
            pLatestRun = new SamiGetPipelineBranchesitem_latestRun();
            jsonToValue(pLatestRun, pLatestRunVal, L"SamiGetPipelineBranchesitem_latestRun", L"SamiGetPipelineBranchesitem_latestRun");
        }
        delete pLatestRunKey;
JsonString* pOrganizationKey = new JsonString(L"organization");
        IJsonValue* pOrganizationVal = null;
        pJsonObject->GetValue(pOrganizationKey, pOrganizationVal);
        if(pOrganizationVal != null) {
            
            pOrganization = new String();
            jsonToValue(pOrganization, pOrganizationVal, L"String", L"String");
        }
        delete pOrganizationKey;
JsonString* pPullRequestKey = new JsonString(L"pullRequest");
        IJsonValue* pPullRequestVal = null;
        pJsonObject->GetValue(pPullRequestKey, pPullRequestVal);
        if(pPullRequestVal != null) {
            
            pPullRequest = new SamiGetPipelineBranchesitem_pullRequest();
            jsonToValue(pPullRequest, pPullRequestVal, L"SamiGetPipelineBranchesitem_pullRequest", L"SamiGetPipelineBranchesitem_pullRequest");
        }
        delete pPullRequestKey;
JsonString* pTotalNumberOfPullRequestsKey = new JsonString(L"totalNumberOfPullRequests");
        IJsonValue* pTotalNumberOfPullRequestsVal = null;
        pJsonObject->GetValue(pTotalNumberOfPullRequestsKey, pTotalNumberOfPullRequestsVal);
        if(pTotalNumberOfPullRequestsVal != null) {
            
            pTotalNumberOfPullRequests = null;
            jsonToValue(pTotalNumberOfPullRequests, pTotalNumberOfPullRequestsVal, L"Integer", L"Integer");
        }
        delete pTotalNumberOfPullRequestsKey;
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

SamiGetPipelineBranchesitem::SamiGetPipelineBranchesitem(String* json) {
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
SamiGetPipelineBranchesitem::asJson ()
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
SamiGetPipelineBranchesitem::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pDisplayNameKey = new JsonString(L"displayName");
    pJsonObject->Add(pDisplayNameKey, toJson(getPDisplayName(), "String", ""));

    JsonString *pEstimatedDurationInMillisKey = new JsonString(L"estimatedDurationInMillis");
    pJsonObject->Add(pEstimatedDurationInMillisKey, toJson(getPEstimatedDurationInMillis(), "Integer", ""));

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pWeatherScoreKey = new JsonString(L"weatherScore");
    pJsonObject->Add(pWeatherScoreKey, toJson(getPWeatherScore(), "Integer", ""));

    JsonString *pLatestRunKey = new JsonString(L"latestRun");
    pJsonObject->Add(pLatestRunKey, toJson(getPLatestRun(), "SamiGetPipelineBranchesitem_latestRun", ""));

    JsonString *pOrganizationKey = new JsonString(L"organization");
    pJsonObject->Add(pOrganizationKey, toJson(getPOrganization(), "String", ""));

    JsonString *pPullRequestKey = new JsonString(L"pullRequest");
    pJsonObject->Add(pPullRequestKey, toJson(getPPullRequest(), "SamiGetPipelineBranchesitem_pullRequest", ""));

    JsonString *pTotalNumberOfPullRequestsKey = new JsonString(L"totalNumberOfPullRequests");
    pJsonObject->Add(pTotalNumberOfPullRequestsKey, toJson(getPTotalNumberOfPullRequests(), "Integer", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

String*
SamiGetPipelineBranchesitem::getPDisplayName() {
    return pDisplayName;
}
void
SamiGetPipelineBranchesitem::setPDisplayName(String* pDisplayName) {
    this->pDisplayName = pDisplayName;
}

Integer*
SamiGetPipelineBranchesitem::getPEstimatedDurationInMillis() {
    return pEstimatedDurationInMillis;
}
void
SamiGetPipelineBranchesitem::setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis) {
    this->pEstimatedDurationInMillis = pEstimatedDurationInMillis;
}

String*
SamiGetPipelineBranchesitem::getPName() {
    return pName;
}
void
SamiGetPipelineBranchesitem::setPName(String* pName) {
    this->pName = pName;
}

Integer*
SamiGetPipelineBranchesitem::getPWeatherScore() {
    return pWeatherScore;
}
void
SamiGetPipelineBranchesitem::setPWeatherScore(Integer* pWeatherScore) {
    this->pWeatherScore = pWeatherScore;
}

SamiGetPipelineBranchesitem_latestRun*
SamiGetPipelineBranchesitem::getPLatestRun() {
    return pLatestRun;
}
void
SamiGetPipelineBranchesitem::setPLatestRun(SamiGetPipelineBranchesitem_latestRun* pLatestRun) {
    this->pLatestRun = pLatestRun;
}

String*
SamiGetPipelineBranchesitem::getPOrganization() {
    return pOrganization;
}
void
SamiGetPipelineBranchesitem::setPOrganization(String* pOrganization) {
    this->pOrganization = pOrganization;
}

SamiGetPipelineBranchesitem_pullRequest*
SamiGetPipelineBranchesitem::getPPullRequest() {
    return pPullRequest;
}
void
SamiGetPipelineBranchesitem::setPPullRequest(SamiGetPipelineBranchesitem_pullRequest* pPullRequest) {
    this->pPullRequest = pPullRequest;
}

Integer*
SamiGetPipelineBranchesitem::getPTotalNumberOfPullRequests() {
    return pTotalNumberOfPullRequests;
}
void
SamiGetPipelineBranchesitem::setPTotalNumberOfPullRequests(Integer* pTotalNumberOfPullRequests) {
    this->pTotalNumberOfPullRequests = pTotalNumberOfPullRequests;
}

String*
SamiGetPipelineBranchesitem::getPClass() {
    return p_class;
}
void
SamiGetPipelineBranchesitem::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

