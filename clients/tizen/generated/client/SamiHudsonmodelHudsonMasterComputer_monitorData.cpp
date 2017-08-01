
#include "SamiHudsonmodelHudsonMasterComputer_monitorData.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelHudsonMasterComputer_monitorData::SamiHudsonmodelHudsonMasterComputer_monitorData() {
    init();
}

SamiHudsonmodelHudsonMasterComputer_monitorData::~SamiHudsonmodelHudsonMasterComputer_monitorData() {
    this->cleanup();
}

void
SamiHudsonmodelHudsonMasterComputer_monitorData::init() {
    pHudsonnode_monitorsSwapSpaceMonitor = null;
pHudsonnode_monitorsTemporarySpaceMonitor = null;
pHudsonnode_monitorsDiskSpaceMonitor = null;
pHudsonnode_monitorsArchitectureMonitor = null;
pHudsonnode_monitorsResponseTimeMonitor = null;
pHudsonnode_monitorsClockMonitor = null;
p_class = null;
}

void
SamiHudsonmodelHudsonMasterComputer_monitorData::cleanup() {
    if(pHudsonnode_monitorsSwapSpaceMonitor != null) {
        
        delete pHudsonnode_monitorsSwapSpaceMonitor;
        pHudsonnode_monitorsSwapSpaceMonitor = null;
    }
if(pHudsonnode_monitorsTemporarySpaceMonitor != null) {
        
        delete pHudsonnode_monitorsTemporarySpaceMonitor;
        pHudsonnode_monitorsTemporarySpaceMonitor = null;
    }
if(pHudsonnode_monitorsDiskSpaceMonitor != null) {
        
        delete pHudsonnode_monitorsDiskSpaceMonitor;
        pHudsonnode_monitorsDiskSpaceMonitor = null;
    }
if(pHudsonnode_monitorsArchitectureMonitor != null) {
        
        delete pHudsonnode_monitorsArchitectureMonitor;
        pHudsonnode_monitorsArchitectureMonitor = null;
    }
if(pHudsonnode_monitorsResponseTimeMonitor != null) {
        
        delete pHudsonnode_monitorsResponseTimeMonitor;
        pHudsonnode_monitorsResponseTimeMonitor = null;
    }
if(pHudsonnode_monitorsClockMonitor != null) {
        
        delete pHudsonnode_monitorsClockMonitor;
        pHudsonnode_monitorsClockMonitor = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiHudsonmodelHudsonMasterComputer_monitorData*
SamiHudsonmodelHudsonMasterComputer_monitorData::fromJson(String* json) {
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
SamiHudsonmodelHudsonMasterComputer_monitorData::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* pHudsonnode_monitorsSwapSpaceMonitorKey = new JsonString(L"hudson.node_monitors.SwapSpaceMonitor");
        IJsonValue* pHudsonnode_monitorsSwapSpaceMonitorVal = null;
        pJsonObject->GetValue(pHudsonnode_monitorsSwapSpaceMonitorKey, pHudsonnode_monitorsSwapSpaceMonitorVal);
        if(pHudsonnode_monitorsSwapSpaceMonitorVal != null) {
            
            pHudsonnode_monitorsSwapSpaceMonitor = new SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2();
            jsonToValue(pHudsonnode_monitorsSwapSpaceMonitor, pHudsonnode_monitorsSwapSpaceMonitorVal, L"SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2", L"SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2");
        }
        delete pHudsonnode_monitorsSwapSpaceMonitorKey;
JsonString* pHudsonnode_monitorsTemporarySpaceMonitorKey = new JsonString(L"hudson.node_monitors.TemporarySpaceMonitor");
        IJsonValue* pHudsonnode_monitorsTemporarySpaceMonitorVal = null;
        pJsonObject->GetValue(pHudsonnode_monitorsTemporarySpaceMonitorKey, pHudsonnode_monitorsTemporarySpaceMonitorVal);
        if(pHudsonnode_monitorsTemporarySpaceMonitorVal != null) {
            
            pHudsonnode_monitorsTemporarySpaceMonitor = new SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace();
            jsonToValue(pHudsonnode_monitorsTemporarySpaceMonitor, pHudsonnode_monitorsTemporarySpaceMonitorVal, L"SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace", L"SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace");
        }
        delete pHudsonnode_monitorsTemporarySpaceMonitorKey;
JsonString* pHudsonnode_monitorsDiskSpaceMonitorKey = new JsonString(L"hudson.node_monitors.DiskSpaceMonitor");
        IJsonValue* pHudsonnode_monitorsDiskSpaceMonitorVal = null;
        pJsonObject->GetValue(pHudsonnode_monitorsDiskSpaceMonitorKey, pHudsonnode_monitorsDiskSpaceMonitorVal);
        if(pHudsonnode_monitorsDiskSpaceMonitorVal != null) {
            
            pHudsonnode_monitorsDiskSpaceMonitor = new SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace();
            jsonToValue(pHudsonnode_monitorsDiskSpaceMonitor, pHudsonnode_monitorsDiskSpaceMonitorVal, L"SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace", L"SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace");
        }
        delete pHudsonnode_monitorsDiskSpaceMonitorKey;
JsonString* pHudsonnode_monitorsArchitectureMonitorKey = new JsonString(L"hudson.node_monitors.ArchitectureMonitor");
        IJsonValue* pHudsonnode_monitorsArchitectureMonitorVal = null;
        pJsonObject->GetValue(pHudsonnode_monitorsArchitectureMonitorKey, pHudsonnode_monitorsArchitectureMonitorVal);
        if(pHudsonnode_monitorsArchitectureMonitorVal != null) {
            
            pHudsonnode_monitorsArchitectureMonitor = new String();
            jsonToValue(pHudsonnode_monitorsArchitectureMonitor, pHudsonnode_monitorsArchitectureMonitorVal, L"String", L"String");
        }
        delete pHudsonnode_monitorsArchitectureMonitorKey;
JsonString* pHudsonnode_monitorsResponseTimeMonitorKey = new JsonString(L"hudson.node_monitors.ResponseTimeMonitor");
        IJsonValue* pHudsonnode_monitorsResponseTimeMonitorVal = null;
        pJsonObject->GetValue(pHudsonnode_monitorsResponseTimeMonitorKey, pHudsonnode_monitorsResponseTimeMonitorVal);
        if(pHudsonnode_monitorsResponseTimeMonitorVal != null) {
            
            pHudsonnode_monitorsResponseTimeMonitor = new SamiHudsonnode_monitorsResponseTimeMonitorData();
            jsonToValue(pHudsonnode_monitorsResponseTimeMonitor, pHudsonnode_monitorsResponseTimeMonitorVal, L"SamiHudsonnode_monitorsResponseTimeMonitorData", L"SamiHudsonnode_monitorsResponseTimeMonitorData");
        }
        delete pHudsonnode_monitorsResponseTimeMonitorKey;
JsonString* pHudsonnode_monitorsClockMonitorKey = new JsonString(L"hudson.node_monitors.ClockMonitor");
        IJsonValue* pHudsonnode_monitorsClockMonitorVal = null;
        pJsonObject->GetValue(pHudsonnode_monitorsClockMonitorKey, pHudsonnode_monitorsClockMonitorVal);
        if(pHudsonnode_monitorsClockMonitorVal != null) {
            
            pHudsonnode_monitorsClockMonitor = new SamiHudsonutilClockDifference();
            jsonToValue(pHudsonnode_monitorsClockMonitor, pHudsonnode_monitorsClockMonitorVal, L"SamiHudsonutilClockDifference", L"SamiHudsonutilClockDifference");
        }
        delete pHudsonnode_monitorsClockMonitorKey;
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

SamiHudsonmodelHudsonMasterComputer_monitorData::SamiHudsonmodelHudsonMasterComputer_monitorData(String* json) {
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
SamiHudsonmodelHudsonMasterComputer_monitorData::asJson ()
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
SamiHudsonmodelHudsonMasterComputer_monitorData::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *pHudsonnode_monitorsSwapSpaceMonitorKey = new JsonString(L"hudson.node_monitors.SwapSpaceMonitor");
    pJsonObject->Add(pHudsonnode_monitorsSwapSpaceMonitorKey, toJson(getPHudsonnodeMonitorsSwapSpaceMonitor(), "SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2", ""));

    JsonString *pHudsonnode_monitorsTemporarySpaceMonitorKey = new JsonString(L"hudson.node_monitors.TemporarySpaceMonitor");
    pJsonObject->Add(pHudsonnode_monitorsTemporarySpaceMonitorKey, toJson(getPHudsonnodeMonitorsTemporarySpaceMonitor(), "SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace", ""));

    JsonString *pHudsonnode_monitorsDiskSpaceMonitorKey = new JsonString(L"hudson.node_monitors.DiskSpaceMonitor");
    pJsonObject->Add(pHudsonnode_monitorsDiskSpaceMonitorKey, toJson(getPHudsonnodeMonitorsDiskSpaceMonitor(), "SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace", ""));

    JsonString *pHudsonnode_monitorsArchitectureMonitorKey = new JsonString(L"hudson.node_monitors.ArchitectureMonitor");
    pJsonObject->Add(pHudsonnode_monitorsArchitectureMonitorKey, toJson(getPHudsonnodeMonitorsArchitectureMonitor(), "String", ""));

    JsonString *pHudsonnode_monitorsResponseTimeMonitorKey = new JsonString(L"hudson.node_monitors.ResponseTimeMonitor");
    pJsonObject->Add(pHudsonnode_monitorsResponseTimeMonitorKey, toJson(getPHudsonnodeMonitorsResponseTimeMonitor(), "SamiHudsonnode_monitorsResponseTimeMonitorData", ""));

    JsonString *pHudsonnode_monitorsClockMonitorKey = new JsonString(L"hudson.node_monitors.ClockMonitor");
    pJsonObject->Add(pHudsonnode_monitorsClockMonitorKey, toJson(getPHudsonnodeMonitorsClockMonitor(), "SamiHudsonutilClockDifference", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2*
SamiHudsonmodelHudsonMasterComputer_monitorData::getPHudsonnodeMonitorsSwapSpaceMonitor() {
    return pHudsonnode_monitorsSwapSpaceMonitor;
}
void
SamiHudsonmodelHudsonMasterComputer_monitorData::setPHudsonnodeMonitorsSwapSpaceMonitor(SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2* pHudsonnode_monitorsSwapSpaceMonitor) {
    this->pHudsonnode_monitorsSwapSpaceMonitor = pHudsonnode_monitorsSwapSpaceMonitor;
}

SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace*
SamiHudsonmodelHudsonMasterComputer_monitorData::getPHudsonnodeMonitorsTemporarySpaceMonitor() {
    return pHudsonnode_monitorsTemporarySpaceMonitor;
}
void
SamiHudsonmodelHudsonMasterComputer_monitorData::setPHudsonnodeMonitorsTemporarySpaceMonitor(SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace* pHudsonnode_monitorsTemporarySpaceMonitor) {
    this->pHudsonnode_monitorsTemporarySpaceMonitor = pHudsonnode_monitorsTemporarySpaceMonitor;
}

SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace*
SamiHudsonmodelHudsonMasterComputer_monitorData::getPHudsonnodeMonitorsDiskSpaceMonitor() {
    return pHudsonnode_monitorsDiskSpaceMonitor;
}
void
SamiHudsonmodelHudsonMasterComputer_monitorData::setPHudsonnodeMonitorsDiskSpaceMonitor(SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace* pHudsonnode_monitorsDiskSpaceMonitor) {
    this->pHudsonnode_monitorsDiskSpaceMonitor = pHudsonnode_monitorsDiskSpaceMonitor;
}

String*
SamiHudsonmodelHudsonMasterComputer_monitorData::getPHudsonnodeMonitorsArchitectureMonitor() {
    return pHudsonnode_monitorsArchitectureMonitor;
}
void
SamiHudsonmodelHudsonMasterComputer_monitorData::setPHudsonnodeMonitorsArchitectureMonitor(String* pHudsonnode_monitorsArchitectureMonitor) {
    this->pHudsonnode_monitorsArchitectureMonitor = pHudsonnode_monitorsArchitectureMonitor;
}

SamiHudsonnode_monitorsResponseTimeMonitorData*
SamiHudsonmodelHudsonMasterComputer_monitorData::getPHudsonnodeMonitorsResponseTimeMonitor() {
    return pHudsonnode_monitorsResponseTimeMonitor;
}
void
SamiHudsonmodelHudsonMasterComputer_monitorData::setPHudsonnodeMonitorsResponseTimeMonitor(SamiHudsonnode_monitorsResponseTimeMonitorData* pHudsonnode_monitorsResponseTimeMonitor) {
    this->pHudsonnode_monitorsResponseTimeMonitor = pHudsonnode_monitorsResponseTimeMonitor;
}

SamiHudsonutilClockDifference*
SamiHudsonmodelHudsonMasterComputer_monitorData::getPHudsonnodeMonitorsClockMonitor() {
    return pHudsonnode_monitorsClockMonitor;
}
void
SamiHudsonmodelHudsonMasterComputer_monitorData::setPHudsonnodeMonitorsClockMonitor(SamiHudsonutilClockDifference* pHudsonnode_monitorsClockMonitor) {
    this->pHudsonnode_monitorsClockMonitor = pHudsonnode_monitorsClockMonitor;
}

String*
SamiHudsonmodelHudsonMasterComputer_monitorData::getPClass() {
    return p_class;
}
void
SamiHudsonmodelHudsonMasterComputer_monitorData::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

