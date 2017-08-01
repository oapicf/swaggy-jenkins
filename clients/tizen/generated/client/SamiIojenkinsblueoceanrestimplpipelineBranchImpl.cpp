
#include "SamiIojenkinsblueoceanrestimplpipelineBranchImpl.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiIojenkinsblueoceanrestimplpipelineBranchImpl::SamiIojenkinsblueoceanrestimplpipelineBranchImpl() {
    init();
}

SamiIojenkinsblueoceanrestimplpipelineBranchImpl::~SamiIojenkinsblueoceanrestimplpipelineBranchImpl() {
    this->cleanup();
}

void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::init() {
    p_class = null;
pDisplayName = null;
pEstimatedDurationInMillis = null;
pFullDisplayName = null;
pFullName = null;
pName = null;
pOrganization = null;
pParameters = null;
pPermissions = null;
pWeatherScore = null;
pPullRequest = null;
}

void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pDisplayName != null) {
        
        delete pDisplayName;
        pDisplayName = null;
    }
if(pEstimatedDurationInMillis != null) {
        
        delete pEstimatedDurationInMillis;
        pEstimatedDurationInMillis = null;
    }
if(pFullDisplayName != null) {
        
        delete pFullDisplayName;
        pFullDisplayName = null;
    }
if(pFullName != null) {
        
        delete pFullName;
        pFullName = null;
    }
if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pOrganization != null) {
        
        delete pOrganization;
        pOrganization = null;
    }
if(pParameters != null) {
        pParameters->RemoveAll(true);
        delete pParameters;
        pParameters = null;
    }
if(pPermissions != null) {
        
        delete pPermissions;
        pPermissions = null;
    }
if(pWeatherScore != null) {
        
        delete pWeatherScore;
        pWeatherScore = null;
    }
if(pPullRequest != null) {
        
        delete pPullRequest;
        pPullRequest = null;
    }
}


SamiIojenkinsblueoceanrestimplpipelineBranchImpl*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::fromJson(String* json) {
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
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pFullDisplayNameKey = new JsonString(L"fullDisplayName");
        IJsonValue* pFullDisplayNameVal = null;
        pJsonObject->GetValue(pFullDisplayNameKey, pFullDisplayNameVal);
        if(pFullDisplayNameVal != null) {
            
            pFullDisplayName = new String();
            jsonToValue(pFullDisplayName, pFullDisplayNameVal, L"String", L"String");
        }
        delete pFullDisplayNameKey;
JsonString* pFullNameKey = new JsonString(L"fullName");
        IJsonValue* pFullNameVal = null;
        pJsonObject->GetValue(pFullNameKey, pFullNameVal);
        if(pFullNameVal != null) {
            
            pFullName = new String();
            jsonToValue(pFullName, pFullNameVal, L"String", L"String");
        }
        delete pFullNameKey;
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
JsonString* pParametersKey = new JsonString(L"parameters");
        IJsonValue* pParametersVal = null;
        pJsonObject->GetValue(pParametersKey, pParametersVal);
        if(pParametersVal != null) {
            pParameters = new ArrayList();
            
            jsonToValue(pParameters, pParametersVal, L"IList", L"SamiHudsonmodelStringParameterDefinition");
        }
        delete pParametersKey;
JsonString* pPermissionsKey = new JsonString(L"permissions");
        IJsonValue* pPermissionsVal = null;
        pJsonObject->GetValue(pPermissionsKey, pPermissionsVal);
        if(pPermissionsVal != null) {
            
            pPermissions = new SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions();
            jsonToValue(pPermissions, pPermissionsVal, L"SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions", L"SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions");
        }
        delete pPermissionsKey;
JsonString* pWeatherScoreKey = new JsonString(L"weatherScore");
        IJsonValue* pWeatherScoreVal = null;
        pJsonObject->GetValue(pWeatherScoreKey, pWeatherScoreVal);
        if(pWeatherScoreVal != null) {
            
            pWeatherScore = null;
            jsonToValue(pWeatherScore, pWeatherScoreVal, L"Integer", L"Integer");
        }
        delete pWeatherScoreKey;
JsonString* pPullRequestKey = new JsonString(L"pullRequest");
        IJsonValue* pPullRequestVal = null;
        pJsonObject->GetValue(pPullRequestKey, pPullRequestVal);
        if(pPullRequestVal != null) {
            
            pPullRequest = new String();
            jsonToValue(pPullRequest, pPullRequestVal, L"String", L"String");
        }
        delete pPullRequestKey;
    }
}

SamiIojenkinsblueoceanrestimplpipelineBranchImpl::SamiIojenkinsblueoceanrestimplpipelineBranchImpl(String* json) {
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
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::asJson ()
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
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pDisplayNameKey = new JsonString(L"displayName");
    pJsonObject->Add(pDisplayNameKey, toJson(getPDisplayName(), "String", ""));

    JsonString *pEstimatedDurationInMillisKey = new JsonString(L"estimatedDurationInMillis");
    pJsonObject->Add(pEstimatedDurationInMillisKey, toJson(getPEstimatedDurationInMillis(), "Integer", ""));

    JsonString *pFullDisplayNameKey = new JsonString(L"fullDisplayName");
    pJsonObject->Add(pFullDisplayNameKey, toJson(getPFullDisplayName(), "String", ""));

    JsonString *pFullNameKey = new JsonString(L"fullName");
    pJsonObject->Add(pFullNameKey, toJson(getPFullName(), "String", ""));

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pOrganizationKey = new JsonString(L"organization");
    pJsonObject->Add(pOrganizationKey, toJson(getPOrganization(), "String", ""));

    JsonString *pParametersKey = new JsonString(L"parameters");
    pJsonObject->Add(pParametersKey, toJson(getPParameters(), "SamiHudsonmodelStringParameterDefinition", "array"));

    JsonString *pPermissionsKey = new JsonString(L"permissions");
    pJsonObject->Add(pPermissionsKey, toJson(getPPermissions(), "SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions", ""));

    JsonString *pWeatherScoreKey = new JsonString(L"weatherScore");
    pJsonObject->Add(pWeatherScoreKey, toJson(getPWeatherScore(), "Integer", ""));

    JsonString *pPullRequestKey = new JsonString(L"pullRequest");
    pJsonObject->Add(pPullRequestKey, toJson(getPPullRequest(), "String", ""));

    return pJsonObject;
}

String*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPClass() {
    return p_class;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPDisplayName() {
    return pDisplayName;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPDisplayName(String* pDisplayName) {
    this->pDisplayName = pDisplayName;
}

Integer*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPEstimatedDurationInMillis() {
    return pEstimatedDurationInMillis;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis) {
    this->pEstimatedDurationInMillis = pEstimatedDurationInMillis;
}

String*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPFullDisplayName() {
    return pFullDisplayName;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPFullDisplayName(String* pFullDisplayName) {
    this->pFullDisplayName = pFullDisplayName;
}

String*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPFullName() {
    return pFullName;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPFullName(String* pFullName) {
    this->pFullName = pFullName;
}

String*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPName() {
    return pName;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPOrganization() {
    return pOrganization;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPOrganization(String* pOrganization) {
    this->pOrganization = pOrganization;
}

IList*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPParameters() {
    return pParameters;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPParameters(IList* pParameters) {
    this->pParameters = pParameters;
}

SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPPermissions() {
    return pPermissions;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPPermissions(SamiIojenkinsblueoceanrestimplpipelineBranchImpl_permissions* pPermissions) {
    this->pPermissions = pPermissions;
}

Integer*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPWeatherScore() {
    return pWeatherScore;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPWeatherScore(Integer* pWeatherScore) {
    this->pWeatherScore = pWeatherScore;
}

String*
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::getPPullRequest() {
    return pPullRequest;
}
void
SamiIojenkinsblueoceanrestimplpipelineBranchImpl::setPPullRequest(String* pPullRequest) {
    this->pPullRequest = pPullRequest;
}



} /* namespace Swagger */

