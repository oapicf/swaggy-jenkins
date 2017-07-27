
#include "SamiHudsonnode_monitorsResponseTimeMonitorData.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonnode_monitorsResponseTimeMonitorData::SamiHudsonnode_monitorsResponseTimeMonitorData() {
    init();
}

SamiHudsonnode_monitorsResponseTimeMonitorData::~SamiHudsonnode_monitorsResponseTimeMonitorData() {
    this->cleanup();
}

void
SamiHudsonnode_monitorsResponseTimeMonitorData::init() {
    p_class = null;
pTimestamp = null;
pAverage = null;
}

void
SamiHudsonnode_monitorsResponseTimeMonitorData::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pTimestamp != null) {
        
        delete pTimestamp;
        pTimestamp = null;
    }
if(pAverage != null) {
        
        delete pAverage;
        pAverage = null;
    }
}


SamiHudsonnode_monitorsResponseTimeMonitorData*
SamiHudsonnode_monitorsResponseTimeMonitorData::fromJson(String* json) {
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
SamiHudsonnode_monitorsResponseTimeMonitorData::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pAverageKey = new JsonString(L"average");
        IJsonValue* pAverageVal = null;
        pJsonObject->GetValue(pAverageKey, pAverageVal);
        if(pAverageVal != null) {
            
            pAverage = null;
            jsonToValue(pAverage, pAverageVal, L"Integer", L"Integer");
        }
        delete pAverageKey;
    }
}

SamiHudsonnode_monitorsResponseTimeMonitorData::SamiHudsonnode_monitorsResponseTimeMonitorData(String* json) {
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
SamiHudsonnode_monitorsResponseTimeMonitorData::asJson ()
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
SamiHudsonnode_monitorsResponseTimeMonitorData::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pTimestampKey = new JsonString(L"timestamp");
    pJsonObject->Add(pTimestampKey, toJson(getPTimestamp(), "Integer", ""));

    JsonString *pAverageKey = new JsonString(L"average");
    pJsonObject->Add(pAverageKey, toJson(getPAverage(), "Integer", ""));

    return pJsonObject;
}

String*
SamiHudsonnode_monitorsResponseTimeMonitorData::getPClass() {
    return p_class;
}
void
SamiHudsonnode_monitorsResponseTimeMonitorData::setPClass(String* p_class) {
    this->p_class = p_class;
}

Integer*
SamiHudsonnode_monitorsResponseTimeMonitorData::getPTimestamp() {
    return pTimestamp;
}
void
SamiHudsonnode_monitorsResponseTimeMonitorData::setPTimestamp(Integer* pTimestamp) {
    this->pTimestamp = pTimestamp;
}

Integer*
SamiHudsonnode_monitorsResponseTimeMonitorData::getPAverage() {
    return pAverage;
}
void
SamiHudsonnode_monitorsResponseTimeMonitorData::setPAverage(Integer* pAverage) {
    this->pAverage = pAverage;
}



} /* namespace Swagger */

