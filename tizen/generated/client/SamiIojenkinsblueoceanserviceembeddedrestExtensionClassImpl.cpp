
#include "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl() {
    init();
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::~SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl() {
    this->cleanup();
}

void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::init() {
    p_class = null;
p_links = null;
pClasses = null;
}

void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(p_links != null) {
        
        delete p_links;
        p_links = null;
    }
if(pClasses != null) {
        pClasses->RemoveAll(true);
        delete pClasses;
        pClasses = null;
    }
}


SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::fromJson(String* json) {
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
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::fromJsonObject(IJsonValue* pJson) {
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
JsonString* p_linksKey = new JsonString(L"_links");
        IJsonValue* p_linksVal = null;
        pJsonObject->GetValue(p_linksKey, p_linksVal);
        if(p_linksVal != null) {
            
            p_links = new SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links();
            jsonToValue(p_links, p_linksVal, L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links", L"SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links");
        }
        delete p_linksKey;
JsonString* pClassesKey = new JsonString(L"classes");
        IJsonValue* pClassesVal = null;
        pJsonObject->GetValue(pClassesKey, pClassesVal);
        if(pClassesVal != null) {
            pClasses = new ArrayList();
            
            jsonToValue(pClasses, pClassesVal, L"IList", L"String");
        }
        delete pClassesKey;
    }
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl(String* json) {
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
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::asJson ()
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
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *p_linksKey = new JsonString(L"_links");
    pJsonObject->Add(p_linksKey, toJson(getPLinks(), "SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links", ""));

    JsonString *pClassesKey = new JsonString(L"classes");
    pJsonObject->Add(pClassesKey, toJson(getPClasses(), "String", "array"));

    return pJsonObject;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::getPClass() {
    return p_class;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::setPClass(String* p_class) {
    this->p_class = p_class;
}

SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::getPLinks() {
    return p_links;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::setPLinks(SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links* p_links) {
    this->p_links = p_links;
}

IList*
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::getPClasses() {
    return pClasses;
}
void
SamiIojenkinsblueoceanserviceembeddedrestExtensionClassImpl::setPClasses(IList* pClasses) {
    this->pClasses = pClasses;
}



} /* namespace Swagger */

