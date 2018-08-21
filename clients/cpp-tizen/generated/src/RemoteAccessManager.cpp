#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "RemoteAccessManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


RemoteAccessManager::RemoteAccessManager()
{

}

RemoteAccessManager::~RemoteAccessManager()
{

}

static gboolean __RemoteAccessManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __RemoteAccessManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__RemoteAccessManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool getComputerProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(ComputerSet, Error, void* )
	= reinterpret_cast<void(*)(ComputerSet, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	ComputerSet out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("ComputerSet")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "ComputerSet", "ComputerSet");
			json_node_free(pJson);

			if ("ComputerSet" == "std::string") {
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
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getComputerHelper(char * accessToken,
	int depth, 
	void(* handler)(ComputerSet, Error, void* )
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
	

	itemAtq = stringify(&depth, "int");
	queryParams.insert(pair<string, string>("depth", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/computer/api/json");
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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getComputerProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getComputerProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getComputerAsync(char * accessToken,
	int depth, 
	void(* handler)(ComputerSet, Error, void* )
	, void* userData)
{
	return getComputerHelper(accessToken,
	depth, 
	handler, userData, true);
}

bool RemoteAccessManager::getComputerSync(char * accessToken,
	int depth, 
	void(* handler)(ComputerSet, Error, void* )
	, void* userData)
{
	return getComputerHelper(accessToken,
	depth, 
	handler, userData, false);
}

static bool getCrumbProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(DefaultCrumbIssuer, Error, void* )
	= reinterpret_cast<void(*)(DefaultCrumbIssuer, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	DefaultCrumbIssuer out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("DefaultCrumbIssuer")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "DefaultCrumbIssuer", "DefaultCrumbIssuer");
			json_node_free(pJson);

			if ("DefaultCrumbIssuer" == "std::string") {
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
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getCrumbHelper(char * accessToken,
	
	void(* handler)(DefaultCrumbIssuer, Error, void* )
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

	string url("/crumbIssuer/api/json");
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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getCrumbProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getCrumbProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getCrumbAsync(char * accessToken,
	
	void(* handler)(DefaultCrumbIssuer, Error, void* )
	, void* userData)
{
	return getCrumbHelper(accessToken,
	
	handler, userData, true);
}

bool RemoteAccessManager::getCrumbSync(char * accessToken,
	
	void(* handler)(DefaultCrumbIssuer, Error, void* )
	, void* userData)
{
	return getCrumbHelper(accessToken,
	
	handler, userData, false);
}

static bool getJenkinsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(Hudson, Error, void* )
	= reinterpret_cast<void(*)(Hudson, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	Hudson out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("Hudson")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "Hudson", "Hudson");
			json_node_free(pJson);

			if ("Hudson" == "std::string") {
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
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getJenkinsHelper(char * accessToken,
	
	void(* handler)(Hudson, Error, void* )
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

	string url("/api/json");
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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getJenkinsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getJenkinsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getJenkinsAsync(char * accessToken,
	
	void(* handler)(Hudson, Error, void* )
	, void* userData)
{
	return getJenkinsHelper(accessToken,
	
	handler, userData, true);
}

bool RemoteAccessManager::getJenkinsSync(char * accessToken,
	
	void(* handler)(Hudson, Error, void* )
	, void* userData)
{
	return getJenkinsHelper(accessToken,
	
	handler, userData, false);
}

static bool getJobProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(FreeStyleProject, Error, void* )
	= reinterpret_cast<void(*)(FreeStyleProject, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	FreeStyleProject out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("FreeStyleProject")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "FreeStyleProject", "FreeStyleProject");
			json_node_free(pJson);

			if ("FreeStyleProject" == "std::string") {
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
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getJobHelper(char * accessToken,
	std::string name, 
	void(* handler)(FreeStyleProject, Error, void* )
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

	string url("/job/{name}/api/json");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getJobProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getJobProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getJobAsync(char * accessToken,
	std::string name, 
	void(* handler)(FreeStyleProject, Error, void* )
	, void* userData)
{
	return getJobHelper(accessToken,
	name, 
	handler, userData, true);
}

bool RemoteAccessManager::getJobSync(char * accessToken,
	std::string name, 
	void(* handler)(FreeStyleProject, Error, void* )
	, void* userData)
{
	return getJobHelper(accessToken,
	name, 
	handler, userData, false);
}

static bool getJobConfigProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getJobConfigHelper(char * accessToken,
	std::string name, 
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

	string url("/job/{name}/config.xml");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getJobConfigProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getJobConfigProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getJobConfigAsync(char * accessToken,
	std::string name, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getJobConfigHelper(accessToken,
	name, 
	handler, userData, true);
}

bool RemoteAccessManager::getJobConfigSync(char * accessToken,
	std::string name, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getJobConfigHelper(accessToken,
	name, 
	handler, userData, false);
}

static bool getJobLastBuildProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(FreeStyleBuild, Error, void* )
	= reinterpret_cast<void(*)(FreeStyleBuild, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	FreeStyleBuild out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("FreeStyleBuild")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "FreeStyleBuild", "FreeStyleBuild");
			json_node_free(pJson);

			if ("FreeStyleBuild" == "std::string") {
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
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getJobLastBuildHelper(char * accessToken,
	std::string name, 
	void(* handler)(FreeStyleBuild, Error, void* )
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

	string url("/job/{name}/lastBuild/api/json");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getJobLastBuildProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getJobLastBuildProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getJobLastBuildAsync(char * accessToken,
	std::string name, 
	void(* handler)(FreeStyleBuild, Error, void* )
	, void* userData)
{
	return getJobLastBuildHelper(accessToken,
	name, 
	handler, userData, true);
}

bool RemoteAccessManager::getJobLastBuildSync(char * accessToken,
	std::string name, 
	void(* handler)(FreeStyleBuild, Error, void* )
	, void* userData)
{
	return getJobLastBuildHelper(accessToken,
	name, 
	handler, userData, false);
}

static bool getJobProgressiveTextProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool getJobProgressiveTextHelper(char * accessToken,
	std::string name, std::string number, std::string start, 
	
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
	

	itemAtq = stringify(&start, "std::string");
	queryParams.insert(pair<string, string>("start", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/job/{name}/{number}/logText/progressiveText");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));
	string s_number("{");
	s_number.append("number");
	s_number.append("}");
	pos = url.find(s_number);
	url.erase(pos, s_number.length());
	url.insert(pos, stringify(&number, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getJobProgressiveTextProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getJobProgressiveTextProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getJobProgressiveTextAsync(char * accessToken,
	std::string name, std::string number, std::string start, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return getJobProgressiveTextHelper(accessToken,
	name, number, start, 
	handler, userData, true);
}

bool RemoteAccessManager::getJobProgressiveTextSync(char * accessToken,
	std::string name, std::string number, std::string start, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return getJobProgressiveTextHelper(accessToken,
	name, number, start, 
	handler, userData, false);
}

static bool getQueueProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(Queue, Error, void* )
	= reinterpret_cast<void(*)(Queue, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	Queue out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("Queue")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "Queue", "Queue");
			json_node_free(pJson);

			if ("Queue" == "std::string") {
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
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getQueueHelper(char * accessToken,
	
	void(* handler)(Queue, Error, void* )
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

	string url("/queue/api/json");
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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getQueueProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getQueueProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getQueueAsync(char * accessToken,
	
	void(* handler)(Queue, Error, void* )
	, void* userData)
{
	return getQueueHelper(accessToken,
	
	handler, userData, true);
}

bool RemoteAccessManager::getQueueSync(char * accessToken,
	
	void(* handler)(Queue, Error, void* )
	, void* userData)
{
	return getQueueHelper(accessToken,
	
	handler, userData, false);
}

static bool getQueueItemProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(Queue, Error, void* )
	= reinterpret_cast<void(*)(Queue, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	Queue out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("Queue")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "Queue", "Queue");
			json_node_free(pJson);

			if ("Queue" == "std::string") {
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
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getQueueItemHelper(char * accessToken,
	std::string number, 
	void(* handler)(Queue, Error, void* )
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

	string url("/queue/item/{number}/api/json");
	int pos;

	string s_number("{");
	s_number.append("number");
	s_number.append("}");
	pos = url.find(s_number);
	url.erase(pos, s_number.length());
	url.insert(pos, stringify(&number, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getQueueItemProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getQueueItemProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getQueueItemAsync(char * accessToken,
	std::string number, 
	void(* handler)(Queue, Error, void* )
	, void* userData)
{
	return getQueueItemHelper(accessToken,
	number, 
	handler, userData, true);
}

bool RemoteAccessManager::getQueueItemSync(char * accessToken,
	std::string number, 
	void(* handler)(Queue, Error, void* )
	, void* userData)
{
	return getQueueItemHelper(accessToken,
	number, 
	handler, userData, false);
}

static bool getViewProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(ListView, Error, void* )
	= reinterpret_cast<void(*)(ListView, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	ListView out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("ListView")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "ListView", "ListView");
			json_node_free(pJson);

			if ("ListView" == "std::string") {
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
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getViewHelper(char * accessToken,
	std::string name, 
	void(* handler)(ListView, Error, void* )
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

	string url("/view/{name}/api/json");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getViewProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getViewProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getViewAsync(char * accessToken,
	std::string name, 
	void(* handler)(ListView, Error, void* )
	, void* userData)
{
	return getViewHelper(accessToken,
	name, 
	handler, userData, true);
}

bool RemoteAccessManager::getViewSync(char * accessToken,
	std::string name, 
	void(* handler)(ListView, Error, void* )
	, void* userData)
{
	return getViewHelper(accessToken,
	name, 
	handler, userData, false);
}

static bool getViewConfigProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool getViewConfigHelper(char * accessToken,
	std::string name, 
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

	string url("/view/{name}/config.xml");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = getViewConfigProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), getViewConfigProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::getViewConfigAsync(char * accessToken,
	std::string name, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getViewConfigHelper(accessToken,
	name, 
	handler, userData, true);
}

bool RemoteAccessManager::getViewConfigSync(char * accessToken,
	std::string name, 
	void(* handler)(std::string, Error, void* )
	, void* userData)
{
	return getViewConfigHelper(accessToken,
	name, 
	handler, userData, false);
}

static bool headJenkinsProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool headJenkinsHelper(char * accessToken,
	
	
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

	string url("/api/json");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("HEAD");

	if(strcmp("PUT", "HEAD") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = headJenkinsProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), headJenkinsProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::headJenkinsAsync(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData)
{
	return headJenkinsHelper(accessToken,
	
	handler, userData, true);
}

bool RemoteAccessManager::headJenkinsSync(char * accessToken,
	
	
	void(* handler)(Error, void* ) , void* userData)
{
	return headJenkinsHelper(accessToken,
	
	handler, userData, false);
}

static bool postCreateItemProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postCreateItemHelper(char * accessToken,
	std::string name, std::string from, std::string mode, std::string jenkinsCrumb, std::string contentType, std::string body, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	{
		string headerString("Jenkins-Crumb: ");
		headerString.append(stringify(&jenkinsCrumb, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	{
		string headerString("Content-Type: ");
		headerString.append(stringify(&contentType, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&name, "std::string");
	queryParams.insert(pair<string, string>("name", itemAtq));


	itemAtq = stringify(&from, "std::string");
	queryParams.insert(pair<string, string>("from", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("from");
	}


	itemAtq = stringify(&mode, "std::string");
	queryParams.insert(pair<string, string>("mode", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("mode");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	if (isprimitive("std::string")) {
		node = converttoJson(&body, "std::string", "");
	}
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/createItem");
	int pos;


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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postCreateItemProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postCreateItemProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::postCreateItemAsync(char * accessToken,
	std::string name, std::string from, std::string mode, std::string jenkinsCrumb, std::string contentType, std::string body, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postCreateItemHelper(accessToken,
	name, from, mode, jenkinsCrumb, contentType, body, 
	handler, userData, true);
}

bool RemoteAccessManager::postCreateItemSync(char * accessToken,
	std::string name, std::string from, std::string mode, std::string jenkinsCrumb, std::string contentType, std::string body, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postCreateItemHelper(accessToken,
	name, from, mode, jenkinsCrumb, contentType, body, 
	handler, userData, false);
}

static bool postCreateViewProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postCreateViewHelper(char * accessToken,
	std::string name, std::string jenkinsCrumb, std::string contentType, std::string body, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	{
		string headerString("Jenkins-Crumb: ");
		headerString.append(stringify(&jenkinsCrumb, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	{
		string headerString("Content-Type: ");
		headerString.append(stringify(&contentType, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&name, "std::string");
	queryParams.insert(pair<string, string>("name", itemAtq));

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	if (isprimitive("std::string")) {
		node = converttoJson(&body, "std::string", "");
	}
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/createView");
	int pos;


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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postCreateViewProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postCreateViewProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::postCreateViewAsync(char * accessToken,
	std::string name, std::string jenkinsCrumb, std::string contentType, std::string body, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postCreateViewHelper(accessToken,
	name, jenkinsCrumb, contentType, body, 
	handler, userData, true);
}

bool RemoteAccessManager::postCreateViewSync(char * accessToken,
	std::string name, std::string jenkinsCrumb, std::string contentType, std::string body, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postCreateViewHelper(accessToken,
	name, jenkinsCrumb, contentType, body, 
	handler, userData, false);
}

static bool postJobBuildProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postJobBuildHelper(char * accessToken,
	std::string name, std::string json, std::string token, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	{
		string headerString("Jenkins-Crumb: ");
		headerString.append(stringify(&jenkinsCrumb, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&json, "std::string");
	queryParams.insert(pair<string, string>("json", itemAtq));


	itemAtq = stringify(&token, "std::string");
	queryParams.insert(pair<string, string>("token", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("token");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/job/{name}/build");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postJobBuildProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postJobBuildProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::postJobBuildAsync(char * accessToken,
	std::string name, std::string json, std::string token, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobBuildHelper(accessToken,
	name, json, token, jenkinsCrumb, 
	handler, userData, true);
}

bool RemoteAccessManager::postJobBuildSync(char * accessToken,
	std::string name, std::string json, std::string token, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobBuildHelper(accessToken,
	name, json, token, jenkinsCrumb, 
	handler, userData, false);
}

static bool postJobConfigProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postJobConfigHelper(char * accessToken,
	std::string name, std::string body, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	{
		string headerString("Jenkins-Crumb: ");
		headerString.append(stringify(&jenkinsCrumb, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	if (isprimitive("std::string")) {
		node = converttoJson(&body, "std::string", "");
	}
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/job/{name}/config.xml");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postJobConfigProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postJobConfigProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::postJobConfigAsync(char * accessToken,
	std::string name, std::string body, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobConfigHelper(accessToken,
	name, body, jenkinsCrumb, 
	handler, userData, true);
}

bool RemoteAccessManager::postJobConfigSync(char * accessToken,
	std::string name, std::string body, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobConfigHelper(accessToken,
	name, body, jenkinsCrumb, 
	handler, userData, false);
}

static bool postJobDeleteProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postJobDeleteHelper(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	{
		string headerString("Jenkins-Crumb: ");
		headerString.append(stringify(&jenkinsCrumb, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/job/{name}/doDelete");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postJobDeleteProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postJobDeleteProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::postJobDeleteAsync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobDeleteHelper(accessToken,
	name, jenkinsCrumb, 
	handler, userData, true);
}

bool RemoteAccessManager::postJobDeleteSync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobDeleteHelper(accessToken,
	name, jenkinsCrumb, 
	handler, userData, false);
}

static bool postJobDisableProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postJobDisableHelper(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	{
		string headerString("Jenkins-Crumb: ");
		headerString.append(stringify(&jenkinsCrumb, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/job/{name}/disable");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postJobDisableProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postJobDisableProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::postJobDisableAsync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobDisableHelper(accessToken,
	name, jenkinsCrumb, 
	handler, userData, true);
}

bool RemoteAccessManager::postJobDisableSync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobDisableHelper(accessToken,
	name, jenkinsCrumb, 
	handler, userData, false);
}

static bool postJobEnableProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postJobEnableHelper(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	{
		string headerString("Jenkins-Crumb: ");
		headerString.append(stringify(&jenkinsCrumb, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/job/{name}/enable");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postJobEnableProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postJobEnableProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::postJobEnableAsync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobEnableHelper(accessToken,
	name, jenkinsCrumb, 
	handler, userData, true);
}

bool RemoteAccessManager::postJobEnableSync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobEnableHelper(accessToken,
	name, jenkinsCrumb, 
	handler, userData, false);
}

static bool postJobLastBuildStopProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postJobLastBuildStopHelper(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	{
		string headerString("Jenkins-Crumb: ");
		headerString.append(stringify(&jenkinsCrumb, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/job/{name}/lastBuild/stop");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postJobLastBuildStopProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postJobLastBuildStopProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::postJobLastBuildStopAsync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobLastBuildStopHelper(accessToken,
	name, jenkinsCrumb, 
	handler, userData, true);
}

bool RemoteAccessManager::postJobLastBuildStopSync(char * accessToken,
	std::string name, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postJobLastBuildStopHelper(accessToken,
	name, jenkinsCrumb, 
	handler, userData, false);
}

static bool postViewConfigProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
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
			error = Error(code, string("Unknown Error"));
		}
		handler(error, userData);
		return false;
	}
}

static bool postViewConfigHelper(char * accessToken,
	std::string name, std::string body, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	{
		string headerString("Jenkins-Crumb: ");
		headerString.append(stringify(&jenkinsCrumb, "std::string"));
		headerList = curl_slist_append(headerList, headerString.c_str());
	}

	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	if (isprimitive("std::string")) {
		node = converttoJson(&body, "std::string", "");
	}
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/view/{name}/config.xml");
	int pos;

	string s_name("{");
	s_name.append("name");
	s_name.append("}");
	pos = url.find(s_name);
	url.erase(pos, s_name.length());
	url.insert(pos, stringify(&name, "std::string"));

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
		NetClient::easycurl(RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = postViewConfigProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (RemoteAccessManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), postViewConfigProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __RemoteAccessManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool RemoteAccessManager::postViewConfigAsync(char * accessToken,
	std::string name, std::string body, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postViewConfigHelper(accessToken,
	name, body, jenkinsCrumb, 
	handler, userData, true);
}

bool RemoteAccessManager::postViewConfigSync(char * accessToken,
	std::string name, std::string body, std::string jenkinsCrumb, 
	
	void(* handler)(Error, void* ) , void* userData)
{
	return postViewConfigHelper(accessToken,
	name, body, jenkinsCrumb, 
	handler, userData, false);
}

