
#include "SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl() {
    init();
}

SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::~SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl() {
    this->cleanup();
}

void
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::init() {
    p_class = null;
pDisplayName = null;
pEstimatedDurationInMillis = null;
pFullName = null;
pLatestRun = null;
pName = null;
pOrganization = null;
pWeatherScore = null;
}

void
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::cleanup() {
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
if(pFullName != null) {
        
        delete pFullName;
        pFullName = null;
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
}


SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl*
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::fromJson(String* json) {
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
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pFullNameKey = new JsonString(L"fullName");
        IJsonValue* pFullNameVal = null;
        pJsonObject->GetValue(pFullNameKey, pFullNameVal);
        if(pFullNameVal != null) {
            
            pFullName = new String();
            jsonToValue(pFullName, pFullNameVal, L"String", L"String");
        }
        delete pFullNameKey;
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
    }
}

SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl(String* json) {
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
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::asJson ()
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
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pDisplayNameKey = new JsonString(L"displayName");
    pJsonObject->Add(pDisplayNameKey, toJson(getPDisplayName(), "String", ""));

    JsonString *pEstimatedDurationInMillisKey = new JsonString(L"estimatedDurationInMillis");
    pJsonObject->Add(pEstimatedDurationInMillisKey, toJson(getPEstimatedDurationInMillis(), "Integer", ""));

    JsonString *pFullNameKey = new JsonString(L"fullName");
    pJsonObject->Add(pFullNameKey, toJson(getPFullName(), "String", ""));

    JsonString *pLatestRunKey = new JsonString(L"latestRun");
    pJsonObject->Add(pLatestRunKey, toJson(getPLatestRun(), "String", ""));

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pOrganizationKey = new JsonString(L"organization");
    pJsonObject->Add(pOrganizationKey, toJson(getPOrganization(), "String", ""));

    JsonString *pWeatherScoreKey = new JsonString(L"weatherScore");
    pJsonObject->Add(pWeatherScoreKey, toJson(getPWeatherScore(), "Integer", ""));

    return pJsonObject;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::getPClass() {
    return p_class;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::getPDisplayName() {
    return pDisplayName;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::setPDisplayName(String* pDisplayName) {
    this->pDisplayName = pDisplayName;
}

Integer*
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::getPEstimatedDurationInMillis() {
    return pEstimatedDurationInMillis;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::setPEstimatedDurationInMillis(Integer* pEstimatedDurationInMillis) {
    this->pEstimatedDurationInMillis = pEstimatedDurationInMillis;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::getPFullName() {
    return pFullName;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::setPFullName(String* pFullName) {
    this->pFullName = pFullName;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::getPLatestRun() {
    return pLatestRun;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::setPLatestRun(String* pLatestRun) {
    this->pLatestRun = pLatestRun;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::getPName() {
    return pName;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::getPOrganization() {
    return pOrganization;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::setPOrganization(String* pOrganization) {
    this->pOrganization = pOrganization;
}

Integer*
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::getPWeatherScore() {
    return pWeatherScore;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl::setPWeatherScore(Integer* pWeatherScore) {
    this->pWeatherScore = pWeatherScore;
}



} /* namespace Swagger */

