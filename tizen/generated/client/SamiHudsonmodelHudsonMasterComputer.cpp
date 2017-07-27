
#include "SamiHudsonmodelHudsonMasterComputer.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelHudsonMasterComputer::SamiHudsonmodelHudsonMasterComputer() {
    init();
}

SamiHudsonmodelHudsonMasterComputer::~SamiHudsonmodelHudsonMasterComputer() {
    this->cleanup();
}

void
SamiHudsonmodelHudsonMasterComputer::init() {
    p_class = null;
pDisplayName = null;
pExecutors = null;
pIcon = null;
pIconClassName = null;
pIdle = null;
pJnlpAgent = null;
pLaunchSupported = null;
pLoadStatistics = null;
pManualLaunchAllowed = null;
pMonitorData = null;
pNumExecutors = null;
pOffline = null;
pOfflineCause = null;
pOfflineCauseReason = null;
pTemporarilyOffline = null;
}

void
SamiHudsonmodelHudsonMasterComputer::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pDisplayName != null) {
        
        delete pDisplayName;
        pDisplayName = null;
    }
if(pExecutors != null) {
        pExecutors->RemoveAll(true);
        delete pExecutors;
        pExecutors = null;
    }
if(pIcon != null) {
        
        delete pIcon;
        pIcon = null;
    }
if(pIconClassName != null) {
        
        delete pIconClassName;
        pIconClassName = null;
    }
if(pIdle != null) {
        
        delete pIdle;
        pIdle = null;
    }
if(pJnlpAgent != null) {
        
        delete pJnlpAgent;
        pJnlpAgent = null;
    }
if(pLaunchSupported != null) {
        
        delete pLaunchSupported;
        pLaunchSupported = null;
    }
if(pLoadStatistics != null) {
        
        delete pLoadStatistics;
        pLoadStatistics = null;
    }
if(pManualLaunchAllowed != null) {
        
        delete pManualLaunchAllowed;
        pManualLaunchAllowed = null;
    }
if(pMonitorData != null) {
        
        delete pMonitorData;
        pMonitorData = null;
    }
if(pNumExecutors != null) {
        
        delete pNumExecutors;
        pNumExecutors = null;
    }
if(pOffline != null) {
        
        delete pOffline;
        pOffline = null;
    }
if(pOfflineCause != null) {
        
        delete pOfflineCause;
        pOfflineCause = null;
    }
if(pOfflineCauseReason != null) {
        
        delete pOfflineCauseReason;
        pOfflineCauseReason = null;
    }
if(pTemporarilyOffline != null) {
        
        delete pTemporarilyOffline;
        pTemporarilyOffline = null;
    }
}


SamiHudsonmodelHudsonMasterComputer*
SamiHudsonmodelHudsonMasterComputer::fromJson(String* json) {
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
SamiHudsonmodelHudsonMasterComputer::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pExecutorsKey = new JsonString(L"executors");
        IJsonValue* pExecutorsVal = null;
        pJsonObject->GetValue(pExecutorsKey, pExecutorsVal);
        if(pExecutorsVal != null) {
            pExecutors = new ArrayList();
            
            jsonToValue(pExecutors, pExecutorsVal, L"IList", L"SamiHudsonmodelHudsonMasterComputerexecutors");
        }
        delete pExecutorsKey;
JsonString* pIconKey = new JsonString(L"icon");
        IJsonValue* pIconVal = null;
        pJsonObject->GetValue(pIconKey, pIconVal);
        if(pIconVal != null) {
            
            pIcon = new String();
            jsonToValue(pIcon, pIconVal, L"String", L"String");
        }
        delete pIconKey;
JsonString* pIconClassNameKey = new JsonString(L"iconClassName");
        IJsonValue* pIconClassNameVal = null;
        pJsonObject->GetValue(pIconClassNameKey, pIconClassNameVal);
        if(pIconClassNameVal != null) {
            
            pIconClassName = new String();
            jsonToValue(pIconClassName, pIconClassNameVal, L"String", L"String");
        }
        delete pIconClassNameKey;
JsonString* pIdleKey = new JsonString(L"idle");
        IJsonValue* pIdleVal = null;
        pJsonObject->GetValue(pIdleKey, pIdleVal);
        if(pIdleVal != null) {
            
            pIdle = new Boolean(false);
            jsonToValue(pIdle, pIdleVal, L"Boolean", L"Boolean");
        }
        delete pIdleKey;
JsonString* pJnlpAgentKey = new JsonString(L"jnlpAgent");
        IJsonValue* pJnlpAgentVal = null;
        pJsonObject->GetValue(pJnlpAgentKey, pJnlpAgentVal);
        if(pJnlpAgentVal != null) {
            
            pJnlpAgent = new Boolean(false);
            jsonToValue(pJnlpAgent, pJnlpAgentVal, L"Boolean", L"Boolean");
        }
        delete pJnlpAgentKey;
JsonString* pLaunchSupportedKey = new JsonString(L"launchSupported");
        IJsonValue* pLaunchSupportedVal = null;
        pJsonObject->GetValue(pLaunchSupportedKey, pLaunchSupportedVal);
        if(pLaunchSupportedVal != null) {
            
            pLaunchSupported = new Boolean(false);
            jsonToValue(pLaunchSupported, pLaunchSupportedVal, L"Boolean", L"Boolean");
        }
        delete pLaunchSupportedKey;
JsonString* pLoadStatisticsKey = new JsonString(L"loadStatistics");
        IJsonValue* pLoadStatisticsVal = null;
        pJsonObject->GetValue(pLoadStatisticsKey, pLoadStatisticsVal);
        if(pLoadStatisticsVal != null) {
            
            pLoadStatistics = new SamiHudsonmodelLabel1();
            jsonToValue(pLoadStatistics, pLoadStatisticsVal, L"SamiHudsonmodelLabel1", L"SamiHudsonmodelLabel1");
        }
        delete pLoadStatisticsKey;
JsonString* pManualLaunchAllowedKey = new JsonString(L"manualLaunchAllowed");
        IJsonValue* pManualLaunchAllowedVal = null;
        pJsonObject->GetValue(pManualLaunchAllowedKey, pManualLaunchAllowedVal);
        if(pManualLaunchAllowedVal != null) {
            
            pManualLaunchAllowed = new Boolean(false);
            jsonToValue(pManualLaunchAllowed, pManualLaunchAllowedVal, L"Boolean", L"Boolean");
        }
        delete pManualLaunchAllowedKey;
JsonString* pMonitorDataKey = new JsonString(L"monitorData");
        IJsonValue* pMonitorDataVal = null;
        pJsonObject->GetValue(pMonitorDataKey, pMonitorDataVal);
        if(pMonitorDataVal != null) {
            
            pMonitorData = new SamiHudsonmodelHudsonMasterComputer_monitorData();
            jsonToValue(pMonitorData, pMonitorDataVal, L"SamiHudsonmodelHudsonMasterComputer_monitorData", L"SamiHudsonmodelHudsonMasterComputer_monitorData");
        }
        delete pMonitorDataKey;
JsonString* pNumExecutorsKey = new JsonString(L"numExecutors");
        IJsonValue* pNumExecutorsVal = null;
        pJsonObject->GetValue(pNumExecutorsKey, pNumExecutorsVal);
        if(pNumExecutorsVal != null) {
            
            pNumExecutors = null;
            jsonToValue(pNumExecutors, pNumExecutorsVal, L"Integer", L"Integer");
        }
        delete pNumExecutorsKey;
JsonString* pOfflineKey = new JsonString(L"offline");
        IJsonValue* pOfflineVal = null;
        pJsonObject->GetValue(pOfflineKey, pOfflineVal);
        if(pOfflineVal != null) {
            
            pOffline = new Boolean(false);
            jsonToValue(pOffline, pOfflineVal, L"Boolean", L"Boolean");
        }
        delete pOfflineKey;
JsonString* pOfflineCauseKey = new JsonString(L"offlineCause");
        IJsonValue* pOfflineCauseVal = null;
        pJsonObject->GetValue(pOfflineCauseKey, pOfflineCauseVal);
        if(pOfflineCauseVal != null) {
            
            pOfflineCause = new String();
            jsonToValue(pOfflineCause, pOfflineCauseVal, L"String", L"String");
        }
        delete pOfflineCauseKey;
JsonString* pOfflineCauseReasonKey = new JsonString(L"offlineCauseReason");
        IJsonValue* pOfflineCauseReasonVal = null;
        pJsonObject->GetValue(pOfflineCauseReasonKey, pOfflineCauseReasonVal);
        if(pOfflineCauseReasonVal != null) {
            
            pOfflineCauseReason = new String();
            jsonToValue(pOfflineCauseReason, pOfflineCauseReasonVal, L"String", L"String");
        }
        delete pOfflineCauseReasonKey;
JsonString* pTemporarilyOfflineKey = new JsonString(L"temporarilyOffline");
        IJsonValue* pTemporarilyOfflineVal = null;
        pJsonObject->GetValue(pTemporarilyOfflineKey, pTemporarilyOfflineVal);
        if(pTemporarilyOfflineVal != null) {
            
            pTemporarilyOffline = new Boolean(false);
            jsonToValue(pTemporarilyOffline, pTemporarilyOfflineVal, L"Boolean", L"Boolean");
        }
        delete pTemporarilyOfflineKey;
    }
}

SamiHudsonmodelHudsonMasterComputer::SamiHudsonmodelHudsonMasterComputer(String* json) {
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
SamiHudsonmodelHudsonMasterComputer::asJson ()
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
SamiHudsonmodelHudsonMasterComputer::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pDisplayNameKey = new JsonString(L"displayName");
    pJsonObject->Add(pDisplayNameKey, toJson(getPDisplayName(), "String", ""));

    JsonString *pExecutorsKey = new JsonString(L"executors");
    pJsonObject->Add(pExecutorsKey, toJson(getPExecutors(), "SamiHudsonmodelHudsonMasterComputerexecutors", "array"));

    JsonString *pIconKey = new JsonString(L"icon");
    pJsonObject->Add(pIconKey, toJson(getPIcon(), "String", ""));

    JsonString *pIconClassNameKey = new JsonString(L"iconClassName");
    pJsonObject->Add(pIconClassNameKey, toJson(getPIconClassName(), "String", ""));

    JsonString *pIdleKey = new JsonString(L"idle");
    pJsonObject->Add(pIdleKey, toJson(getPIdle(), "Boolean", ""));

    JsonString *pJnlpAgentKey = new JsonString(L"jnlpAgent");
    pJsonObject->Add(pJnlpAgentKey, toJson(getPJnlpAgent(), "Boolean", ""));

    JsonString *pLaunchSupportedKey = new JsonString(L"launchSupported");
    pJsonObject->Add(pLaunchSupportedKey, toJson(getPLaunchSupported(), "Boolean", ""));

    JsonString *pLoadStatisticsKey = new JsonString(L"loadStatistics");
    pJsonObject->Add(pLoadStatisticsKey, toJson(getPLoadStatistics(), "SamiHudsonmodelLabel1", ""));

    JsonString *pManualLaunchAllowedKey = new JsonString(L"manualLaunchAllowed");
    pJsonObject->Add(pManualLaunchAllowedKey, toJson(getPManualLaunchAllowed(), "Boolean", ""));

    JsonString *pMonitorDataKey = new JsonString(L"monitorData");
    pJsonObject->Add(pMonitorDataKey, toJson(getPMonitorData(), "SamiHudsonmodelHudsonMasterComputer_monitorData", ""));

    JsonString *pNumExecutorsKey = new JsonString(L"numExecutors");
    pJsonObject->Add(pNumExecutorsKey, toJson(getPNumExecutors(), "Integer", ""));

    JsonString *pOfflineKey = new JsonString(L"offline");
    pJsonObject->Add(pOfflineKey, toJson(getPOffline(), "Boolean", ""));

    JsonString *pOfflineCauseKey = new JsonString(L"offlineCause");
    pJsonObject->Add(pOfflineCauseKey, toJson(getPOfflineCause(), "String", ""));

    JsonString *pOfflineCauseReasonKey = new JsonString(L"offlineCauseReason");
    pJsonObject->Add(pOfflineCauseReasonKey, toJson(getPOfflineCauseReason(), "String", ""));

    JsonString *pTemporarilyOfflineKey = new JsonString(L"temporarilyOffline");
    pJsonObject->Add(pTemporarilyOfflineKey, toJson(getPTemporarilyOffline(), "Boolean", ""));

    return pJsonObject;
}

String*
SamiHudsonmodelHudsonMasterComputer::getPClass() {
    return p_class;
}
void
SamiHudsonmodelHudsonMasterComputer::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiHudsonmodelHudsonMasterComputer::getPDisplayName() {
    return pDisplayName;
}
void
SamiHudsonmodelHudsonMasterComputer::setPDisplayName(String* pDisplayName) {
    this->pDisplayName = pDisplayName;
}

IList*
SamiHudsonmodelHudsonMasterComputer::getPExecutors() {
    return pExecutors;
}
void
SamiHudsonmodelHudsonMasterComputer::setPExecutors(IList* pExecutors) {
    this->pExecutors = pExecutors;
}

String*
SamiHudsonmodelHudsonMasterComputer::getPIcon() {
    return pIcon;
}
void
SamiHudsonmodelHudsonMasterComputer::setPIcon(String* pIcon) {
    this->pIcon = pIcon;
}

String*
SamiHudsonmodelHudsonMasterComputer::getPIconClassName() {
    return pIconClassName;
}
void
SamiHudsonmodelHudsonMasterComputer::setPIconClassName(String* pIconClassName) {
    this->pIconClassName = pIconClassName;
}

Boolean*
SamiHudsonmodelHudsonMasterComputer::getPIdle() {
    return pIdle;
}
void
SamiHudsonmodelHudsonMasterComputer::setPIdle(Boolean* pIdle) {
    this->pIdle = pIdle;
}

Boolean*
SamiHudsonmodelHudsonMasterComputer::getPJnlpAgent() {
    return pJnlpAgent;
}
void
SamiHudsonmodelHudsonMasterComputer::setPJnlpAgent(Boolean* pJnlpAgent) {
    this->pJnlpAgent = pJnlpAgent;
}

Boolean*
SamiHudsonmodelHudsonMasterComputer::getPLaunchSupported() {
    return pLaunchSupported;
}
void
SamiHudsonmodelHudsonMasterComputer::setPLaunchSupported(Boolean* pLaunchSupported) {
    this->pLaunchSupported = pLaunchSupported;
}

SamiHudsonmodelLabel1*
SamiHudsonmodelHudsonMasterComputer::getPLoadStatistics() {
    return pLoadStatistics;
}
void
SamiHudsonmodelHudsonMasterComputer::setPLoadStatistics(SamiHudsonmodelLabel1* pLoadStatistics) {
    this->pLoadStatistics = pLoadStatistics;
}

Boolean*
SamiHudsonmodelHudsonMasterComputer::getPManualLaunchAllowed() {
    return pManualLaunchAllowed;
}
void
SamiHudsonmodelHudsonMasterComputer::setPManualLaunchAllowed(Boolean* pManualLaunchAllowed) {
    this->pManualLaunchAllowed = pManualLaunchAllowed;
}

SamiHudsonmodelHudsonMasterComputer_monitorData*
SamiHudsonmodelHudsonMasterComputer::getPMonitorData() {
    return pMonitorData;
}
void
SamiHudsonmodelHudsonMasterComputer::setPMonitorData(SamiHudsonmodelHudsonMasterComputer_monitorData* pMonitorData) {
    this->pMonitorData = pMonitorData;
}

Integer*
SamiHudsonmodelHudsonMasterComputer::getPNumExecutors() {
    return pNumExecutors;
}
void
SamiHudsonmodelHudsonMasterComputer::setPNumExecutors(Integer* pNumExecutors) {
    this->pNumExecutors = pNumExecutors;
}

Boolean*
SamiHudsonmodelHudsonMasterComputer::getPOffline() {
    return pOffline;
}
void
SamiHudsonmodelHudsonMasterComputer::setPOffline(Boolean* pOffline) {
    this->pOffline = pOffline;
}

String*
SamiHudsonmodelHudsonMasterComputer::getPOfflineCause() {
    return pOfflineCause;
}
void
SamiHudsonmodelHudsonMasterComputer::setPOfflineCause(String* pOfflineCause) {
    this->pOfflineCause = pOfflineCause;
}

String*
SamiHudsonmodelHudsonMasterComputer::getPOfflineCauseReason() {
    return pOfflineCauseReason;
}
void
SamiHudsonmodelHudsonMasterComputer::setPOfflineCauseReason(String* pOfflineCauseReason) {
    this->pOfflineCauseReason = pOfflineCauseReason;
}

Boolean*
SamiHudsonmodelHudsonMasterComputer::getPTemporarilyOffline() {
    return pTemporarilyOffline;
}
void
SamiHudsonmodelHudsonMasterComputer::setPTemporarilyOffline(Boolean* pTemporarilyOffline) {
    this->pTemporarilyOffline = pTemporarilyOffline;
}



} /* namespace Swagger */

