
#include "SamiGetMultibranchPipeline.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiGetMultibranchPipeline::SamiGetMultibranchPipeline() {
    init();
}

SamiGetMultibranchPipeline::~SamiGetMultibranchPipeline() {
    this->cleanup();
}

void
SamiGetMultibranchPipeline::init() {
    pDisplayName = null;
pEstimatedDurationInMillis = null;
pLatestRun = null;
pName = null;
pOrganization = null;
pWeatherScore = null;
pBranchNames = null;
pNumberOfFailingBranches = null;
pNumberOfFailingPullRequests = null;
pNumberOfSuccessfulBranches = null;
pNumberOfSuccessfulPullRequests = null;
pTotalNumberOfBranches = null;
pTotalNumberOfPullRequests = null;
p_class = null;
}

void
SamiGetMultibranchPipeline::cleanup() {
    if(pDisplayName != null) {
        
        delete pDisplayName;
        pDisplayName = null;
    }
if(pEstimatedDurationInMillis != null) {
        
        delete pEstimatedDurationInMillis;
        pEstimatedDurationInMillis = null;
    }
if(pLatestRun != null) {
        
        delete pLatestRun;
        pLatestRun = null;
    }
if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pOrganization != null) {
        
        delete pOrganization;
        pOrganization = null;
    }
if(pWeatherScore != null) {
        
        delete pWeatherScore;
        pWeatherScore = null;
    }
if(pBranchNames != null) {
        pBranchNames->RemoveAll(true);
        delete pBranchNames;
        pBranchNames = null;
    }
if(pNumberOfFailingBranches != null) {
        
        delete pNumberOfFailingBranches;
        pNumberOfFailingBranches = null;
    }
if(pNumberOfFailingPullRequests != null) {
        
        delete pNumberOfFailingPullRequests;
        pNumberOfFailingPullRequests = null;
    }
if(pNumberOfSuccessfulBranches != null) {
        
        delete pNumberOfSuccessfulBranches;
        pNumberOfSuccessfulBranches = null;
    }
if(pNumberOfSuccessfulPullRequests != null) {
        
        delete pNumberOfSuccessfulPullRequests;
        pNumberOfSuccessfulPullRequests = null;
    }
if(pTotalNumberOfBranches != null) {
        
        delete pTotalNumberOfBranches;
        pTotalNumberOfBranches = null;
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


SamiGetMultibranchPipeline*
SamiGetMultibranchPipeline::fromJson(String* json) {
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
SamiGetMultibranchPipeline::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pLatestRunKey = new JsonString(L"latestRun");
        IJsonValue* pLatestRunVal = null;
        pJsonObject->GetValue(pLatestRunKey, pLatestRunVal);
        if(pLatestRunVal != null) {
            
            pLatestRun = new String();
            jsonToValue(pLatestRun, pLatestRunVal, L"String", L"String");
        }
        delete pLatestRunKey;
JsonString* pNameKey = new JsonString(L"name");
        IJsonValue* pNameVal = null;
        pJsonObject->GetValue(pNameKey, pNameVal);
        if(pNameVal != null) {
            
            pName = new String();
            jsonToValue(pName, pNameVal, L"String", L"String");
        }
        delete pNameKey;
JsonString* pOrganizationKey = new JsonString(L"organization");
        IJsonValue* pOrganizationVal = null;
        pJsonObject->GetValue(pOrganizationKey, pOrganizationVal);
        if(pOrganizationVal != null) {
            
            pOrganization = new String();
            jsonToValue(pOrganization, pOrganizationVal, L"String", L"String");
        }
        delete pOrganizationKey;
JsonString* pWeatherScoreKey = new JsonString(L"weatherScore");
        IJsonValue* pWeatherScoreVal = null;
        pJsonObject->GetValue(pWeatherScoreKey, pWeatherScoreVal);
        if(pWeatherScoreVal != null) {
            
            pWeatherScore = null;
            jsonToValue(pWeatherScore, pWeatherScoreVal, L"Integer", L"Integer");
        }
        delete pWeatherScoreKey;
JsonString* pBranchNamesKey = new JsonString(L"branchNames");
        IJsonValue* pBranchNamesVal = null;
        pJsonObject->GetValue(pBranchNamesKey, pBranchNamesVal);
        if(pBranchNamesVal != null) {
            pBranchNames = new ArrayList();
            
            jsonToValue(pBranchNames, pBranchNamesVal, L"IList", L"String");
        }
        delete pBranchNamesKey;
JsonString* pNumberOfFailingBranchesKey = new JsonString(L"numberOfFailingBranches");
        IJsonValue* pNumberOfFailingBranchesVal = null;
        pJsonObject->GetValue(pNumberOfFailingBranchesKey, pNumberOfFailingBranchesVal);
        if(pNumberOfFailingBranchesVal != null) {
            
            pNumberOfFailingBranches = null;
            jsonToValue(pNumberOfFailingBranches, pNumberOfFailingBranchesVal, L"Integer", L"Integer");
        }
        delete pNumberOfFailingBranchesKey;
JsonString* pNumberOfFailingPullRequestsKey = new JsonString(L"numberOfFailingPullRequests");
        IJsonValue* pNumberOfFailingPullRequestsVal = null;
        pJsonObject->GetValue(pNumberOfFailingPullRequestsKey, pNumberOfFailingPullRequestsVal);
        if(pNumberOfFailingPullRequestsVal != null) {
            
            pNumberOfFailingPullRequests = null;
            jsonToValue(pNumberOfFailingPullRequests, pNumberOfFailingPullRequestsVal, L"Integer", L"Integer");
        }
        delete pNumberOfFailingPullRequestsKey;
JsonString* pNumberOfSuccessfulBranchesKey = new JsonString(L"numberOfSuccessfulBranches");
        IJsonValue* pNumberOfSuccessfulBranchesVal = null;
        pJsonObject->GetValue(pNumberOfSuccessfulBranchesKey, pNumberOfSuccessfulBranchesVal);
        if(pNumberOfSuccessfulBranchesVal != null) {
            
            pNumberOfSuccessfulBranches = null;
            jsonToValue(pNumberOfSuccessfulBranches, pNumberOfSuccessfulBranchesVal, L"Integer", L"Integer");
        }
        delete pNumberOfSuccessfulBranchesKey;
JsonString* pNumberOfSuccessfulPullRequestsKey = new JsonString(L"numberOfSuccessfulPullRequests");
        IJsonValue* pNumberOfSuccessfulPullRequestsVal = null;
        pJsonObject->GetValue(pNumberOfSuccessfulPullRequestsKey, pNumberOfSuccessfulPullRequestsVal);
        if(pNumberOfSuccessfulPullRequestsVal != null) {
            
            pNumberOfSuccessfulPullRequests = null;
            jsonToValue(pNumberOfSuccessfulPullRequests, pNumberOfSuccessfulPullRequestsVal, L"Integer", L"Integer");
        }
        delete pNumberOfSuccessfulPullRequestsKey;
JsonString* pTotalNumberOfBranchesKey = new JsonString(L"totalNumberOfBranches");
        IJsonValue* pTotalNumberOfBranchesVal = null;
        pJsonObject->GetValue(pTotalNumberOfBranchesKey, pTotalNumberOfBranchesVal);
        if(pTotalNumberOfBranchesVal != null) {
            
            pTotalNumberOfBranches = null;
            jsonToValue(pTotalNumberOfBranches, pTotalNumberOfBranchesVal, L"Integer", L"Integer");
        }
        delete pTotalNumberOfBranchesKey;
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

SamiGetMultibranchPipeline::SamiGetMultibranchPipeline(String* json) {
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
SamiGetMultibranchPipeline::asJson ()
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
SamiGetMultibranchPipeline::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pDisplayNameKey = new JsonString(L"displayName");
    pJsonObject->Add(pDisplayNameKey, toJson(getPDisplayName(), "String", ""));

    JsonString *pEstimatedDurationInMillisKey = new JsonString(L"estimatedDurationInMillis");
    pJsonObject->Add(pEstimatedDurationInMillisKey, toJson(getPEstimatedDurationInMillis(), "Integer", ""));

    JsonString *pLatestRunKey = new JsonString(L"latestRun");
    pJsonObject->Add(pLatestRunKey, toJson(getPLatestRun(), "String", ""));

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pOrganizationKey = new JsonString(L"organization");
    pJsonObject->Add(pOrganizationKey, toJson(getPOrganization(), "String", ""));

    JsonString *pWeatherScoreKey = new JsonString(L"weatherScore");
    pJsonObject->Add(pWeatherScoreKey, toJson(getPWeatherScore(), "Integer", ""));

    JsonString *pBranchNamesKey = new JsonString(L"branchNames");
    pJsonObject->Add(pBranchNamesKey, toJson(getPBranchNames(), "String", "array"));

    JsonString *pNumberOfFailingBranchesKey = new JsonString(L"numberOfFailingBranches");
    pJsonObject->Add(pNumberOfFailingBranchesKey, toJson(getPNumberOfFailingBranches(), "Integer", ""));

    JsonString *pNumberOfFailingPullRequestsKey = new JsonString(L"numberOfFailingPullRequests");
    pJsonObject->Add(pNumberOfFailingPullRequestsKey, toJson(getPNumberOfFailingPullRequests(), "Integer", ""));

    JsonString *pNumberOfSuccessfulBranchesKey = new JsonString(L"numberOfSuccessfulBranches");
    pJsonObject->Add(pNumberOfSuccessfulBranchesKey, toJson(getPNumberOfSuccessfulBranches(), "Integer", ""));

    JsonString *pNumberOfSuccessfulPullRequestsKey = new JsonString(L"numberOfSuccessfulPullRequests");
    pJsonObject->Add(pNumberOfSuccessfulPullRequestsKey, toJson(getPNumberOfSuccessfulPullRequests(), "Integer", ""));

    JsonString *pTotalNumberOfBranchesKey = new JsonString(L"totalNumberOfBranches");
    pJsonObject->Add(pTotalNumberOfBranchesKey, toJson(getPTotalNumberOfBranches(), "Integer", ""));

    JsonString *pTotalNumberOfPullRequestsKey = new JsonString(L"totalNumberOfPullRequests");
    pJsonObject->Add(pTotalNumberOfPullRequestsKey, toJson(getPTotalNumberOfPullRequests(), "Integer", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

String*
SamiGetMultibranchPipeline::getPDisplayName() {
    return pDisplayName;
}
void
SamiGetMultibranchPipeline::setPDisplayName(String* pDisplayName) {
    this->pDisplayName = pDisplayName;
}

Integer*
SamiGetMultibranchPipeline::getPEstimatedDurationInMillis() {
    return pEstimatedDurationInMillis;
}
void
SamiGetMultibranchPipeline::setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis) {
    this->pEstimatedDurationInMillis = pEstimatedDurationInMillis;
}

String*
SamiGetMultibranchPipeline::getPLatestRun() {
    return pLatestRun;
}
void
SamiGetMultibranchPipeline::setPLatestRun(String* pLatestRun) {
    this->pLatestRun = pLatestRun;
}

String*
SamiGetMultibranchPipeline::getPName() {
    return pName;
}
void
SamiGetMultibranchPipeline::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiGetMultibranchPipeline::getPOrganization() {
    return pOrganization;
}
void
SamiGetMultibranchPipeline::setPOrganization(String* pOrganization) {
    this->pOrganization = pOrganization;
}

Integer*
SamiGetMultibranchPipeline::getPWeatherScore() {
    return pWeatherScore;
}
void
SamiGetMultibranchPipeline::setPWeatherScore(Integer* pWeatherScore) {
    this->pWeatherScore = pWeatherScore;
}

IList*
SamiGetMultibranchPipeline::getPBranchNames() {
    return pBranchNames;
}
void
SamiGetMultibranchPipeline::setPBranchNames(IList* pBranchNames) {
    this->pBranchNames = pBranchNames;
}

Integer*
SamiGetMultibranchPipeline::getPNumberOfFailingBranches() {
    return pNumberOfFailingBranches;
}
void
SamiGetMultibranchPipeline::setPNumberOfFailingBranches(Integer* pNumberOfFailingBranches) {
    this->pNumberOfFailingBranches = pNumberOfFailingBranches;
}

Integer*
SamiGetMultibranchPipeline::getPNumberOfFailingPullRequests() {
    return pNumberOfFailingPullRequests;
}
void
SamiGetMultibranchPipeline::setPNumberOfFailingPullRequests(Integer* pNumberOfFailingPullRequests) {
    this->pNumberOfFailingPullRequests = pNumberOfFailingPullRequests;
}

Integer*
SamiGetMultibranchPipeline::getPNumberOfSuccessfulBranches() {
    return pNumberOfSuccessfulBranches;
}
void
SamiGetMultibranchPipeline::setPNumberOfSuccessfulBranches(Integer* pNumberOfSuccessfulBranches) {
    this->pNumberOfSuccessfulBranches = pNumberOfSuccessfulBranches;
}

Integer*
SamiGetMultibranchPipeline::getPNumberOfSuccessfulPullRequests() {
    return pNumberOfSuccessfulPullRequests;
}
void
SamiGetMultibranchPipeline::setPNumberOfSuccessfulPullRequests(Integer* pNumberOfSuccessfulPullRequests) {
    this->pNumberOfSuccessfulPullRequests = pNumberOfSuccessfulPullRequests;
}

Integer*
SamiGetMultibranchPipeline::getPTotalNumberOfBranches() {
    return pTotalNumberOfBranches;
}
void
SamiGetMultibranchPipeline::setPTotalNumberOfBranches(Integer* pTotalNumberOfBranches) {
    this->pTotalNumberOfBranches = pTotalNumberOfBranches;
}

Integer*
SamiGetMultibranchPipeline::getPTotalNumberOfPullRequests() {
    return pTotalNumberOfPullRequests;
}
void
SamiGetMultibranchPipeline::setPTotalNumberOfPullRequests(Integer* pTotalNumberOfPullRequests) {
    this->pTotalNumberOfPullRequests = pTotalNumberOfPullRequests;
}

String*
SamiGetMultibranchPipeline::getPClass() {
    return p_class;
}
void
SamiGetMultibranchPipeline::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

