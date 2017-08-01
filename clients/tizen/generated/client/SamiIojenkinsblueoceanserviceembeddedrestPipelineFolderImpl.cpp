
#include "SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl() {
    init();
}

SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::~SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl() {
    this->cleanup();
}

void
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::init() {
    p_class = null;
pDisplayName = null;
pFullName = null;
pName = null;
pOrganization = null;
pNumberOfFolders = null;
pNumberOfPipelines = null;
}

void
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::cleanup() {
    if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
if(pDisplayName != null) {
        
        delete pDisplayName;
        pDisplayName = null;
    }
if(pFullName != null) {
        
        delete pFullName;
        pFullName = null;
    }
if(pName != null) {
        
        delete pName;
        pName = null;
    }
if(pOrganization != null) {
        
        delete pOrganization;
        pOrganization = null;
    }
if(pNumberOfFolders != null) {
        
        delete pNumberOfFolders;
        pNumberOfFolders = null;
    }
if(pNumberOfPipelines != null) {
        
        delete pNumberOfPipelines;
        pNumberOfPipelines = null;
    }
}


SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl*
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::fromJson(String* json) {
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
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::fromJsonObject(IJsonValue* pJson) {
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
JsonString* pFullNameKey = new JsonString(L"fullName");
        IJsonValue* pFullNameVal = null;
        pJsonObject->GetValue(pFullNameKey, pFullNameVal);
        if(pFullNameVal != null) {
            
            pFullName = new String();
            jsonToValue(pFullName, pFullNameVal, L"String", L"String");
        }
        delete pFullNameKey;
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
JsonString* pNumberOfFoldersKey = new JsonString(L"numberOfFolders");
        IJsonValue* pNumberOfFoldersVal = null;
        pJsonObject->GetValue(pNumberOfFoldersKey, pNumberOfFoldersVal);
        if(pNumberOfFoldersVal != null) {
            
            pNumberOfFolders = null;
            jsonToValue(pNumberOfFolders, pNumberOfFoldersVal, L"Integer", L"Integer");
        }
        delete pNumberOfFoldersKey;
JsonString* pNumberOfPipelinesKey = new JsonString(L"numberOfPipelines");
        IJsonValue* pNumberOfPipelinesVal = null;
        pJsonObject->GetValue(pNumberOfPipelinesKey, pNumberOfPipelinesVal);
        if(pNumberOfPipelinesVal != null) {
            
            pNumberOfPipelines = null;
            jsonToValue(pNumberOfPipelines, pNumberOfPipelinesVal, L"Integer", L"Integer");
        }
        delete pNumberOfPipelinesKey;
    }
}

SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl(String* json) {
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
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::asJson ()
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
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    JsonString *pDisplayNameKey = new JsonString(L"displayName");
    pJsonObject->Add(pDisplayNameKey, toJson(getPDisplayName(), "String", ""));

    JsonString *pFullNameKey = new JsonString(L"fullName");
    pJsonObject->Add(pFullNameKey, toJson(getPFullName(), "String", ""));

    JsonString *pNameKey = new JsonString(L"name");
    pJsonObject->Add(pNameKey, toJson(getPName(), "String", ""));

    JsonString *pOrganizationKey = new JsonString(L"organization");
    pJsonObject->Add(pOrganizationKey, toJson(getPOrganization(), "String", ""));

    JsonString *pNumberOfFoldersKey = new JsonString(L"numberOfFolders");
    pJsonObject->Add(pNumberOfFoldersKey, toJson(getPNumberOfFolders(), "Integer", ""));

    JsonString *pNumberOfPipelinesKey = new JsonString(L"numberOfPipelines");
    pJsonObject->Add(pNumberOfPipelinesKey, toJson(getPNumberOfPipelines(), "Integer", ""));

    return pJsonObject;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::getPClass() {
    return p_class;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::setPClass(String* p_class) {
    this->p_class = p_class;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::getPDisplayName() {
    return pDisplayName;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::setPDisplayName(String* pDisplayName) {
    this->pDisplayName = pDisplayName;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::getPFullName() {
    return pFullName;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::setPFullName(String* pFullName) {
    this->pFullName = pFullName;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::getPName() {
    return pName;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::setPName(String* pName) {
    this->pName = pName;
}

String*
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::getPOrganization() {
    return pOrganization;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::setPOrganization(String* pOrganization) {
    this->pOrganization = pOrganization;
}

Integer*
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::getPNumberOfFolders() {
    return pNumberOfFolders;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::setPNumberOfFolders(Integer* pNumberOfFolders) {
    this->pNumberOfFolders = pNumberOfFolders;
}

Integer*
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::getPNumberOfPipelines() {
    return pNumberOfPipelines;
}
void
SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl::setPNumberOfPipelines(Integer* pNumberOfPipelines) {
    this->pNumberOfPipelines = pNumberOfPipelines;
}



} /* namespace Swagger */

