
#include "SamiHudsonmodelFreeStyleProject.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelFreeStyleProject::SamiHudsonmodelFreeStyleProject() {
    init();
}

SamiHudsonmodelFreeStyleProject::~SamiHudsonmodelFreeStyleProject() {
    this->cleanup();
}

void
SamiHudsonmodelFreeStyleProject::init() {
    p_class = null;
pName = null;
pUrl = null;
pColor = null;
pActions = null;
pDescription = null;
pDisplayName = null;
pDisplayNameOrNull = null;
pFullDisplayName = null;
pFullName = null;
pBuildable = null;
pBuilds = null;
pFirstBuild = null;
pHealthReport = null;
pInQueue = null;
pKeepDependencies = null;
pLastBuild = null;
pLastCompletedBuild = null;
pLastFailedBuild = null;
pLastStableBuild = null;
pLastSuccessfulBuild = null;
pLastUnstableBuild = null;
pLastUnsuccessfulBuild = null;
pNextBuildNumber = null;
pQueueItem = null;
pConcurrentBuild = null;
pScm = null;
}

void
SamiHudsonmodelFreeStyleProject::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pUrl != null) {
        
        delete pUrl;
        pUrl = null;
    }
if(pColor != null) {
        
        delete pColor;
        pColor = null;
    }
if(pActions != null) {
        pActions->RemoveAll(true);
        delete pActions;
        pActions = null;
    }
if(pDescription != null) {
        
        delete pDescription;
        pDescription = null;
    }
if(pDisplayName != null) {
        
        delete pDisplayName;
        pDisplayName = null;
    }
if(pDisplayNameOrNull != null) {
        
        delete pDisplayNameOrNull;
        pDisplayNameOrNull = null;
    }
if(pFullDisplayName != null) {
        
        delete pFullDisplayName;
        pFullDisplayName = null;
    }
if(pFullName != null) {
        
        delete pFullName;
        pFullName = null;
    }
if(pBuildable != null) {
        
        delete pBuildable;
        pBuildable = null;
    }
if(pBuilds != null) {
        pBuilds->RemoveAll(true);
        delete pBuilds;
        pBuilds = null;
    }
if(pFirstBuild != null) {
        
        delete pFirstBuild;
        pFirstBuild = null;
    }
if(pHealthReport != null) {
        pHealthReport->RemoveAll(true);
        delete pHealthReport;
        pHealthReport = null;
    }
if(pInQueue != null) {
        
        delete pInQueue;
        pInQueue = null;
    }
if(pKeepDependencies != null) {
        
        delete pKeepDependencies;
        pKeepDependencies = null;
    }
if(pLastBuild != null) {
        
        delete pLastBuild;
        pLastBuild = null;
    }
if(pLastCompletedBuild != null) {
        
        delete pLastCompletedBuild;
        pLastCompletedBuild = null;
    }
if(pLastFailedBuild != null) {
        
        delete pLastFailedBuild;
        pLastFailedBuild = null;
    }
if(pLastStableBuild != null) {
        
        delete pLastStableBuild;
        pLastStableBuild = null;
    }
if(pLastSuccessfulBuild != null) {
        
        delete pLastSuccessfulBuild;
        pLastSuccessfulBuild = null;
    }
if(pLastUnstableBuild != null) {
        
        delete pLastUnstableBuild;
        pLastUnstableBuild = null;
    }
if(pLastUnsuccessfulBuild != null) {
        
        delete pLastUnsuccessfulBuild;
        pLastUnsuccessfulBuild = null;
    }
if(pNextBuildNumber != null) {
        
        delete pNextBuildNumber;
        pNextBuildNumber = null;
    }
if(pQueueItem != null) {
        
        delete pQueueItem;
        pQueueItem = null;
    }
if(pConcurrentBuild != null) {
        
        delete pConcurrentBuild;
        pConcurrentBuild = null;
    }
if(pScm != null) {
        
        delete pScm;
        pScm = null;
    }
}


SamiHudsonmodelFreeStyleProject*
SamiHudsonmodelFreeStyleProject::fromJson(String* json) {
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
SamiHudsonmodelFreeStyleProject::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pNameKey = new JsonString(L"name");
        IJsonValue* pNameVal = null;
        pJsonObject->GetValue(pNameKey, pNameVal);
        if(pNameVal != null) {
            
            pName = new String();
            jsonToValue(pName, pNameVal, L"String", L"String");
        }
        delete pNameKey;
JsonString* pUrlKey = new JsonString(L"url");
        IJsonValue* pUrlVal = null;
        pJsonObject->GetValue(pUrlKey, pUrlVal);
        if(pUrlVal != null) {
            
            pUrl = new String();
            jsonToValue(pUrl, pUrlVal, L"String", L"String");
        }
        delete pUrlKey;
JsonString* pColorKey = new JsonString(L"color");
        IJsonValue* pColorVal = null;
        pJsonObject->GetValue(pColorKey, pColorVal);
        if(pColorVal != null) {
            
            pColor = new String();
            jsonToValue(pColor, pColorVal, L"String", L"String");
        }
        delete pColorKey;
JsonString* pActionsKey = new JsonString(L"actions");
        IJsonValue* pActionsVal = null;
        pJsonObject->GetValue(pActionsKey, pActionsVal);
        if(pActionsVal != null) {
            pActions = new ArrayList();
            
            jsonToValue(pActions, pActionsVal, L"IList", L"SamiHudsonmodelFreeStyleProjectactions");
        }
        delete pActionsKey;
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
JsonString* pDisplayNameOrNullKey = new JsonString(L"displayNameOrNull");
        IJsonValue* pDisplayNameOrNullVal = null;
        pJsonObject->GetValue(pDisplayNameOrNullKey, pDisplayNameOrNullVal);
        if(pDisplayNameOrNullVal != null) {
            
            pDisplayNameOrNull = new String();
            jsonToValue(pDisplayNameOrNull, pDisplayNameOrNullVal, L"String", L"String");
        }
        delete pDisplayNameOrNullKey;
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
JsonString* pBuildableKey = new JsonString(L"buildable");
        IJsonValue* pBuildableVal = null;
        pJsonObject->GetValue(pBuildableKey, pBuildableVal);
        if(pBuildableVal != null) {
            
            pBuildable = new Boolean(false);
            jsonToValue(pBuildable, pBuildableVal, L"Boolean", L"Boolean");
        }
        delete pBuildableKey;
JsonString* pBuildsKey = new JsonString(L"builds");
        IJsonValue* pBuildsVal = null;
        pJsonObject->GetValue(pBuildsKey, pBuildsVal);
        if(pBuildsVal != null) {
            pBuilds = new ArrayList();
            
            jsonToValue(pBuilds, pBuildsVal, L"IList", L"SamiHudsonmodelFreeStyleBuild");
        }
        delete pBuildsKey;
JsonString* pFirstBuildKey = new JsonString(L"firstBuild");
        IJsonValue* pFirstBuildVal = null;
        pJsonObject->GetValue(pFirstBuildKey, pFirstBuildVal);
        if(pFirstBuildVal != null) {
            
            pFirstBuild = new SamiHudsonmodelFreeStyleBuild();
            jsonToValue(pFirstBuild, pFirstBuildVal, L"SamiHudsonmodelFreeStyleBuild", L"SamiHudsonmodelFreeStyleBuild");
        }
        delete pFirstBuildKey;
JsonString* pHealthReportKey = new JsonString(L"healthReport");
        IJsonValue* pHealthReportVal = null;
        pJsonObject->GetValue(pHealthReportKey, pHealthReportVal);
        if(pHealthReportVal != null) {
            pHealthReport = new ArrayList();
            
            jsonToValue(pHealthReport, pHealthReportVal, L"IList", L"SamiHudsonmodelFreeStyleProjecthealthReport");
        }
        delete pHealthReportKey;
JsonString* pInQueueKey = new JsonString(L"inQueue");
        IJsonValue* pInQueueVal = null;
        pJsonObject->GetValue(pInQueueKey, pInQueueVal);
        if(pInQueueVal != null) {
            
            pInQueue = new Boolean(false);
            jsonToValue(pInQueue, pInQueueVal, L"Boolean", L"Boolean");
        }
        delete pInQueueKey;
JsonString* pKeepDependenciesKey = new JsonString(L"keepDependencies");
        IJsonValue* pKeepDependenciesVal = null;
        pJsonObject->GetValue(pKeepDependenciesKey, pKeepDependenciesVal);
        if(pKeepDependenciesVal != null) {
            
            pKeepDependencies = new Boolean(false);
            jsonToValue(pKeepDependencies, pKeepDependenciesVal, L"Boolean", L"Boolean");
        }
        delete pKeepDependenciesKey;
JsonString* pLastBuildKey = new JsonString(L"lastBuild");
        IJsonValue* pLastBuildVal = null;
        pJsonObject->GetValue(pLastBuildKey, pLastBuildVal);
        if(pLastBuildVal != null) {
            
            pLastBuild = new SamiHudsonmodelFreeStyleBuild();
            jsonToValue(pLastBuild, pLastBuildVal, L"SamiHudsonmodelFreeStyleBuild", L"SamiHudsonmodelFreeStyleBuild");
        }
        delete pLastBuildKey;
JsonString* pLastCompletedBuildKey = new JsonString(L"lastCompletedBuild");
        IJsonValue* pLastCompletedBuildVal = null;
        pJsonObject->GetValue(pLastCompletedBuildKey, pLastCompletedBuildVal);
        if(pLastCompletedBuildVal != null) {
            
            pLastCompletedBuild = new SamiHudsonmodelFreeStyleBuild();
            jsonToValue(pLastCompletedBuild, pLastCompletedBuildVal, L"SamiHudsonmodelFreeStyleBuild", L"SamiHudsonmodelFreeStyleBuild");
        }
        delete pLastCompletedBuildKey;
JsonString* pLastFailedBuildKey = new JsonString(L"lastFailedBuild");
        IJsonValue* pLastFailedBuildVal = null;
        pJsonObject->GetValue(pLastFailedBuildKey, pLastFailedBuildVal);
        if(pLastFailedBuildVal != null) {
            
            pLastFailedBuild = new String();
            jsonToValue(pLastFailedBuild, pLastFailedBuildVal, L"String", L"String");
        }
        delete pLastFailedBuildKey;
JsonString* pLastStableBuildKey = new JsonString(L"lastStableBuild");
        IJsonValue* pLastStableBuildVal = null;
        pJsonObject->GetValue(pLastStableBuildKey, pLastStableBuildVal);
        if(pLastStableBuildVal != null) {
            
            pLastStableBuild = new SamiHudsonmodelFreeStyleBuild();
            jsonToValue(pLastStableBuild, pLastStableBuildVal, L"SamiHudsonmodelFreeStyleBuild", L"SamiHudsonmodelFreeStyleBuild");
        }
        delete pLastStableBuildKey;
JsonString* pLastSuccessfulBuildKey = new JsonString(L"lastSuccessfulBuild");
        IJsonValue* pLastSuccessfulBuildVal = null;
        pJsonObject->GetValue(pLastSuccessfulBuildKey, pLastSuccessfulBuildVal);
        if(pLastSuccessfulBuildVal != null) {
            
            pLastSuccessfulBuild = new SamiHudsonmodelFreeStyleBuild();
            jsonToValue(pLastSuccessfulBuild, pLastSuccessfulBuildVal, L"SamiHudsonmodelFreeStyleBuild", L"SamiHudsonmodelFreeStyleBuild");
        }
        delete pLastSuccessfulBuildKey;
JsonString* pLastUnstableBuildKey = new JsonString(L"lastUnstableBuild");
        IJsonValue* pLastUnstableBuildVal = null;
        pJsonObject->GetValue(pLastUnstableBuildKey, pLastUnstableBuildVal);
        if(pLastUnstableBuildVal != null) {
            
            pLastUnstableBuild = new String();
            jsonToValue(pLastUnstableBuild, pLastUnstableBuildVal, L"String", L"String");
        }
        delete pLastUnstableBuildKey;
JsonString* pLastUnsuccessfulBuildKey = new JsonString(L"lastUnsuccessfulBuild");
        IJsonValue* pLastUnsuccessfulBuildVal = null;
        pJsonObject->GetValue(pLastUnsuccessfulBuildKey, pLastUnsuccessfulBuildVal);
        if(pLastUnsuccessfulBuildVal != null) {
            
            pLastUnsuccessfulBuild = new String();
            jsonToValue(pLastUnsuccessfulBuild, pLastUnsuccessfulBuildVal, L"String", L"String");
        }
        delete pLastUnsuccessfulBuildKey;
JsonString* pNextBuildNumberKey = new JsonString(L"nextBuildNumber");
        IJsonValue* pNextBuildNumberVal = null;
        pJsonObject->GetValue(pNextBuildNumberKey, pNextBuildNumberVal);
        if(pNextBuildNumberVal != null) {
            
            pNextBuildNumber = null;
            jsonToValue(pNextBuildNumber, pNextBuildNumberVal, L"Integer", L"Integer");
        }
        delete pNextBuildNumberKey;
JsonString* pQueueItemKey = new JsonString(L"queueItem");
        IJsonValue* pQueueItemVal = null;
        pJsonObject->GetValue(pQueueItemKey, pQueueItemVal);
        if(pQueueItemVal != null) {
            
            pQueueItem = new String();
            jsonToValue(pQueueItem, pQueueItemVal, L"String", L"String");
        }
        delete pQueueItemKey;
JsonString* pConcurrentBuildKey = new JsonString(L"concurrentBuild");
        IJsonValue* pConcurrentBuildVal = null;
        pJsonObject->GetValue(pConcurrentBuildKey, pConcurrentBuildVal);
        if(pConcurrentBuildVal != null) {
            
            pConcurrentBuild = new Boolean(false);
            jsonToValue(pConcurrentBuild, pConcurrentBuildVal, L"Boolean", L"Boolean");
        }
        delete pConcurrentBuildKey;
JsonString* pScmKey = new JsonString(L"scm");
        IJsonValue* pScmVal = null;
        pJsonObject->GetValue(pScmKey, pScmVal);
        if(pScmVal != null) {
            
            pScm = new SamiHudsonscmNullSCM();
            jsonToValue(pScm, pScmVal, L"SamiHudsonscmNullSCM", L"SamiHudsonscmNullSCM");
        }
        delete pScmKey;
    }
}

SamiHudsonmodelFreeStyleProject::SamiHudsonmodelFreeStyleProject(String* json) {
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
SamiHudsonmodelFreeStyleProject::asJson ()
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
SamiHudsonmodelFreeStyleProject::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pUrlKey = new JsonString(L"url");
    pJsonObject->Add(pUrlKey, toJson(getPUrl(), "String", ""));

    JsonString *pColorKey = new JsonString(L"color");
    pJsonObject->Add(pColorKey, toJson(getPColor(), "String", ""));

    JsonString *pActionsKey = new JsonString(L"actions");
    pJsonObject->Add(pActionsKey, toJson(getPActions(), "SamiHudsonmodelFreeStyleProjectactions", "array"));

    JsonString *pDescriptionKey = new JsonString(L"description");
    pJsonObject->Add(pDescriptionKey, toJson(getPDescription(), "String", ""));

    JsonString *pDisplayNameKey = new JsonString(L"displayName");
    pJsonObject->Add(pDisplayNameKey, toJson(getPDisplayName(), "String", ""));

    JsonString *pDisplayNameOrNullKey = new JsonString(L"displayNameOrNull");
    pJsonObject->Add(pDisplayNameOrNullKey, toJson(getPDisplayNameOrNull(), "String", ""));

    JsonString *pFullDisplayNameKey = new JsonString(L"fullDisplayName");
    pJsonObject->Add(pFullDisplayNameKey, toJson(getPFullDisplayName(), "String", ""));

    JsonString *pFullNameKey = new JsonString(L"fullName");
    pJsonObject->Add(pFullNameKey, toJson(getPFullName(), "String", ""));

    JsonString *pBuildableKey = new JsonString(L"buildable");
    pJsonObject->Add(pBuildableKey, toJson(getPBuildable(), "Boolean", ""));

    JsonString *pBuildsKey = new JsonString(L"builds");
    pJsonObject->Add(pBuildsKey, toJson(getPBuilds(), "SamiHudsonmodelFreeStyleBuild", "array"));

    JsonString *pFirstBuildKey = new JsonString(L"firstBuild");
    pJsonObject->Add(pFirstBuildKey, toJson(getPFirstBuild(), "SamiHudsonmodelFreeStyleBuild", ""));

    JsonString *pHealthReportKey = new JsonString(L"healthReport");
    pJsonObject->Add(pHealthReportKey, toJson(getPHealthReport(), "SamiHudsonmodelFreeStyleProjecthealthReport", "array"));

    JsonString *pInQueueKey = new JsonString(L"inQueue");
    pJsonObject->Add(pInQueueKey, toJson(getPInQueue(), "Boolean", ""));

    JsonString *pKeepDependenciesKey = new JsonString(L"keepDependencies");
    pJsonObject->Add(pKeepDependenciesKey, toJson(getPKeepDependencies(), "Boolean", ""));

    JsonString *pLastBuildKey = new JsonString(L"lastBuild");
    pJsonObject->Add(pLastBuildKey, toJson(getPLastBuild(), "SamiHudsonmodelFreeStyleBuild", ""));

    JsonString *pLastCompletedBuildKey = new JsonString(L"lastCompletedBuild");
    pJsonObject->Add(pLastCompletedBuildKey, toJson(getPLastCompletedBuild(), "SamiHudsonmodelFreeStyleBuild", ""));

    JsonString *pLastFailedBuildKey = new JsonString(L"lastFailedBuild");
    pJsonObject->Add(pLastFailedBuildKey, toJson(getPLastFailedBuild(), "String", ""));

    JsonString *pLastStableBuildKey = new JsonString(L"lastStableBuild");
    pJsonObject->Add(pLastStableBuildKey, toJson(getPLastStableBuild(), "SamiHudsonmodelFreeStyleBuild", ""));

    JsonString *pLastSuccessfulBuildKey = new JsonString(L"lastSuccessfulBuild");
    pJsonObject->Add(pLastSuccessfulBuildKey, toJson(getPLastSuccessfulBuild(), "SamiHudsonmodelFreeStyleBuild", ""));

    JsonString *pLastUnstableBuildKey = new JsonString(L"lastUnstableBuild");
    pJsonObject->Add(pLastUnstableBuildKey, toJson(getPLastUnstableBuild(), "String", ""));

    JsonString *pLastUnsuccessfulBuildKey = new JsonString(L"lastUnsuccessfulBuild");
    pJsonObject->Add(pLastUnsuccessfulBuildKey, toJson(getPLastUnsuccessfulBuild(), "String", ""));

    JsonString *pNextBuildNumberKey = new JsonString(L"nextBuildNumber");
    pJsonObject->Add(pNextBuildNumberKey, toJson(getPNextBuildNumber(), "Integer", ""));

    JsonString *pQueueItemKey = new JsonString(L"queueItem");
    pJsonObject->Add(pQueueItemKey, toJson(getPQueueItem(), "String", ""));

    JsonString *pConcurrentBuildKey = new JsonString(L"concurrentBuild");
    pJsonObject->Add(pConcurrentBuildKey, toJson(getPConcurrentBuild(), "Boolean", ""));

    JsonString *pScmKey = new JsonString(L"scm");
    pJsonObject->Add(pScmKey, toJson(getPScm(), "SamiHudsonscmNullSCM", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelFreeStyleProject::getPClass() {
    return p_class;
}
void
SamiHudsonmodelFreeStyleProject::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiHudsonmodelFreeStyleProject::getPName() {
    return pName;
}
void
SamiHudsonmodelFreeStyleProject::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiHudsonmodelFreeStyleProject::getPUrl() {
    return pUrl;
}
void
SamiHudsonmodelFreeStyleProject::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}

String*
SamiHudsonmodelFreeStyleProject::getPColor() {
    return pColor;
}
void
SamiHudsonmodelFreeStyleProject::setPColor(String* pColor) {
    this->pColor = pColor;
}

IList*
SamiHudsonmodelFreeStyleProject::getPActions() {
    return pActions;
}
void
SamiHudsonmodelFreeStyleProject::setPActions(IList* pActions) {
    this->pActions = pActions;
}

String*
SamiHudsonmodelFreeStyleProject::getPDescription() {
    return pDescription;
}
void
SamiHudsonmodelFreeStyleProject::setPDescription(String* pDescription) {
    this->pDescription = pDescription;
}

String*
SamiHudsonmodelFreeStyleProject::getPDisplayName() {
    return pDisplayName;
}
void
SamiHudsonmodelFreeStyleProject::setPDisplayName(String* pDisplayName) {
    this->pDisplayName = pDisplayName;
}

String*
SamiHudsonmodelFreeStyleProject::getPDisplayNameOrNull() {
    return pDisplayNameOrNull;
}
void
SamiHudsonmodelFreeStyleProject::setPDisplayNameOrNull(String* pDisplayNameOrNull) {
    this->pDisplayNameOrNull = pDisplayNameOrNull;
}

String*
SamiHudsonmodelFreeStyleProject::getPFullDisplayName() {
    return pFullDisplayName;
}
void
SamiHudsonmodelFreeStyleProject::setPFullDisplayName(String* pFullDisplayName) {
    this->pFullDisplayName = pFullDisplayName;
}

String*
SamiHudsonmodelFreeStyleProject::getPFullName() {
    return pFullName;
}
void
SamiHudsonmodelFreeStyleProject::setPFullName(String* pFullName) {
    this->pFullName = pFullName;
}

Boolean*
SamiHudsonmodelFreeStyleProject::getPBuildable() {
    return pBuildable;
}
void
SamiHudsonmodelFreeStyleProject::setPBuildable(Boolean* pBuildable) {
    this->pBuildable = pBuildable;
}

IList*
SamiHudsonmodelFreeStyleProject::getPBuilds() {
    return pBuilds;
}
void
SamiHudsonmodelFreeStyleProject::setPBuilds(IList* pBuilds) {
    this->pBuilds = pBuilds;
}

SamiHudsonmodelFreeStyleBuild*
SamiHudsonmodelFreeStyleProject::getPFirstBuild() {
    return pFirstBuild;
}
void
SamiHudsonmodelFreeStyleProject::setPFirstBuild(SamiHudsonmodelFreeStyleBuild* pFirstBuild) {
    this->pFirstBuild = pFirstBuild;
}

IList*
SamiHudsonmodelFreeStyleProject::getPHealthReport() {
    return pHealthReport;
}
void
SamiHudsonmodelFreeStyleProject::setPHealthReport(IList* pHealthReport) {
    this->pHealthReport = pHealthReport;
}

Boolean*
SamiHudsonmodelFreeStyleProject::getPInQueue() {
    return pInQueue;
}
void
SamiHudsonmodelFreeStyleProject::setPInQueue(Boolean* pInQueue) {
    this->pInQueue = pInQueue;
}

Boolean*
SamiHudsonmodelFreeStyleProject::getPKeepDependencies() {
    return pKeepDependencies;
}
void
SamiHudsonmodelFreeStyleProject::setPKeepDependencies(Boolean* pKeepDependencies) {
    this->pKeepDependencies = pKeepDependencies;
}

SamiHudsonmodelFreeStyleBuild*
SamiHudsonmodelFreeStyleProject::getPLastBuild() {
    return pLastBuild;
}
void
SamiHudsonmodelFreeStyleProject::setPLastBuild(SamiHudsonmodelFreeStyleBuild* pLastBuild) {
    this->pLastBuild = pLastBuild;
}

SamiHudsonmodelFreeStyleBuild*
SamiHudsonmodelFreeStyleProject::getPLastCompletedBuild() {
    return pLastCompletedBuild;
}
void
SamiHudsonmodelFreeStyleProject::setPLastCompletedBuild(SamiHudsonmodelFreeStyleBuild* pLastCompletedBuild) {
    this->pLastCompletedBuild = pLastCompletedBuild;
}

String*
SamiHudsonmodelFreeStyleProject::getPLastFailedBuild() {
    return pLastFailedBuild;
}
void
SamiHudsonmodelFreeStyleProject::setPLastFailedBuild(String* pLastFailedBuild) {
    this->pLastFailedBuild = pLastFailedBuild;
}

SamiHudsonmodelFreeStyleBuild*
SamiHudsonmodelFreeStyleProject::getPLastStableBuild() {
    return pLastStableBuild;
}
void
SamiHudsonmodelFreeStyleProject::setPLastStableBuild(SamiHudsonmodelFreeStyleBuild* pLastStableBuild) {
    this->pLastStableBuild = pLastStableBuild;
}

SamiHudsonmodelFreeStyleBuild*
SamiHudsonmodelFreeStyleProject::getPLastSuccessfulBuild() {
    return pLastSuccessfulBuild;
}
void
SamiHudsonmodelFreeStyleProject::setPLastSuccessfulBuild(SamiHudsonmodelFreeStyleBuild* pLastSuccessfulBuild) {
    this->pLastSuccessfulBuild = pLastSuccessfulBuild;
}

String*
SamiHudsonmodelFreeStyleProject::getPLastUnstableBuild() {
    return pLastUnstableBuild;
}
void
SamiHudsonmodelFreeStyleProject::setPLastUnstableBuild(String* pLastUnstableBuild) {
    this->pLastUnstableBuild = pLastUnstableBuild;
}

String*
SamiHudsonmodelFreeStyleProject::getPLastUnsuccessfulBuild() {
    return pLastUnsuccessfulBuild;
}
void
SamiHudsonmodelFreeStyleProject::setPLastUnsuccessfulBuild(String* pLastUnsuccessfulBuild) {
    this->pLastUnsuccessfulBuild = pLastUnsuccessfulBuild;
}

Integer*
SamiHudsonmodelFreeStyleProject::getPNextBuildNumber() {
    return pNextBuildNumber;
}
void
SamiHudsonmodelFreeStyleProject::setPNextBuildNumber(Integer* pNextBuildNumber) {
    this->pNextBuildNumber = pNextBuildNumber;
}

String*
SamiHudsonmodelFreeStyleProject::getPQueueItem() {
    return pQueueItem;
}
void
SamiHudsonmodelFreeStyleProject::setPQueueItem(String* pQueueItem) {
    this->pQueueItem = pQueueItem;
}

Boolean*
SamiHudsonmodelFreeStyleProject::getPConcurrentBuild() {
    return pConcurrentBuild;
}
void
SamiHudsonmodelFreeStyleProject::setPConcurrentBuild(Boolean* pConcurrentBuild) {
    this->pConcurrentBuild = pConcurrentBuild;
}

SamiHudsonscmNullSCM*
SamiHudsonmodelFreeStyleProject::getPScm() {
    return pScm;
}
void
SamiHudsonmodelFreeStyleProject::setPScm(SamiHudsonscmNullSCM* pScm) {
    this->pScm = pScm;
}



} /* namespace Swagger */

