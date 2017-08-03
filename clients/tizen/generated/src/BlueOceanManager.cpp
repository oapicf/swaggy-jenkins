#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "BlueOceanManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


BlueOceanManager::BlueOceanManager()
{

}

BlueOceanManager::~BlueOceanManager()
{

}

static gboolean __BlueOceanManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __BlueOceanManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__BlueOceanManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool deletePipelineQueueItemProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	
	void(* handler)(Error, void* ) = reinterpret_cast<void(*)(Error, void* )> (voidHandler);
	JsonNode* pJson;
	char * data = p_chunk.memory;

	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));


		handler(error, userData);
		return true;



	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool deletePipelineQueueItemHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string queue, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_queue("{");
	s_queue.append("queue");
	s_queue.append("}");
	pos = url.find(s_queue);
	url.erase(pos, s_queue.length());
	url.insert(pos, stringify(&queue, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("DELETE");

	if(strcmp("PUT", "DELETE") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = deletePipelineQueueItemProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), deletePipelineQueueItemProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::deletePipelineQueueItemAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string queue, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return deletePipelineQueueItemHelper(accessToken,
	organization, pipeline, queue, 
	handler, userData, true);
}

bool BlueOceanManager::deletePipelineQueueItemSync(char * accessToken,
	std::string organization, std::string pipeline, std::string queue, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return deletePipelineQueueItemHelper(accessToken,
	organization, pipeline, queue, 
	handler, userData, false);
}

static bool getAuthenticatedUserProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(User, Error, void* )
	= reinterpret_cast<void(*)(User, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	User out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("User")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "User", "User");
			json_node_free(pJson);

			if ("User" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getAuthenticatedUserHelper(char * accessToken,
	std::string organization, 
	void(* handler)(User, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/user/");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getAuthenticatedUserProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getAuthenticatedUserProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getAuthenticatedUserAsync(char * accessToken,
	std::string organization, 
	void(* handler)(User, Error, void* )
	, void* userData)
{
	return getAuthenticatedUserHelper(accessToken,
	organization, 
	handler, userData, true);
}

bool BlueOceanManager::getAuthenticatedUserSync(char * accessToken,
	std::string organization, 
	void(* handler)(User, Error, void* )
	, void* userData)
{
	return getAuthenticatedUserHelper(accessToken,
	organization, 
	handler, userData, false);
}

static bool getClassesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::string, Error, void* )
	= reinterpret_cast<void(*)(std::string, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	std::string out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("std::string")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "std::string", "std::string");
			json_node_free(pJson);

			if ("std::string" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getClassesHelper(char * accessToken,
	std::string _class, 
	void(* handler)(std::string, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/classes/{class}");
	int pos;

	string s__class("{");
	s__class.append("class");
	s__class.append("}");
	pos = url.find(s__class);
	url.erase(pos, s__class.length());
	url.insert(pos, stringify(&_class, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getClassesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getClassesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getClassesAsync(char * accessToken,
	std::string _class, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getClassesHelper(accessToken,
	_class, 
	handler, userData, true);
}

bool BlueOceanManager::getClassesSync(char * accessToken,
	std::string _class, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getClassesHelper(accessToken,
	_class, 
	handler, userData, false);
}

static bool getOrganisationProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(Organisation, Error, void* )
	= reinterpret_cast<void(*)(Organisation, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	Organisation out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("Organisation")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "Organisation", "Organisation");
			json_node_free(pJson);

			if ("Organisation" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getOrganisationHelper(char * accessToken,
	std::string organization, 
	void(* handler)(Organisation, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getOrganisationProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getOrganisationProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getOrganisationAsync(char * accessToken,
	std::string organization, 
	void(* handler)(Organisation, Error, void* )
	, void* userData)
{
	return getOrganisationHelper(accessToken,
	organization, 
	handler, userData, true);
}

bool BlueOceanManager::getOrganisationSync(char * accessToken,
	std::string organization, 
	void(* handler)(Organisation, Error, void* )
	, void* userData)
{
	return getOrganisationHelper(accessToken,
	organization, 
	handler, userData, false);
}

static bool getOrganisationsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(Organisations, Error, void* )
	= reinterpret_cast<void(*)(Organisations, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	Organisations out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("Organisations")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "Organisations", "Organisations");
			json_node_free(pJson);

			if ("Organisations" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getOrganisationsHelper(char * accessToken,
	
	void(* handler)(Organisations, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getOrganisationsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getOrganisationsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getOrganisationsAsync(char * accessToken,
	
	void(* handler)(Organisations, Error, void* )
	, void* userData)
{
	return getOrganisationsHelper(accessToken,
	
	handler, userData, true);
}

bool BlueOceanManager::getOrganisationsSync(char * accessToken,
	
	void(* handler)(Organisations, Error, void* )
	, void* userData)
{
	return getOrganisationsHelper(accessToken,
	
	handler, userData, false);
}

static bool getPipelineProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(Pipeline, Error, void* )
	= reinterpret_cast<void(*)(Pipeline, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	Pipeline out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("Pipeline")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "Pipeline", "Pipeline");
			json_node_free(pJson);

			if ("Pipeline" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineHelper(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(Pipeline, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(Pipeline, Error, void* )
	, void* userData)
{
	return getPipelineHelper(accessToken,
	organization, pipeline, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(Pipeline, Error, void* )
	, void* userData)
{
	return getPipelineHelper(accessToken,
	organization, pipeline, 
	handler, userData, false);
}

static bool getPipelineActivitiesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineActivities, Error, void* )
	= reinterpret_cast<void(*)(PipelineActivities, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineActivities out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineActivities")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineActivities", "PipelineActivities");
			json_node_free(pJson);

			if ("PipelineActivities" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineActivitiesHelper(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineActivities, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineActivitiesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineActivitiesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineActivitiesAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineActivities, Error, void* )
	, void* userData)
{
	return getPipelineActivitiesHelper(accessToken,
	organization, pipeline, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineActivitiesSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineActivities, Error, void* )
	, void* userData)
{
	return getPipelineActivitiesHelper(accessToken,
	organization, pipeline, 
	handler, userData, false);
}

static bool getPipelineBranchProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(BranchImpl, Error, void* )
	= reinterpret_cast<void(*)(BranchImpl, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	BranchImpl out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("BranchImpl")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "BranchImpl", "BranchImpl");
			json_node_free(pJson);

			if ("BranchImpl" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineBranchHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string branch, 
	void(* handler)(BranchImpl, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_branch("{");
	s_branch.append("branch");
	s_branch.append("}");
	pos = url.find(s_branch);
	url.erase(pos, s_branch.length());
	url.insert(pos, stringify(&branch, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineBranchProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineBranchProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineBranchAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string branch, 
	void(* handler)(BranchImpl, Error, void* )
	, void* userData)
{
	return getPipelineBranchHelper(accessToken,
	organization, pipeline, branch, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineBranchSync(char * accessToken,
	std::string organization, std::string pipeline, std::string branch, 
	void(* handler)(BranchImpl, Error, void* )
	, void* userData)
{
	return getPipelineBranchHelper(accessToken,
	organization, pipeline, branch, 
	handler, userData, false);
}

static bool getPipelineBranchRunProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineRun, Error, void* )
	= reinterpret_cast<void(*)(PipelineRun, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineRun out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineRun")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineRun", "PipelineRun");
			json_node_free(pJson);

			if ("PipelineRun" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineBranchRunHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string branch, std::string run, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_branch("{");
	s_branch.append("branch");
	s_branch.append("}");
	pos = url.find(s_branch);
	url.erase(pos, s_branch.length());
	url.insert(pos, stringify(&branch, "std::string"));
	string s_run("{");
	s_run.append("run");
	s_run.append("}");
	pos = url.find(s_run);
	url.erase(pos, s_run.length());
	url.insert(pos, stringify(&run, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineBranchRunProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineBranchRunProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineBranchRunAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string branch, std::string run, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData)
{
	return getPipelineBranchRunHelper(accessToken,
	organization, pipeline, branch, run, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineBranchRunSync(char * accessToken,
	std::string organization, std::string pipeline, std::string branch, std::string run, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData)
{
	return getPipelineBranchRunHelper(accessToken,
	organization, pipeline, branch, run, 
	handler, userData, false);
}

static bool getPipelineBranchesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(MultibranchPipeline, Error, void* )
	= reinterpret_cast<void(*)(MultibranchPipeline, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	MultibranchPipeline out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("MultibranchPipeline")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "MultibranchPipeline", "MultibranchPipeline");
			json_node_free(pJson);

			if ("MultibranchPipeline" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineBranchesHelper(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(MultibranchPipeline, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineBranchesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineBranchesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineBranchesAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(MultibranchPipeline, Error, void* )
	, void* userData)
{
	return getPipelineBranchesHelper(accessToken,
	organization, pipeline, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineBranchesSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(MultibranchPipeline, Error, void* )
	, void* userData)
{
	return getPipelineBranchesHelper(accessToken,
	organization, pipeline, 
	handler, userData, false);
}

static bool getPipelineFolderProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineFolderImpl, Error, void* )
	= reinterpret_cast<void(*)(PipelineFolderImpl, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineFolderImpl out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineFolderImpl")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineFolderImpl", "PipelineFolderImpl");
			json_node_free(pJson);

			if ("PipelineFolderImpl" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineFolderHelper(char * accessToken,
	std::string organization, std::string folder, 
	void(* handler)(PipelineFolderImpl, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{folder}/");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_folder("{");
	s_folder.append("folder");
	s_folder.append("}");
	pos = url.find(s_folder);
	url.erase(pos, s_folder.length());
	url.insert(pos, stringify(&folder, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineFolderProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineFolderProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineFolderAsync(char * accessToken,
	std::string organization, std::string folder, 
	void(* handler)(PipelineFolderImpl, Error, void* )
	, void* userData)
{
	return getPipelineFolderHelper(accessToken,
	organization, folder, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineFolderSync(char * accessToken,
	std::string organization, std::string folder, 
	void(* handler)(PipelineFolderImpl, Error, void* )
	, void* userData)
{
	return getPipelineFolderHelper(accessToken,
	organization, folder, 
	handler, userData, false);
}

static bool getPipelineFolderPipelineProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineImpl, Error, void* )
	= reinterpret_cast<void(*)(PipelineImpl, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineImpl out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineImpl")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineImpl", "PipelineImpl");
			json_node_free(pJson);

			if ("PipelineImpl" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineFolderPipelineHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string folder, 
	void(* handler)(PipelineImpl, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_folder("{");
	s_folder.append("folder");
	s_folder.append("}");
	pos = url.find(s_folder);
	url.erase(pos, s_folder.length());
	url.insert(pos, stringify(&folder, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineFolderPipelineProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineFolderPipelineProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineFolderPipelineAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string folder, 
	void(* handler)(PipelineImpl, Error, void* )
	, void* userData)
{
	return getPipelineFolderPipelineHelper(accessToken,
	organization, pipeline, folder, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineFolderPipelineSync(char * accessToken,
	std::string organization, std::string pipeline, std::string folder, 
	void(* handler)(PipelineImpl, Error, void* )
	, void* userData)
{
	return getPipelineFolderPipelineHelper(accessToken,
	organization, pipeline, folder, 
	handler, userData, false);
}

static bool getPipelineQueueProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineQueue, Error, void* )
	= reinterpret_cast<void(*)(PipelineQueue, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineQueue out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineQueue")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineQueue", "PipelineQueue");
			json_node_free(pJson);

			if ("PipelineQueue" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineQueueHelper(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineQueue, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineQueueProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineQueueProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineQueueAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineQueue, Error, void* )
	, void* userData)
{
	return getPipelineQueueHelper(accessToken,
	organization, pipeline, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineQueueSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineQueue, Error, void* )
	, void* userData)
{
	return getPipelineQueueHelper(accessToken,
	organization, pipeline, 
	handler, userData, false);
}

static bool getPipelineRunProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineRun, Error, void* )
	= reinterpret_cast<void(*)(PipelineRun, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineRun out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineRun")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineRun", "PipelineRun");
			json_node_free(pJson);

			if ("PipelineRun" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineRunHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_run("{");
	s_run.append("run");
	s_run.append("}");
	pos = url.find(s_run);
	url.erase(pos, s_run.length());
	url.insert(pos, stringify(&run, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineRunProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineRunProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineRunAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData)
{
	return getPipelineRunHelper(accessToken,
	organization, pipeline, run, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineRunSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData)
{
	return getPipelineRunHelper(accessToken,
	organization, pipeline, run, 
	handler, userData, false);
}

static bool getPipelineRunLogProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::string, Error, void* )
	= reinterpret_cast<void(*)(std::string, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	std::string out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("std::string")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "std::string", "std::string");
			json_node_free(pJson);

			if ("std::string" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineRunLogHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string run, int start, bool download, 
	void(* handler)(std::string, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&start, "int");
	queryParams.insert(pair<string, string>("start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("start");
	}


	itemAtq = stringify(&download, "bool");
	queryParams.insert(pair<string, string>("download", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("download");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_run("{");
	s_run.append("run");
	s_run.append("}");
	pos = url.find(s_run);
	url.erase(pos, s_run.length());
	url.insert(pos, stringify(&run, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineRunLogProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineRunLogProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineRunLogAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, int start, bool download, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getPipelineRunLogHelper(accessToken,
	organization, pipeline, run, start, download, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineRunLogSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, int start, bool download, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getPipelineRunLogHelper(accessToken,
	organization, pipeline, run, start, download, 
	handler, userData, false);
}

static bool getPipelineRunNodeProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineRunNode, Error, void* )
	= reinterpret_cast<void(*)(PipelineRunNode, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineRunNode out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineRunNode")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineRunNode", "PipelineRunNode");
			json_node_free(pJson);

			if ("PipelineRunNode" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineRunNodeHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, 
	void(* handler)(PipelineRunNode, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_run("{");
	s_run.append("run");
	s_run.append("}");
	pos = url.find(s_run);
	url.erase(pos, s_run.length());
	url.insert(pos, stringify(&run, "std::string"));
	string s_node("{");
	s_node.append("node");
	s_node.append("}");
	pos = url.find(s_node);
	url.erase(pos, s_node.length());
	url.insert(pos, stringify(&node, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineRunNodeProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineRunNodeProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineRunNodeAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, 
	void(* handler)(PipelineRunNode, Error, void* )
	, void* userData)
{
	return getPipelineRunNodeHelper(accessToken,
	organization, pipeline, run, node, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineRunNodeSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, 
	void(* handler)(PipelineRunNode, Error, void* )
	, void* userData)
{
	return getPipelineRunNodeHelper(accessToken,
	organization, pipeline, run, node, 
	handler, userData, false);
}

static bool getPipelineRunNodeStepProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineStepImpl, Error, void* )
	= reinterpret_cast<void(*)(PipelineStepImpl, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineStepImpl out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineStepImpl")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineStepImpl", "PipelineStepImpl");
			json_node_free(pJson);

			if ("PipelineStepImpl" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineRunNodeStepHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, std::string step, 
	void(* handler)(PipelineStepImpl, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_run("{");
	s_run.append("run");
	s_run.append("}");
	pos = url.find(s_run);
	url.erase(pos, s_run.length());
	url.insert(pos, stringify(&run, "std::string"));
	string s_node("{");
	s_node.append("node");
	s_node.append("}");
	pos = url.find(s_node);
	url.erase(pos, s_node.length());
	url.insert(pos, stringify(&node, "std::string"));
	string s_step("{");
	s_step.append("step");
	s_step.append("}");
	pos = url.find(s_step);
	url.erase(pos, s_step.length());
	url.insert(pos, stringify(&step, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineRunNodeStepProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineRunNodeStepProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineRunNodeStepAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, std::string step, 
	void(* handler)(PipelineStepImpl, Error, void* )
	, void* userData)
{
	return getPipelineRunNodeStepHelper(accessToken,
	organization, pipeline, run, node, step, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineRunNodeStepSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, std::string step, 
	void(* handler)(PipelineStepImpl, Error, void* )
	, void* userData)
{
	return getPipelineRunNodeStepHelper(accessToken,
	organization, pipeline, run, node, step, 
	handler, userData, false);
}

static bool getPipelineRunNodeStepLogProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::string, Error, void* )
	= reinterpret_cast<void(*)(std::string, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	std::string out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("std::string")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "std::string", "std::string");
			json_node_free(pJson);

			if ("std::string" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineRunNodeStepLogHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, std::string step, 
	void(* handler)(std::string, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_run("{");
	s_run.append("run");
	s_run.append("}");
	pos = url.find(s_run);
	url.erase(pos, s_run.length());
	url.insert(pos, stringify(&run, "std::string"));
	string s_node("{");
	s_node.append("node");
	s_node.append("}");
	pos = url.find(s_node);
	url.erase(pos, s_node.length());
	url.insert(pos, stringify(&node, "std::string"));
	string s_step("{");
	s_step.append("step");
	s_step.append("}");
	pos = url.find(s_step);
	url.erase(pos, s_step.length());
	url.insert(pos, stringify(&step, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineRunNodeStepLogProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineRunNodeStepLogProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineRunNodeStepLogAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, std::string step, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getPipelineRunNodeStepLogHelper(accessToken,
	organization, pipeline, run, node, step, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineRunNodeStepLogSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, std::string step, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getPipelineRunNodeStepLogHelper(accessToken,
	organization, pipeline, run, node, step, 
	handler, userData, false);
}

static bool getPipelineRunNodeStepsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineRunNodeSteps, Error, void* )
	= reinterpret_cast<void(*)(PipelineRunNodeSteps, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineRunNodeSteps out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineRunNodeSteps")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineRunNodeSteps", "PipelineRunNodeSteps");
			json_node_free(pJson);

			if ("PipelineRunNodeSteps" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineRunNodeStepsHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, 
	void(* handler)(PipelineRunNodeSteps, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_run("{");
	s_run.append("run");
	s_run.append("}");
	pos = url.find(s_run);
	url.erase(pos, s_run.length());
	url.insert(pos, stringify(&run, "std::string"));
	string s_node("{");
	s_node.append("node");
	s_node.append("}");
	pos = url.find(s_node);
	url.erase(pos, s_node.length());
	url.insert(pos, stringify(&node, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineRunNodeStepsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineRunNodeStepsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineRunNodeStepsAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, 
	void(* handler)(PipelineRunNodeSteps, Error, void* )
	, void* userData)
{
	return getPipelineRunNodeStepsHelper(accessToken,
	organization, pipeline, run, node, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineRunNodeStepsSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string node, 
	void(* handler)(PipelineRunNodeSteps, Error, void* )
	, void* userData)
{
	return getPipelineRunNodeStepsHelper(accessToken,
	organization, pipeline, run, node, 
	handler, userData, false);
}

static bool getPipelineRunNodesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineRunNodes, Error, void* )
	= reinterpret_cast<void(*)(PipelineRunNodes, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineRunNodes out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineRunNodes")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineRunNodes", "PipelineRunNodes");
			json_node_free(pJson);

			if ("PipelineRunNodes" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineRunNodesHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(PipelineRunNodes, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_run("{");
	s_run.append("run");
	s_run.append("}");
	pos = url.find(s_run);
	url.erase(pos, s_run.length());
	url.insert(pos, stringify(&run, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineRunNodesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineRunNodesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineRunNodesAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(PipelineRunNodes, Error, void* )
	, void* userData)
{
	return getPipelineRunNodesHelper(accessToken,
	organization, pipeline, run, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineRunNodesSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(PipelineRunNodes, Error, void* )
	, void* userData)
{
	return getPipelineRunNodesHelper(accessToken,
	organization, pipeline, run, 
	handler, userData, false);
}

static bool getPipelineRunsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineRuns, Error, void* )
	= reinterpret_cast<void(*)(PipelineRuns, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineRuns out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineRuns")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineRuns", "PipelineRuns");
			json_node_free(pJson);

			if ("PipelineRuns" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelineRunsHelper(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineRuns, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelineRunsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelineRunsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelineRunsAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineRuns, Error, void* )
	, void* userData)
{
	return getPipelineRunsHelper(accessToken,
	organization, pipeline, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelineRunsSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(PipelineRuns, Error, void* )
	, void* userData)
{
	return getPipelineRunsHelper(accessToken,
	organization, pipeline, 
	handler, userData, false);
}

static bool getPipelinesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(Pipelines, Error, void* )
	= reinterpret_cast<void(*)(Pipelines, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	Pipelines out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("Pipelines")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "Pipelines", "Pipelines");
			json_node_free(pJson);

			if ("Pipelines" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getPipelinesHelper(char * accessToken,
	std::string organization, 
	void(* handler)(Pipelines, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getPipelinesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getPipelinesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getPipelinesAsync(char * accessToken,
	std::string organization, 
	void(* handler)(Pipelines, Error, void* )
	, void* userData)
{
	return getPipelinesHelper(accessToken,
	organization, 
	handler, userData, true);
}

bool BlueOceanManager::getPipelinesSync(char * accessToken,
	std::string organization, 
	void(* handler)(Pipelines, Error, void* )
	, void* userData)
{
	return getPipelinesHelper(accessToken,
	organization, 
	handler, userData, false);
}

static bool getSCMProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(GithubScm, Error, void* )
	= reinterpret_cast<void(*)(GithubScm, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	GithubScm out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("GithubScm")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "GithubScm", "GithubScm");
			json_node_free(pJson);

			if ("GithubScm" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getSCMHelper(char * accessToken,
	std::string organization, std::string scm, 
	void(* handler)(GithubScm, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/scm/{scm}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_scm("{");
	s_scm.append("scm");
	s_scm.append("}");
	pos = url.find(s_scm);
	url.erase(pos, s_scm.length());
	url.insert(pos, stringify(&scm, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getSCMProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getSCMProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getSCMAsync(char * accessToken,
	std::string organization, std::string scm, 
	void(* handler)(GithubScm, Error, void* )
	, void* userData)
{
	return getSCMHelper(accessToken,
	organization, scm, 
	handler, userData, true);
}

bool BlueOceanManager::getSCMSync(char * accessToken,
	std::string organization, std::string scm, 
	void(* handler)(GithubScm, Error, void* )
	, void* userData)
{
	return getSCMHelper(accessToken,
	organization, scm, 
	handler, userData, false);
}

static bool getSCMOrganisationRepositoriesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(ScmOrganisations, Error, void* )
	= reinterpret_cast<void(*)(ScmOrganisations, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	ScmOrganisations out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("ScmOrganisations")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "ScmOrganisations", "ScmOrganisations");
			json_node_free(pJson);

			if ("ScmOrganisations" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getSCMOrganisationRepositoriesHelper(char * accessToken,
	std::string organization, std::string scm, std::string scmOrganisation, std::string credentialId, int pageSize, int pageNumber, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&credentialId, "std::string");
	queryParams.insert(pair<string, string>("credentialId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("credentialId");
	}


	itemAtq = stringify(&pageSize, "int");
	queryParams.insert(pair<string, string>("pageSize", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pageSize");
	}


	itemAtq = stringify(&pageNumber, "int");
	queryParams.insert(pair<string, string>("pageNumber", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("pageNumber");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_scm("{");
	s_scm.append("scm");
	s_scm.append("}");
	pos = url.find(s_scm);
	url.erase(pos, s_scm.length());
	url.insert(pos, stringify(&scm, "std::string"));
	string s_scmOrganisation("{");
	s_scmOrganisation.append("scmOrganisation");
	s_scmOrganisation.append("}");
	pos = url.find(s_scmOrganisation);
	url.erase(pos, s_scmOrganisation.length());
	url.insert(pos, stringify(&scmOrganisation, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getSCMOrganisationRepositoriesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getSCMOrganisationRepositoriesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getSCMOrganisationRepositoriesAsync(char * accessToken,
	std::string organization, std::string scm, std::string scmOrganisation, std::string credentialId, int pageSize, int pageNumber, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData)
{
	return getSCMOrganisationRepositoriesHelper(accessToken,
	organization, scm, scmOrganisation, credentialId, pageSize, pageNumber, 
	handler, userData, true);
}

bool BlueOceanManager::getSCMOrganisationRepositoriesSync(char * accessToken,
	std::string organization, std::string scm, std::string scmOrganisation, std::string credentialId, int pageSize, int pageNumber, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData)
{
	return getSCMOrganisationRepositoriesHelper(accessToken,
	organization, scm, scmOrganisation, credentialId, pageSize, pageNumber, 
	handler, userData, false);
}

static bool getSCMOrganisationRepositoryProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(ScmOrganisations, Error, void* )
	= reinterpret_cast<void(*)(ScmOrganisations, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	ScmOrganisations out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("ScmOrganisations")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "ScmOrganisations", "ScmOrganisations");
			json_node_free(pJson);

			if ("ScmOrganisations" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getSCMOrganisationRepositoryHelper(char * accessToken,
	std::string organization, std::string scm, std::string scmOrganisation, std::string repository, std::string credentialId, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&credentialId, "std::string");
	queryParams.insert(pair<string, string>("credentialId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("credentialId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_scm("{");
	s_scm.append("scm");
	s_scm.append("}");
	pos = url.find(s_scm);
	url.erase(pos, s_scm.length());
	url.insert(pos, stringify(&scm, "std::string"));
	string s_scmOrganisation("{");
	s_scmOrganisation.append("scmOrganisation");
	s_scmOrganisation.append("}");
	pos = url.find(s_scmOrganisation);
	url.erase(pos, s_scmOrganisation.length());
	url.insert(pos, stringify(&scmOrganisation, "std::string"));
	string s_repository("{");
	s_repository.append("repository");
	s_repository.append("}");
	pos = url.find(s_repository);
	url.erase(pos, s_repository.length());
	url.insert(pos, stringify(&repository, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getSCMOrganisationRepositoryProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getSCMOrganisationRepositoryProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getSCMOrganisationRepositoryAsync(char * accessToken,
	std::string organization, std::string scm, std::string scmOrganisation, std::string repository, std::string credentialId, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData)
{
	return getSCMOrganisationRepositoryHelper(accessToken,
	organization, scm, scmOrganisation, repository, credentialId, 
	handler, userData, true);
}

bool BlueOceanManager::getSCMOrganisationRepositorySync(char * accessToken,
	std::string organization, std::string scm, std::string scmOrganisation, std::string repository, std::string credentialId, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData)
{
	return getSCMOrganisationRepositoryHelper(accessToken,
	organization, scm, scmOrganisation, repository, credentialId, 
	handler, userData, false);
}

static bool getSCMOrganisationsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(ScmOrganisations, Error, void* )
	= reinterpret_cast<void(*)(ScmOrganisations, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	ScmOrganisations out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("ScmOrganisations")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "ScmOrganisations", "ScmOrganisations");
			json_node_free(pJson);

			if ("ScmOrganisations" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getSCMOrganisationsHelper(char * accessToken,
	std::string organization, std::string scm, std::string credentialId, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&credentialId, "std::string");
	queryParams.insert(pair<string, string>("credentialId", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("credentialId");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/scm/{scm}/organizations");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_scm("{");
	s_scm.append("scm");
	s_scm.append("}");
	pos = url.find(s_scm);
	url.erase(pos, s_scm.length());
	url.insert(pos, stringify(&scm, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getSCMOrganisationsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getSCMOrganisationsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getSCMOrganisationsAsync(char * accessToken,
	std::string organization, std::string scm, std::string credentialId, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData)
{
	return getSCMOrganisationsHelper(accessToken,
	organization, scm, credentialId, 
	handler, userData, true);
}

bool BlueOceanManager::getSCMOrganisationsSync(char * accessToken,
	std::string organization, std::string scm, std::string credentialId, 
	void(* handler)(ScmOrganisations, Error, void* )
	, void* userData)
{
	return getSCMOrganisationsHelper(accessToken,
	organization, scm, credentialId, 
	handler, userData, false);
}

static bool getUserProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(User, Error, void* )
	= reinterpret_cast<void(*)(User, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	User out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("User")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "User", "User");
			json_node_free(pJson);

			if ("User" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getUserHelper(char * accessToken,
	std::string organization, std::string user, 
	void(* handler)(User, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/users/{user}");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_user("{");
	s_user.append("user");
	s_user.append("}");
	pos = url.find(s_user);
	url.erase(pos, s_user.length());
	url.insert(pos, stringify(&user, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getUserProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getUserProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getUserAsync(char * accessToken,
	std::string organization, std::string user, 
	void(* handler)(User, Error, void* )
	, void* userData)
{
	return getUserHelper(accessToken,
	organization, user, 
	handler, userData, true);
}

bool BlueOceanManager::getUserSync(char * accessToken,
	std::string organization, std::string user, 
	void(* handler)(User, Error, void* )
	, void* userData)
{
	return getUserHelper(accessToken,
	organization, user, 
	handler, userData, false);
}

static bool getUserFavoritesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(UserFavorites, Error, void* )
	= reinterpret_cast<void(*)(UserFavorites, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	UserFavorites out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("UserFavorites")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "UserFavorites", "UserFavorites");
			json_node_free(pJson);

			if ("UserFavorites" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getUserFavoritesHelper(char * accessToken,
	std::string user, 
	void(* handler)(UserFavorites, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/users/{user}/favorites");
	int pos;

	string s_user("{");
	s_user.append("user");
	s_user.append("}");
	pos = url.find(s_user);
	url.erase(pos, s_user.length());
	url.insert(pos, stringify(&user, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getUserFavoritesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getUserFavoritesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getUserFavoritesAsync(char * accessToken,
	std::string user, 
	void(* handler)(UserFavorites, Error, void* )
	, void* userData)
{
	return getUserFavoritesHelper(accessToken,
	user, 
	handler, userData, true);
}

bool BlueOceanManager::getUserFavoritesSync(char * accessToken,
	std::string user, 
	void(* handler)(UserFavorites, Error, void* )
	, void* userData)
{
	return getUserFavoritesHelper(accessToken,
	user, 
	handler, userData, false);
}

static bool getUsersProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(User, Error, void* )
	= reinterpret_cast<void(*)(User, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	User out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("User")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "User", "User");
			json_node_free(pJson);

			if ("User" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getUsersHelper(char * accessToken,
	std::string organization, 
	void(* handler)(User, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/users/");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getUsersProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getUsersProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::getUsersAsync(char * accessToken,
	std::string organization, 
	void(* handler)(User, Error, void* )
	, void* userData)
{
	return getUsersHelper(accessToken,
	organization, 
	handler, userData, true);
}

bool BlueOceanManager::getUsersSync(char * accessToken,
	std::string organization, 
	void(* handler)(User, Error, void* )
	, void* userData)
{
	return getUsersHelper(accessToken,
	organization, 
	handler, userData, false);
}

static bool postPipelineRunProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(QueueItemImpl, Error, void* )
	= reinterpret_cast<void(*)(QueueItemImpl, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	QueueItemImpl out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("QueueItemImpl")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "QueueItemImpl", "QueueItemImpl");
			json_node_free(pJson);

			if ("QueueItemImpl" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool postPipelineRunHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(QueueItemImpl, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_run("{");
	s_run.append("run");
	s_run.append("}");
	pos = url.find(s_run);
	url.erase(pos, s_run.length());
	url.insert(pos, stringify(&run, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postPipelineRunProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postPipelineRunProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::postPipelineRunAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(QueueItemImpl, Error, void* )
	, void* userData)
{
	return postPipelineRunHelper(accessToken,
	organization, pipeline, run, 
	handler, userData, true);
}

bool BlueOceanManager::postPipelineRunSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, 
	void(* handler)(QueueItemImpl, Error, void* )
	, void* userData)
{
	return postPipelineRunHelper(accessToken,
	organization, pipeline, run, 
	handler, userData, false);
}

static bool postPipelineRunsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(QueueItemImpl, Error, void* )
	= reinterpret_cast<void(*)(QueueItemImpl, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	QueueItemImpl out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("QueueItemImpl")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "QueueItemImpl", "QueueItemImpl");
			json_node_free(pJson);

			if ("QueueItemImpl" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool postPipelineRunsHelper(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(QueueItemImpl, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postPipelineRunsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postPipelineRunsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::postPipelineRunsAsync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(QueueItemImpl, Error, void* )
	, void* userData)
{
	return postPipelineRunsHelper(accessToken,
	organization, pipeline, 
	handler, userData, true);
}

bool BlueOceanManager::postPipelineRunsSync(char * accessToken,
	std::string organization, std::string pipeline, 
	void(* handler)(QueueItemImpl, Error, void* )
	, void* userData)
{
	return postPipelineRunsHelper(accessToken,
	organization, pipeline, 
	handler, userData, false);
}

static bool putPipelineFavoriteProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(FavoriteImpl, Error, void* )
	= reinterpret_cast<void(*)(FavoriteImpl, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	FavoriteImpl out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("FavoriteImpl")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "FavoriteImpl", "FavoriteImpl");
			json_node_free(pJson);

			if ("FavoriteImpl" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool putPipelineFavoriteHelper(char * accessToken,
	std::string organization, std::string pipeline, Body body, 
	void(* handler)(FavoriteImpl, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	if (isprimitive("Body")) {
		node = converttoJson(&body, "Body", "");
	}
	
	char *jsonStr =  body.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("PUT");

	if(strcmp("PUT", "PUT") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = putPipelineFavoriteProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), putPipelineFavoriteProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::putPipelineFavoriteAsync(char * accessToken,
	std::string organization, std::string pipeline, Body body, 
	void(* handler)(FavoriteImpl, Error, void* )
	, void* userData)
{
	return putPipelineFavoriteHelper(accessToken,
	organization, pipeline, body, 
	handler, userData, true);
}

bool BlueOceanManager::putPipelineFavoriteSync(char * accessToken,
	std::string organization, std::string pipeline, Body body, 
	void(* handler)(FavoriteImpl, Error, void* )
	, void* userData)
{
	return putPipelineFavoriteHelper(accessToken,
	organization, pipeline, body, 
	handler, userData, false);
}

static bool putPipelineRunProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(PipelineRun, Error, void* )
	= reinterpret_cast<void(*)(PipelineRun, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	PipelineRun out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("PipelineRun")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "PipelineRun", "PipelineRun");
			json_node_free(pJson);

			if ("PipelineRun" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool putPipelineRunHelper(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string blocking, int timeOutInSecs, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&blocking, "std::string");
	queryParams.insert(pair<string, string>("blocking", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("blocking");
	}


	itemAtq = stringify(&timeOutInSecs, "int");
	queryParams.insert(pair<string, string>("timeOutInSecs", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("timeOutInSecs");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop");
	int pos;

	string s_organization("{");
	s_organization.append("organization");
	s_organization.append("}");
	pos = url.find(s_organization);
	url.erase(pos, s_organization.length());
	url.insert(pos, stringify(&organization, "std::string"));
	string s_pipeline("{");
	s_pipeline.append("pipeline");
	s_pipeline.append("}");
	pos = url.find(s_pipeline);
	url.erase(pos, s_pipeline.length());
	url.insert(pos, stringify(&pipeline, "std::string"));
	string s_run("{");
	s_run.append("run");
	s_run.append("}");
	pos = url.find(s_run);
	url.erase(pos, s_run.length());
	url.insert(pos, stringify(&run, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("PUT");

	if(strcmp("PUT", "PUT") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = putPipelineRunProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), putPipelineRunProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::putPipelineRunAsync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string blocking, int timeOutInSecs, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData)
{
	return putPipelineRunHelper(accessToken,
	organization, pipeline, run, blocking, timeOutInSecs, 
	handler, userData, true);
}

bool BlueOceanManager::putPipelineRunSync(char * accessToken,
	std::string organization, std::string pipeline, std::string run, std::string blocking, int timeOutInSecs, 
	void(* handler)(PipelineRun, Error, void* )
	, void* userData)
{
	return putPipelineRunHelper(accessToken,
	organization, pipeline, run, blocking, timeOutInSecs, 
	handler, userData, false);
}

static bool searchProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::string, Error, void* )
	= reinterpret_cast<void(*)(std::string, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	std::string out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("std::string")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "std::string", "std::string");
			json_node_free(pJson);

			if ("std::string" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool searchHelper(char * accessToken,
	std::string q, 
	void(* handler)(std::string, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&q, "std::string");
	queryParams.insert(pair<string, string>("q", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/search/");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = searchProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), searchProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::searchAsync(char * accessToken,
	std::string q, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return searchHelper(accessToken,
	q, 
	handler, userData, true);
}

bool BlueOceanManager::searchSync(char * accessToken,
	std::string q, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return searchHelper(accessToken,
	q, 
	handler, userData, false);
}

static bool searchClassesProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::string, Error, void* )
	= reinterpret_cast<void(*)(std::string, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	std::string out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("std::string")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "std::string", "std::string");
			json_node_free(pJson);

			if ("std::string" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unkown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool searchClassesHelper(char * accessToken,
	std::string q, 
	void(* handler)(std::string, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&q, "std::string");
	queryParams.insert(pair<string, string>("q", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/blue/rest/classes/");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = searchClassesProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (BlueOceanManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), searchClassesProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __BlueOceanManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool BlueOceanManager::searchClassesAsync(char * accessToken,
	std::string q, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return searchClassesHelper(accessToken,
	q, 
	handler, userData, true);
}

bool BlueOceanManager::searchClassesSync(char * accessToken,
	std::string q, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return searchClassesHelper(accessToken,
	q, 
	handler, userData, false);
}

