
#include "SamiHudsonmodelHudson.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelHudson::SamiHudsonmodelHudson() {
    init();
}

SamiHudsonmodelHudson::~SamiHudsonmodelHudson() {
    this->cleanup();
}

void
SamiHudsonmodelHudson::init() {
    p_class = null;
pAssignedLabels = null;
pMode = null;
pNodeDescription = null;
pNodeName = null;
pNumExecutors = null;
pDescription = null;
pJobs = null;
pPrimaryView = null;
pQuietingDown = null;
pSlaveAgentPort = null;
pUnlabeledLoad = null;
pUseCrumbs = null;
pUseSecurity = null;
pViews = null;
}

void
SamiHudsonmodelHudson::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pAssignedLabels != null) {
        pAssignedLabels->RemoveAll(true);
        delete pAssignedLabels;
        pAssignedLabels = null;
    }
if(pMode != null) {
        
        delete pMode;
        pMode = null;
    }
if(pNodeDescription != null) {
        
        delete pNodeDescription;
        pNodeDescription = null;
    }
if(pNodeName != null) {
        
        delete pNodeName;
        pNodeName = null;
    }
if(pNumExecutors != null) {
        
        delete pNumExecutors;
        pNumExecutors = null;
    }
if(pDescription != null) {
        
        delete pDescription;
        pDescription = null;
    }
if(pJobs != null) {
        pJobs->RemoveAll(true);
        delete pJobs;
        pJobs = null;
    }
if(pPrimaryView != null) {
        
        delete pPrimaryView;
        pPrimaryView = null;
    }
if(pQuietingDown != null) {
        
        delete pQuietingDown;
        pQuietingDown = null;
    }
if(pSlaveAgentPort != null) {
        
        delete pSlaveAgentPort;
        pSlaveAgentPort = null;
    }
if(pUnlabeledLoad != null) {
        
        delete pUnlabeledLoad;
        pUnlabeledLoad = null;
    }
if(pUseCrumbs != null) {
        
        delete pUseCrumbs;
        pUseCrumbs = null;
    }
if(pUseSecurity != null) {
        
        delete pUseSecurity;
        pUseSecurity = null;
    }
if(pViews != null) {
        pViews->RemoveAll(true);
        delete pViews;
        pViews = null;
    }
}


SamiHudsonmodelHudson*
SamiHudsonmodelHudson::fromJson(String* json) {
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
SamiHudsonmodelHudson::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pAssignedLabelsKey = new JsonString(L"assignedLabels");
        IJsonValue* pAssignedLabelsVal = null;
        pJsonObject->GetValue(pAssignedLabelsKey, pAssignedLabelsVal);
        if(pAssignedLabelsVal != null) {
            pAssignedLabels = new ArrayList();
            
            jsonToValue(pAssignedLabels, pAssignedLabelsVal, L"IList", L"SamiHudsonmodelHudsonassignedLabels");
        }
        delete pAssignedLabelsKey;
JsonString* pModeKey = new JsonString(L"mode");
        IJsonValue* pModeVal = null;
        pJsonObject->GetValue(pModeKey, pModeVal);
        if(pModeVal != null) {
            
            pMode = new String();
            jsonToValue(pMode, pModeVal, L"String", L"String");
        }
        delete pModeKey;
JsonString* pNodeDescriptionKey = new JsonString(L"nodeDescription");
        IJsonValue* pNodeDescriptionVal = null;
        pJsonObject->GetValue(pNodeDescriptionKey, pNodeDescriptionVal);
        if(pNodeDescriptionVal != null) {
            
            pNodeDescription = new String();
            jsonToValue(pNodeDescription, pNodeDescriptionVal, L"String", L"String");
        }
        delete pNodeDescriptionKey;
JsonString* pNodeNameKey = new JsonString(L"nodeName");
        IJsonValue* pNodeNameVal = null;
        pJsonObject->GetValue(pNodeNameKey, pNodeNameVal);
        if(pNodeNameVal != null) {
            
            pNodeName = new String();
            jsonToValue(pNodeName, pNodeNameVal, L"String", L"String");
        }
        delete pNodeNameKey;
JsonString* pNumExecutorsKey = new JsonString(L"numExecutors");
        IJsonValue* pNumExecutorsVal = null;
        pJsonObject->GetValue(pNumExecutorsKey, pNumExecutorsVal);
        if(pNumExecutorsVal != null) {
            
            pNumExecutors = null;
            jsonToValue(pNumExecutors, pNumExecutorsVal, L"Integer", L"Integer");
        }
        delete pNumExecutorsKey;
JsonString* pDescriptionKey = new JsonString(L"description");
        IJsonValue* pDescriptionVal = null;
        pJsonObject->GetValue(pDescriptionKey, pDescriptionVal);
        if(pDescriptionVal != null) {
            
            pDescription = new String();
            jsonToValue(pDescription, pDescriptionVal, L"String", L"String");
        }
        delete pDescriptionKey;
JsonString* pJobsKey = new JsonString(L"jobs");
        IJsonValue* pJobsVal = null;
        pJsonObject->GetValue(pJobsKey, pJobsVal);
        if(pJobsVal != null) {
            pJobs = new ArrayList();
            
            jsonToValue(pJobs, pJobsVal, L"IList", L"SamiHudsonmodelFreeStyleProject");
        }
        delete pJobsKey;
JsonString* pPrimaryViewKey = new JsonString(L"primaryView");
        IJsonValue* pPrimaryViewVal = null;
        pJsonObject->GetValue(pPrimaryViewKey, pPrimaryViewVal);
        if(pPrimaryViewVal != null) {
            
            pPrimaryView = new SamiHudsonmodelAllView();
            jsonToValue(pPrimaryView, pPrimaryViewVal, L"SamiHudsonmodelAllView", L"SamiHudsonmodelAllView");
        }
        delete pPrimaryViewKey;
JsonString* pQuietingDownKey = new JsonString(L"quietingDown");
        IJsonValue* pQuietingDownVal = null;
        pJsonObject->GetValue(pQuietingDownKey, pQuietingDownVal);
        if(pQuietingDownVal != null) {
            
            pQuietingDown = new Boolean(false);
            jsonToValue(pQuietingDown, pQuietingDownVal, L"Boolean", L"Boolean");
        }
        delete pQuietingDownKey;
JsonString* pSlaveAgentPortKey = new JsonString(L"slaveAgentPort");
        IJsonValue* pSlaveAgentPortVal = null;
        pJsonObject->GetValue(pSlaveAgentPortKey, pSlaveAgentPortVal);
        if(pSlaveAgentPortVal != null) {
            
            pSlaveAgentPort = null;
            jsonToValue(pSlaveAgentPort, pSlaveAgentPortVal, L"Integer", L"Integer");
        }
        delete pSlaveAgentPortKey;
JsonString* pUnlabeledLoadKey = new JsonString(L"unlabeledLoad");
        IJsonValue* pUnlabeledLoadVal = null;
        pJsonObject->GetValue(pUnlabeledLoadKey, pUnlabeledLoadVal);
        if(pUnlabeledLoadVal != null) {
            
            pUnlabeledLoad = new SamiJenkinsmodelUnlabeledLoadStatistics();
            jsonToValue(pUnlabeledLoad, pUnlabeledLoadVal, L"SamiJenkinsmodelUnlabeledLoadStatistics", L"SamiJenkinsmodelUnlabeledLoadStatistics");
        }
        delete pUnlabeledLoadKey;
JsonString* pUseCrumbsKey = new JsonString(L"useCrumbs");
        IJsonValue* pUseCrumbsVal = null;
        pJsonObject->GetValue(pUseCrumbsKey, pUseCrumbsVal);
        if(pUseCrumbsVal != null) {
            
            pUseCrumbs = new Boolean(false);
            jsonToValue(pUseCrumbs, pUseCrumbsVal, L"Boolean", L"Boolean");
        }
        delete pUseCrumbsKey;
JsonString* pUseSecurityKey = new JsonString(L"useSecurity");
        IJsonValue* pUseSecurityVal = null;
        pJsonObject->GetValue(pUseSecurityKey, pUseSecurityVal);
        if(pUseSecurityVal != null) {
            
            pUseSecurity = new Boolean(false);
            jsonToValue(pUseSecurity, pUseSecurityVal, L"Boolean", L"Boolean");
        }
        delete pUseSecurityKey;
JsonString* pViewsKey = new JsonString(L"views");
        IJsonValue* pViewsVal = null;
        pJsonObject->GetValue(pViewsKey, pViewsVal);
        if(pViewsVal != null) {
            pViews = new ArrayList();
            
            jsonToValue(pViews, pViewsVal, L"IList", L"SamiHudsonmodelAllView");
        }
        delete pViewsKey;
    }
}

SamiHudsonmodelHudson::SamiHudsonmodelHudson(String* json) {
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
SamiHudsonmodelHudson::asJson ()
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
SamiHudsonmodelHudson::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pAssignedLabelsKey = new JsonString(L"assignedLabels");
    pJsonObject->Add(pAssignedLabelsKey, toJson(getPAssignedLabels(), "SamiHudsonmodelHudsonassignedLabels", "array"));

    JsonString *pModeKey = new JsonString(L"mode");
    pJsonObject->Add(pModeKey, toJson(getPMode(), "String", ""));

    JsonString *pNodeDescriptionKey = new JsonString(L"nodeDescription");
    pJsonObject->Add(pNodeDescriptionKey, toJson(getPNodeDescription(), "String", ""));

    JsonString *pNodeNameKey = new JsonString(L"nodeName");
    pJsonObject->Add(pNodeNameKey, toJson(getPNodeName(), "String", ""));

    JsonString *pNumExecutorsKey = new JsonString(L"numExecutors");
    pJsonObject->Add(pNumExecutorsKey, toJson(getPNumExecutors(), "Integer", ""));

    JsonString *pDescriptionKey = new JsonString(L"description");
    pJsonObject->Add(pDescriptionKey, toJson(getPDescription(), "String", ""));

    JsonString *pJobsKey = new JsonString(L"jobs");
    pJsonObject->Add(pJobsKey, toJson(getPJobs(), "SamiHudsonmodelFreeStyleProject", "array"));

    JsonString *pPrimaryViewKey = new JsonString(L"primaryView");
    pJsonObject->Add(pPrimaryViewKey, toJson(getPPrimaryView(), "SamiHudsonmodelAllView", ""));

    JsonString *pQuietingDownKey = new JsonString(L"quietingDown");
    pJsonObject->Add(pQuietingDownKey, toJson(getPQuietingDown(), "Boolean", ""));

    JsonString *pSlaveAgentPortKey = new JsonString(L"slaveAgentPort");
    pJsonObject->Add(pSlaveAgentPortKey, toJson(getPSlaveAgentPort(), "Integer", ""));

    JsonString *pUnlabeledLoadKey = new JsonString(L"unlabeledLoad");
    pJsonObject->Add(pUnlabeledLoadKey, toJson(getPUnlabeledLoad(), "SamiJenkinsmodelUnlabeledLoadStatistics", ""));

    JsonString *pUseCrumbsKey = new JsonString(L"useCrumbs");
    pJsonObject->Add(pUseCrumbsKey, toJson(getPUseCrumbs(), "Boolean", ""));

    JsonString *pUseSecurityKey = new JsonString(L"useSecurity");
    pJsonObject->Add(pUseSecurityKey, toJson(getPUseSecurity(), "Boolean", ""));

    JsonString *pViewsKey = new JsonString(L"views");
    pJsonObject->Add(pViewsKey, toJson(getPViews(), "SamiHudsonmodelAllView", "array"));

    return pJsonObject;
}

String*
SamiHudsonmodelHudson::getPClass() {
    return p_class;
}
void
SamiHudsonmodelHudson::setPClass(String* p_class) {
    this->p_class = p_class;
}

IList*
SamiHudsonmodelHudson::getPAssignedLabels() {
    return pAssignedLabels;
}
void
SamiHudsonmodelHudson::setPAssignedLabels(IList* pAssignedLabels) {
    this->pAssignedLabels = pAssignedLabels;
}

String*
SamiHudsonmodelHudson::getPMode() {
    return pMode;
}
void
SamiHudsonmodelHudson::setPMode(String* pMode) {
    this->pMode = pMode;
}

String*
SamiHudsonmodelHudson::getPNodeDescription() {
    return pNodeDescription;
}
void
SamiHudsonmodelHudson::setPNodeDescription(String* pNodeDescription) {
    this->pNodeDescription = pNodeDescription;
}

String*
SamiHudsonmodelHudson::getPNodeName() {
    return pNodeName;
}
void
SamiHudsonmodelHudson::setPNodeName(String* pNodeName) {
    this->pNodeName = pNodeName;
}

Integer*
SamiHudsonmodelHudson::getPNumExecutors() {
    return pNumExecutors;
}
void
SamiHudsonmodelHudson::setPNumExecutors(Integer* pNumExecutors) {
    this->pNumExecutors = pNumExecutors;
}

String*
SamiHudsonmodelHudson::getPDescription() {
    return pDescription;
}
void
SamiHudsonmodelHudson::setPDescription(String* pDescription) {
    this->pDescription = pDescription;
}

IList*
SamiHudsonmodelHudson::getPJobs() {
    return pJobs;
}
void
SamiHudsonmodelHudson::setPJobs(IList* pJobs) {
    this->pJobs = pJobs;
}

SamiHudsonmodelAllView*
SamiHudsonmodelHudson::getPPrimaryView() {
    return pPrimaryView;
}
void
SamiHudsonmodelHudson::setPPrimaryView(SamiHudsonmodelAllView* pPrimaryView) {
    this->pPrimaryView = pPrimaryView;
}

Boolean*
SamiHudsonmodelHudson::getPQuietingDown() {
    return pQuietingDown;
}
void
SamiHudsonmodelHudson::setPQuietingDown(Boolean* pQuietingDown) {
    this->pQuietingDown = pQuietingDown;
}

Integer*
SamiHudsonmodelHudson::getPSlaveAgentPort() {
    return pSlaveAgentPort;
}
void
SamiHudsonmodelHudson::setPSlaveAgentPort(Integer* pSlaveAgentPort) {
    this->pSlaveAgentPort = pSlaveAgentPort;
}

SamiJenkinsmodelUnlabeledLoadStatistics*
SamiHudsonmodelHudson::getPUnlabeledLoad() {
    return pUnlabeledLoad;
}
void
SamiHudsonmodelHudson::setPUnlabeledLoad(SamiJenkinsmodelUnlabeledLoadStatistics* pUnlabeledLoad) {
    this->pUnlabeledLoad = pUnlabeledLoad;
}

Boolean*
SamiHudsonmodelHudson::getPUseCrumbs() {
    return pUseCrumbs;
}
void
SamiHudsonmodelHudson::setPUseCrumbs(Boolean* pUseCrumbs) {
    this->pUseCrumbs = pUseCrumbs;
}

Boolean*
SamiHudsonmodelHudson::getPUseSecurity() {
    return pUseSecurity;
}
void
SamiHudsonmodelHudson::setPUseSecurity(Boolean* pUseSecurity) {
    this->pUseSecurity = pUseSecurity;
}

IList*
SamiHudsonmodelHudson::getPViews() {
    return pViews;
}
void
SamiHudsonmodelHudson::setPViews(IList* pViews) {
    this->pViews = pViews;
}



} /* namespace Swagger */

