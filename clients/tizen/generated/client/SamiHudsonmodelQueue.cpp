
#include "SamiHudsonmodelQueue.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiHudsonmodelQueue::SamiHudsonmodelQueue() {
    init();
}

SamiHudsonmodelQueue::~SamiHudsonmodelQueue() {
    this->cleanup();
}

void
SamiHudsonmodelQueue::init() {
    p_class = null;
pItems = null;
}

void
SamiHudsonmodelQueue::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pItems != null) {
        pItems->RemoveAll(true);
        delete pItems;
        pItems = null;
    }
}


SamiHudsonmodelQueue*
SamiHudsonmodelQueue::fromJson(String* json) {
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
SamiHudsonmodelQueue::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pItemsKey = new JsonString(L"items");
        IJsonValue* pItemsVal = null;
        pJsonObject->GetValue(pItemsKey, pItemsVal);
        if(pItemsVal != null) {
            pItems = new ArrayList();
            
            jsonToValue(pItems, pItemsVal, L"IList", L"SamiHudsonmodelQueueBlockedItem");
        }
        delete pItemsKey;
    }
}

SamiHudsonmodelQueue::SamiHudsonmodelQueue(String* json) {
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
SamiHudsonmodelQueue::asJson ()
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
SamiHudsonmodelQueue::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pItemsKey = new JsonString(L"items");
    pJsonObject->Add(pItemsKey, toJson(getPItems(), "SamiHudsonmodelQueueBlockedItem", "array"));

    return pJsonObject;
}

String*
SamiHudsonmodelQueue::getPClass() {
    return p_class;
}
void
SamiHudsonmodelQueue::setPClass(String* p_class) {
    this->p_class = p_class;
}

IList*
SamiHudsonmodelQueue::getPItems() {
    return pItems;
}
void
SamiHudsonmodelQueue::setPItems(IList* pItems) {
    this->pItems = pItems;
}



} /* namespace Swagger */

