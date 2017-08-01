
#include "SamiGetPipelineBranchesitem_pullRequest.h"
#include <FLocales.h>

using namespace Tizen::Base;
using namespace Tizen::System;
using namespace Tizen::Base::Utility;
using namespace Tizen::Base::Collection;
using namespace Tizen::Web::Json;
using namespace Tizen::Locales;


namespace Swagger {

SamiGetPipelineBranchesitem_pullRequest::SamiGetPipelineBranchesitem_pullRequest() {
    init();
}

SamiGetPipelineBranchesitem_pullRequest::~SamiGetPipelineBranchesitem_pullRequest() {
    this->cleanup();
}

void
SamiGetPipelineBranchesitem_pullRequest::init() {
    p_links = null;
pAuthor = null;
pId = null;
pTitle = null;
pUrl = null;
p_class = null;
}

void
SamiGetPipelineBranchesitem_pullRequest::cleanup() {
    if(p_links != null) {
        
        delete p_links;
        p_links = null;
    }
if(pAuthor != null) {
        
        delete pAuthor;
        pAuthor = null;
    }
if(pId != null) {
        
        delete pId;
        pId = null;
    }
if(pTitle != null) {
        
        delete pTitle;
        pTitle = null;
    }
if(pUrl != null) {
        
        delete pUrl;
        pUrl = null;
    }
if(p_class != null) {
        
        delete p_class;
        p_class = null;
    }
}


SamiGetPipelineBranchesitem_pullRequest*
SamiGetPipelineBranchesitem_pullRequest::fromJson(String* json) {
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
SamiGetPipelineBranchesitem_pullRequest::fromJsonObject(IJsonValue* pJson) {
    JsonObject* pJsonObject = static_cast< JsonObject* >(pJson);

    if(pJsonObject != null) {
        JsonString* p_linksKey = new JsonString(L"_links");
        IJsonValue* p_linksVal = null;
        pJsonObject->GetValue(p_linksKey, p_linksVal);
        if(p_linksVal != null) {
            
            p_links = new SamiGetPipelineBranchesitem_pullRequest__links();
            jsonToValue(p_links, p_linksVal, L"SamiGetPipelineBranchesitem_pullRequest__links", L"SamiGetPipelineBranchesitem_pullRequest__links");
        }
        delete p_linksKey;
JsonString* pAuthorKey = new JsonString(L"author");
        IJsonValue* pAuthorVal = null;
        pJsonObject->GetValue(pAuthorKey, pAuthorVal);
        if(pAuthorVal != null) {
            
            pAuthor = new String();
            jsonToValue(pAuthor, pAuthorVal, L"String", L"String");
        }
        delete pAuthorKey;
JsonString* pIdKey = new JsonString(L"id");
        IJsonValue* pIdVal = null;
        pJsonObject->GetValue(pIdKey, pIdVal);
        if(pIdVal != null) {
            
            pId = new String();
            jsonToValue(pId, pIdVal, L"String", L"String");
        }
        delete pIdKey;
JsonString* pTitleKey = new JsonString(L"title");
        IJsonValue* pTitleVal = null;
        pJsonObject->GetValue(pTitleKey, pTitleVal);
        if(pTitleVal != null) {
            
            pTitle = new String();
            jsonToValue(pTitle, pTitleVal, L"String", L"String");
        }
        delete pTitleKey;
JsonString* pUrlKey = new JsonString(L"url");
        IJsonValue* pUrlVal = null;
        pJsonObject->GetValue(pUrlKey, pUrlVal);
        if(pUrlVal != null) {
            
            pUrl = new String();
            jsonToValue(pUrl, pUrlVal, L"String", L"String");
        }
        delete pUrlKey;
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

SamiGetPipelineBranchesitem_pullRequest::SamiGetPipelineBranchesitem_pullRequest(String* json) {
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
SamiGetPipelineBranchesitem_pullRequest::asJson ()
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
SamiGetPipelineBranchesitem_pullRequest::asJsonObject() {
    JsonObject *pJsonObject = new JsonObject();
    pJsonObject->Construct();

    JsonString *p_linksKey = new JsonString(L"_links");
    pJsonObject->Add(p_linksKey, toJson(getPLinks(), "SamiGetPipelineBranchesitem_pullRequest__links", ""));

    JsonString *pAuthorKey = new JsonString(L"author");
    pJsonObject->Add(pAuthorKey, toJson(getPAuthor(), "String", ""));

    JsonString *pIdKey = new JsonString(L"id");
    pJsonObject->Add(pIdKey, toJson(getPId(), "String", ""));

    JsonString *pTitleKey = new JsonString(L"title");
    pJsonObject->Add(pTitleKey, toJson(getPTitle(), "String", ""));

    JsonString *pUrlKey = new JsonString(L"url");
    pJsonObject->Add(pUrlKey, toJson(getPUrl(), "String", ""));

    JsonString *p_classKey = new JsonString(L"_class");
    pJsonObject->Add(p_classKey, toJson(getPClass(), "String", ""));

    return pJsonObject;
}

SamiGetPipelineBranchesitem_pullRequest__links*
SamiGetPipelineBranchesitem_pullRequest::getPLinks() {
    return p_links;
}
void
SamiGetPipelineBranchesitem_pullRequest::setPLinks(SamiGetPipelineBranchesitem_pullRequest__links* p_links) {
    this->p_links = p_links;
}

String*
SamiGetPipelineBranchesitem_pullRequest::getPAuthor() {
    return pAuthor;
}
void
SamiGetPipelineBranchesitem_pullRequest::setPAuthor(String* pAuthor) {
    this->pAuthor = pAuthor;
}

String*
SamiGetPipelineBranchesitem_pullRequest::getPId() {
    return pId;
}
void
SamiGetPipelineBranchesitem_pullRequest::setPId(String* pId) {
    this->pId = pId;
}

String*
SamiGetPipelineBranchesitem_pullRequest::getPTitle() {
    return pTitle;
}
void
SamiGetPipelineBranchesitem_pullRequest::setPTitle(String* pTitle) {
    this->pTitle = pTitle;
}

String*
SamiGetPipelineBranchesitem_pullRequest::getPUrl() {
    return pUrl;
}
void
SamiGetPipelineBranchesitem_pullRequest::setPUrl(String* pUrl) {
    this->pUrl = pUrl;
}

String*
SamiGetPipelineBranchesitem_pullRequest::getPClass() {
    return p_class;
}
void
SamiGetPipelineBranchesitem_pullRequest::setPClass(String* p_class) {
    this->p_class = p_class;
}



} /* namespace Swagger */

