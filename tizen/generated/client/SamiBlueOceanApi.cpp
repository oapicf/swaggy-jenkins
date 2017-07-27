#include "SamiBlueOceanApi.h"

#include "SamiHelpers.h"
#include "SamiError.h"

using namespace Tizen::Base;

namespace Swagger {


SamiBlueOceanApi::SamiBlueOceanApi() {

}

SamiBlueOceanApi::~SamiBlueOceanApi() {

}

void
getAuthenticatedUserProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiSwaggyjenkinsUser* out = new SamiSwaggyjenkinsUser();
    jsonToValue(out, pJson, L"SamiSwaggyjenkinsUser*", L"SamiSwaggyjenkinsUser");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiSwaggyjenkinsUser* 
SamiBlueOceanApi::getAuthenticatedUserWithCompletion(String* organisation, void (* success)(SamiSwaggyjenkinsUser*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getAuthenticatedUserProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/{organisation}/user/");

  String s_organisation(L"{");
  s_organisation.Append(L"organisation");
  s_organisation.Append(L"}");
  url.Replace(s_organisation, stringify(organisation, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getClassesProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    String* out = new String();
    jsonToValue(out, pJson, L"String*", L"String");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

String* 
SamiBlueOceanApi::getClassesWithCompletion(String* class, void (* success)(String*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getClassesProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/classes/{class}");

  String s_class(L"{");
  s_class.Append(L"class");
  s_class.Append(L"}");
  url.Replace(s_class, stringify(class, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getOrganisationProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiSwaggyjenkinsOrganisation* out = new SamiSwaggyjenkinsOrganisation();
    jsonToValue(out, pJson, L"SamiSwaggyjenkinsOrganisation*", L"SamiSwaggyjenkinsOrganisation");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiSwaggyjenkinsOrganisation* 
SamiBlueOceanApi::getOrganisationWithCompletion(String* organisation, void (* success)(SamiSwaggyjenkinsOrganisation*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getOrganisationProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/{organisation}");

  String s_organisation(L"{");
  s_organisation.Append(L"organisation");
  s_organisation.Append(L"}");
  url.Replace(s_organisation, stringify(organisation, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getOrganisationsProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiGetOrganisations* out = new SamiGetOrganisations();
    jsonToValue(out, pJson, L"SamiGetOrganisations*", L"SamiGetOrganisations");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiGetOrganisations* 
SamiBlueOceanApi::getOrganisationsWithCompletion( void (* success)(SamiGetOrganisations*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getOrganisationsProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/");


  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getPipelineBranchByOrgProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiIojenkinsblueoceanrestimplpipelineBranchImpl* out = new SamiIojenkinsblueoceanrestimplpipelineBranchImpl();
    jsonToValue(out, pJson, L"SamiIojenkinsblueoceanrestimplpipelineBranchImpl*", L"SamiIojenkinsblueoceanrestimplpipelineBranchImpl");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiIojenkinsblueoceanrestimplpipelineBranchImpl* 
SamiBlueOceanApi::getPipelineBranchByOrgWithCompletion(String* organisation, String* pipeline, String* branch, void (* success)(SamiIojenkinsblueoceanrestimplpipelineBranchImpl*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getPipelineBranchByOrgProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/");

  String s_organisation(L"{");
  s_organisation.Append(L"organisation");
  s_organisation.Append(L"}");
  url.Replace(s_organisation, stringify(organisation, L"String*"));
  String s_pipeline(L"{");
  s_pipeline.Append(L"pipeline");
  s_pipeline.Append(L"}");
  url.Replace(s_pipeline, stringify(pipeline, L"String*"));
  String s_branch(L"{");
  s_branch.Append(L"branch");
  s_branch.Append(L"}");
  url.Replace(s_branch, stringify(branch, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getPipelineBranchesByOrgProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiGetMultibranchPipeline* out = new SamiGetMultibranchPipeline();
    jsonToValue(out, pJson, L"SamiGetMultibranchPipeline*", L"SamiGetMultibranchPipeline");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiGetMultibranchPipeline* 
SamiBlueOceanApi::getPipelineBranchesByOrgWithCompletion(String* organisation, String* pipeline, void (* success)(SamiGetMultibranchPipeline*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getPipelineBranchesByOrgProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches");

  String s_organisation(L"{");
  s_organisation.Append(L"organisation");
  s_organisation.Append(L"}");
  url.Replace(s_organisation, stringify(organisation, L"String*"));
  String s_pipeline(L"{");
  s_pipeline.Append(L"pipeline");
  s_pipeline.Append(L"}");
  url.Replace(s_pipeline, stringify(pipeline, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getPipelineByOrgProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiSwaggyjenkinsPipeline* out = new SamiSwaggyjenkinsPipeline();
    jsonToValue(out, pJson, L"SamiSwaggyjenkinsPipeline*", L"SamiSwaggyjenkinsPipeline");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiSwaggyjenkinsPipeline* 
SamiBlueOceanApi::getPipelineByOrgWithCompletion(String* organisation, String* pipeline, void (* success)(SamiSwaggyjenkinsPipeline*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getPipelineByOrgProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/{organisation}/pipelines/{pipeline}");

  String s_organisation(L"{");
  s_organisation.Append(L"organisation");
  s_organisation.Append(L"}");
  url.Replace(s_organisation, stringify(organisation, L"String*"));
  String s_pipeline(L"{");
  s_pipeline.Append(L"pipeline");
  s_pipeline.Append(L"}");
  url.Replace(s_pipeline, stringify(pipeline, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getPipelineFolderByOrgProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl* out = new SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl();
    jsonToValue(out, pJson, L"SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl*", L"SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl* 
SamiBlueOceanApi::getPipelineFolderByOrgWithCompletion(String* organisation, String* folder, void (* success)(SamiIojenkinsblueoceanserviceembeddedrestPipelineFolderImpl*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getPipelineFolderByOrgProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/{organisation}/pipelines/{folder}/");

  String s_organisation(L"{");
  s_organisation.Append(L"organisation");
  s_organisation.Append(L"}");
  url.Replace(s_organisation, stringify(organisation, L"String*"));
  String s_folder(L"{");
  s_folder.Append(L"folder");
  s_folder.Append(L"}");
  url.Replace(s_folder, stringify(folder, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getPipelineFolderByOrg_1Processor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl* out = new SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl();
    jsonToValue(out, pJson, L"SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl*", L"SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl* 
SamiBlueOceanApi::getPipelineFolderByOrg_1WithCompletion(String* organisation, String* pipeline, String* folder, void (* success)(SamiIojenkinsblueoceanserviceembeddedrestPipelineImpl*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getPipelineFolderByOrg_1Processor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}");

  String s_organisation(L"{");
  s_organisation.Append(L"organisation");
  s_organisation.Append(L"}");
  url.Replace(s_organisation, stringify(organisation, L"String*"));
  String s_pipeline(L"{");
  s_pipeline.Append(L"pipeline");
  s_pipeline.Append(L"}");
  url.Replace(s_pipeline, stringify(pipeline, L"String*"));
  String s_folder(L"{");
  s_folder.Append(L"folder");
  s_folder.Append(L"}");
  url.Replace(s_folder, stringify(folder, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getPipelinesByOrgProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiGetPipelines* out = new SamiGetPipelines();
    jsonToValue(out, pJson, L"SamiGetPipelines*", L"SamiGetPipelines");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiGetPipelines* 
SamiBlueOceanApi::getPipelinesByOrgWithCompletion(String* organisation, void (* success)(SamiGetPipelines*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getPipelinesByOrgProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/{organisation}/pipelines/");

  String s_organisation(L"{");
  s_organisation.Append(L"organisation");
  s_organisation.Append(L"}");
  url.Replace(s_organisation, stringify(organisation, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getUserProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiSwaggyjenkinsUser* out = new SamiSwaggyjenkinsUser();
    jsonToValue(out, pJson, L"SamiSwaggyjenkinsUser*", L"SamiSwaggyjenkinsUser");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiSwaggyjenkinsUser* 
SamiBlueOceanApi::getUserWithCompletion(String* organisation, String* user, void (* success)(SamiSwaggyjenkinsUser*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getUserProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/{organisation}/users/{user}");

  String s_organisation(L"{");
  s_organisation.Append(L"organisation");
  s_organisation.Append(L"}");
  url.Replace(s_organisation, stringify(organisation, L"String*"));
  String s_user(L"{");
  s_user.Append(L"user");
  s_user.Append(L"}");
  url.Replace(s_user, stringify(user, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
getUsersProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    SamiSwaggyjenkinsUser* out = new SamiSwaggyjenkinsUser();
    jsonToValue(out, pJson, L"SamiSwaggyjenkinsUser*", L"SamiSwaggyjenkinsUser");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

SamiSwaggyjenkinsUser* 
SamiBlueOceanApi::getUsersWithCompletion(String* organisation, void (* success)(SamiSwaggyjenkinsUser*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&getUsersProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
  String* mBody = null;


  String url(L"/blue/rest/organizations/{organisation}/users/");

  String s_organisation(L"{");
  s_organisation.Append(L"organisation");
  s_organisation.Append(L"}");
  url.Replace(s_organisation, stringify(organisation, L"String*"));

  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
searchProcessor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    String* out = new String();
    jsonToValue(out, pJson, L"String*", L"String");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

String* 
SamiBlueOceanApi::searchWithCompletion(String* q, void (* success)(String*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&searchProcessor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
    queryParams->Add(new String("q"), q);

  String* mBody = null;


  String url(L"/blue/rest/classes/");


  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}

void
search_2Processor(HttpResponse* pHttpResponse, void (* handler)(void*, SamiError*)) {
  int code = pHttpResponse->GetHttpStatusCode();

  if(code >= 200 && code < 300) {
    ByteBuffer* pBuffer = pHttpResponse->ReadBodyN();
    IJsonValue* pJson = JsonParser::ParseN(*pBuffer);

    String* out = new String();
    jsonToValue(out, pJson, L"String*", L"String");

    if (pJson) {
      if (pJson->GetType() == JSON_TYPE_OBJECT) {
         JsonObject* pObject = static_cast< JsonObject* >(pJson);
         pObject->RemoveAll(true);
      }
      else if (pJson->GetType() == JSON_TYPE_ARRAY) {
         JsonArray* pArray = static_cast< JsonArray* >(pJson);
         pArray->RemoveAll(true);
      }
      handler(out, null);
    }
    else {
      SamiError* error = new SamiError(0, new String(L"No parsable response received"));
      handler(null, error);
    }
    
  }
  else {
    SamiError* error = new SamiError(code, new String(pHttpResponse->GetStatusText()));
    handler(null, error);
    
  }
}

String* 
SamiBlueOceanApi::search_2WithCompletion(String* q, void (* success)(String*, SamiError*)) {
  client = new SamiApiClient();

  client->success(&search_2Processor, (void(*)(void*, SamiError*))success);
  HashMap* headerParams = new HashMap(SingleObjectDeleter);
  headerParams->Construct();

  
  HashMap* queryParams = new HashMap(SingleObjectDeleter);
  queryParams->Construct();

  
    queryParams->Add(new String("q"), q);

  String* mBody = null;


  String url(L"/blue/rest/search/");


  client->execute(SamiBlueOceanApi::getBasePath(), url, "GET", (IMap*)queryParams, mBody, (IMap*)headerParams, null, L"application/json");
  return null;
}


} /* namespace Swagger */
