
#include "SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace() {
    init();
}

SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::~SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace() {
    this->cleanup();
}

void
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::init() {
    p_class = null;
pTimestamp = null;
pPath = null;
pSize = null;
}

void
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pTimestamp != null) {
        
        delete pTimestamp;
        pTimestamp = null;
    }
if(pPath != null) {
        
        delete pPath;
        pPath = null;
    }
if(pSize != null) {
        
        delete pSize;
        pSize = null;
    }
}


SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace*
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::fromJson(String* json) {
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
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pTimestampKey = new JsonString(L"timestamp");
        IJsonValue* pTimestampVal = null;
        pJsonObject->GetValue(pTimestampKey, pTimestampVal);
        if(pTimestampVal != null) {
            
            pTimestamp = null;
            jsonToValue(pTimestamp, pTimestampVal, L"Integer", L"Integer");
        }
        delete pTimestampKey;
JsonString* pPathKey = new JsonString(L"path");
        IJsonValue* pPathVal = null;
        pJsonObject->GetValue(pPathKey, pPathVal);
        if(pPathVal != null) {
            
            pPath = new String();
            jsonToValue(pPath, pPathVal, L"String", L"String");
        }
        delete pPathKey;
JsonString* pSizeKey = new JsonString(L"size");
        IJsonValue* pSizeVal = null;
        pJsonObject->GetValue(pSizeKey, pSizeVal);
        if(pSizeVal != null) {
            
            pSize = null;
            jsonToValue(pSize, pSizeVal, L"Integer", L"Integer");
        }
        delete pSizeKey;
    }
}

SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace(String* json) {
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
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::asJson ()
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
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pTimestampKey = new JsonString(L"timestamp");
    pJsonObject->Add(pTimestampKey, toJson(getPTimestamp(), "Integer", ""));

    JsonString *pPathKey = new JsonString(L"path");
    pJsonObject->Add(pPathKey, toJson(getPPath(), "String", ""));

    JsonString *pSizeKey = new JsonString(L"size");
    pJsonObject->Add(pSizeKey, toJson(getPSize(), "Integer", ""));

    return pJsonObject;
}

String*
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::getPClass() {
    return p_class;
}
void
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::setPClass(String* p_class) {
    this->p_class = p_class;
}

Integer*
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::getPTimestamp() {
    return pTimestamp;
}
void
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::setPTimestamp(Integer* pTimestamp) {
    this->pTimestamp = pTimestamp;
}

String*
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::getPPath() {
    return pPath;
}
void
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::setPPath(String* pPath) {
    this->pPath = pPath;
}

Integer*
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::getPSize() {
    return pSize;
}
void
SamiHudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace::setPSize(Integer* pSize) {
    this->pSize = pSize;
}



} /* namespace Swagger */

