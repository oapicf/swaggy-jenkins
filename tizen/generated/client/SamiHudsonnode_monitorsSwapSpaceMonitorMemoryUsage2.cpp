
#include "SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2() {
    init();
}

SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::~SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2() {
    this->cleanup();
}

void
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::init() {
    p_class = null;
pAvailablePhysicalMemory = null;
pAvailableSwapSpace = null;
pTotalPhysicalMemory = null;
pTotalSwapSpace = null;
}

void
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pAvailablePhysicalMemory != null) {
        
        delete pAvailablePhysicalMemory;
        pAvailablePhysicalMemory = null;
    }
if(pAvailableSwapSpace != null) {
        
        delete pAvailableSwapSpace;
        pAvailableSwapSpace = null;
    }
if(pTotalPhysicalMemory != null) {
        
        delete pTotalPhysicalMemory;
        pTotalPhysicalMemory = null;
    }
if(pTotalSwapSpace != null) {
        
        delete pTotalSwapSpace;
        pTotalSwapSpace = null;
    }
}


SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2*
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::fromJson(String* json) {
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
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pAvailablePhysicalMemoryKey = new JsonString(L"availablePhysicalMemory");
        IJsonValue* pAvailablePhysicalMemoryVal = null;
        pJsonObject->GetValue(pAvailablePhysicalMemoryKey, pAvailablePhysicalMemoryVal);
        if(pAvailablePhysicalMemoryVal != null) {
            
            pAvailablePhysicalMemory = null;
            jsonToValue(pAvailablePhysicalMemory, pAvailablePhysicalMemoryVal, L"Integer", L"Integer");
        }
        delete pAvailablePhysicalMemoryKey;
JsonString* pAvailableSwapSpaceKey = new JsonString(L"availableSwapSpace");
        IJsonValue* pAvailableSwapSpaceVal = null;
        pJsonObject->GetValue(pAvailableSwapSpaceKey, pAvailableSwapSpaceVal);
        if(pAvailableSwapSpaceVal != null) {
            
            pAvailableSwapSpace = null;
            jsonToValue(pAvailableSwapSpace, pAvailableSwapSpaceVal, L"Integer", L"Integer");
        }
        delete pAvailableSwapSpaceKey;
JsonString* pTotalPhysicalMemoryKey = new JsonString(L"totalPhysicalMemory");
        IJsonValue* pTotalPhysicalMemoryVal = null;
        pJsonObject->GetValue(pTotalPhysicalMemoryKey, pTotalPhysicalMemoryVal);
        if(pTotalPhysicalMemoryVal != null) {
            
            pTotalPhysicalMemory = null;
            jsonToValue(pTotalPhysicalMemory, pTotalPhysicalMemoryVal, L"Integer", L"Integer");
        }
        delete pTotalPhysicalMemoryKey;
JsonString* pTotalSwapSpaceKey = new JsonString(L"totalSwapSpace");
        IJsonValue* pTotalSwapSpaceVal = null;
        pJsonObject->GetValue(pTotalSwapSpaceKey, pTotalSwapSpaceVal);
        if(pTotalSwapSpaceVal != null) {
            
            pTotalSwapSpace = null;
            jsonToValue(pTotalSwapSpace, pTotalSwapSpaceVal, L"Integer", L"Integer");
        }
        delete pTotalSwapSpaceKey;
    }
}

SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2(String* json) {
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
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::asJson ()
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
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pAvailablePhysicalMemoryKey = new JsonString(L"availablePhysicalMemory");
    pJsonObject->Add(pAvailablePhysicalMemoryKey, toJson(getPAvailablePhysicalMemory(), "Integer", ""));

    JsonString *pAvailableSwapSpaceKey = new JsonString(L"availableSwapSpace");
    pJsonObject->Add(pAvailableSwapSpaceKey, toJson(getPAvailableSwapSpace(), "Integer", ""));

    JsonString *pTotalPhysicalMemoryKey = new JsonString(L"totalPhysicalMemory");
    pJsonObject->Add(pTotalPhysicalMemoryKey, toJson(getPTotalPhysicalMemory(), "Integer", ""));

    JsonString *pTotalSwapSpaceKey = new JsonString(L"totalSwapSpace");
    pJsonObject->Add(pTotalSwapSpaceKey, toJson(getPTotalSwapSpace(), "Integer", ""));

    return pJsonObject;
}

String*
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::getPClass() {
    return p_class;
}
void
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::setPClass(String* p_class) {
    this->p_class = p_class;
}

Integer*
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::getPAvailablePhysicalMemory() {
    return pAvailablePhysicalMemory;
}
void
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::setPAvailablePhysicalMemory(Integer* pAvailablePhysicalMemory) {
    this->pAvailablePhysicalMemory = pAvailablePhysicalMemory;
}

Integer*
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::getPAvailableSwapSpace() {
    return pAvailableSwapSpace;
}
void
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::setPAvailableSwapSpace(Integer* pAvailableSwapSpace) {
    this->pAvailableSwapSpace = pAvailableSwapSpace;
}

Integer*
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::getPTotalPhysicalMemory() {
    return pTotalPhysicalMemory;
}
void
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::setPTotalPhysicalMemory(Integer* pTotalPhysicalMemory) {
    this->pTotalPhysicalMemory = pTotalPhysicalMemory;
}

Integer*
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::getPTotalSwapSpace() {
    return pTotalSwapSpace;
}
void
SamiHudsonnode_monitorsSwapSpaceMonitorMemoryUsage2::setPTotalSwapSpace(Integer* pTotalSwapSpace) {
    this->pTotalSwapSpace = pTotalSwapSpace;
}



} /* namespace Swagger */

