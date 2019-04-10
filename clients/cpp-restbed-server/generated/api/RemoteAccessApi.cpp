/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.2.1-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


#include <corvusoft/restbed/byte.hpp>
#include <corvusoft/restbed/string.hpp>
#include <corvusoft/restbed/settings.hpp>
#include <corvusoft/restbed/request.hpp>

#include "RemoteAccessApi.h"

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

RemoteAccessApi::RemoteAccessApi() {
	std::shared_ptr<RemoteAccessApiComputerApiJsonResource> spRemoteAccessApiComputerApiJsonResource = std::make_shared<RemoteAccessApiComputerApiJsonResource>();
	this->publish(spRemoteAccessApiComputerApiJsonResource);
	
	std::shared_ptr<RemoteAccessApiApiJsonResource> spRemoteAccessApiApiJsonResource = std::make_shared<RemoteAccessApiApiJsonResource>();
	this->publish(spRemoteAccessApiApiJsonResource);
	
	std::shared_ptr<RemoteAccessApiJobNameApiJsonResource> spRemoteAccessApiJobNameApiJsonResource = std::make_shared<RemoteAccessApiJobNameApiJsonResource>();
	this->publish(spRemoteAccessApiJobNameApiJsonResource);
	
	std::shared_ptr<RemoteAccessApiJobNameConfig.xmlResource> spRemoteAccessApiJobNameConfig.xmlResource = std::make_shared<RemoteAccessApiJobNameConfig.xmlResource>();
	this->publish(spRemoteAccessApiJobNameConfig.xmlResource);
	
	std::shared_ptr<RemoteAccessApiJobNameLastBuildApiJsonResource> spRemoteAccessApiJobNameLastBuildApiJsonResource = std::make_shared<RemoteAccessApiJobNameLastBuildApiJsonResource>();
	this->publish(spRemoteAccessApiJobNameLastBuildApiJsonResource);
	
	std::shared_ptr<RemoteAccessApiJobNameNumberLogTextProgressiveTextResource> spRemoteAccessApiJobNameNumberLogTextProgressiveTextResource = std::make_shared<RemoteAccessApiJobNameNumberLogTextProgressiveTextResource>();
	this->publish(spRemoteAccessApiJobNameNumberLogTextProgressiveTextResource);
	
	std::shared_ptr<RemoteAccessApiQueueApiJsonResource> spRemoteAccessApiQueueApiJsonResource = std::make_shared<RemoteAccessApiQueueApiJsonResource>();
	this->publish(spRemoteAccessApiQueueApiJsonResource);
	
	std::shared_ptr<RemoteAccessApiQueueItemNumberApiJsonResource> spRemoteAccessApiQueueItemNumberApiJsonResource = std::make_shared<RemoteAccessApiQueueItemNumberApiJsonResource>();
	this->publish(spRemoteAccessApiQueueItemNumberApiJsonResource);
	
	std::shared_ptr<RemoteAccessApiViewNameApiJsonResource> spRemoteAccessApiViewNameApiJsonResource = std::make_shared<RemoteAccessApiViewNameApiJsonResource>();
	this->publish(spRemoteAccessApiViewNameApiJsonResource);
	
	std::shared_ptr<RemoteAccessApiViewNameConfig.xmlResource> spRemoteAccessApiViewNameConfig.xmlResource = std::make_shared<RemoteAccessApiViewNameConfig.xmlResource>();
	this->publish(spRemoteAccessApiViewNameConfig.xmlResource);
	
	std::shared_ptr<RemoteAccessApiCreateItemResource> spRemoteAccessApiCreateItemResource = std::make_shared<RemoteAccessApiCreateItemResource>();
	this->publish(spRemoteAccessApiCreateItemResource);
	
	std::shared_ptr<RemoteAccessApiCreateViewResource> spRemoteAccessApiCreateViewResource = std::make_shared<RemoteAccessApiCreateViewResource>();
	this->publish(spRemoteAccessApiCreateViewResource);
	
	std::shared_ptr<RemoteAccessApiJobNameBuildResource> spRemoteAccessApiJobNameBuildResource = std::make_shared<RemoteAccessApiJobNameBuildResource>();
	this->publish(spRemoteAccessApiJobNameBuildResource);
	
	std::shared_ptr<RemoteAccessApiJobNameDoDeleteResource> spRemoteAccessApiJobNameDoDeleteResource = std::make_shared<RemoteAccessApiJobNameDoDeleteResource>();
	this->publish(spRemoteAccessApiJobNameDoDeleteResource);
	
	std::shared_ptr<RemoteAccessApiJobNameDisableResource> spRemoteAccessApiJobNameDisableResource = std::make_shared<RemoteAccessApiJobNameDisableResource>();
	this->publish(spRemoteAccessApiJobNameDisableResource);
	
	std::shared_ptr<RemoteAccessApiJobNameEnableResource> spRemoteAccessApiJobNameEnableResource = std::make_shared<RemoteAccessApiJobNameEnableResource>();
	this->publish(spRemoteAccessApiJobNameEnableResource);
	
	std::shared_ptr<RemoteAccessApiJobNameLastBuildStopResource> spRemoteAccessApiJobNameLastBuildStopResource = std::make_shared<RemoteAccessApiJobNameLastBuildStopResource>();
	this->publish(spRemoteAccessApiJobNameLastBuildStopResource);
	
}

RemoteAccessApi::~RemoteAccessApi() {}

void RemoteAccessApi::startService(int const& port) {
	std::shared_ptr<restbed::Settings> settings = std::make_shared<restbed::Settings>();
	settings->set_port(port);
	settings->set_root("/");
	
	this->start(settings);
}

void RemoteAccessApi::stopService() {
	this->stop();
}

RemoteAccessApiComputerApiJsonResource::RemoteAccessApiComputerApiJsonResource()
{
	this->set_path("/computer/api/json/");
	this->set_method_handler("GET",
		std::bind(&RemoteAccessApiComputerApiJsonResource::GET_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiComputerApiJsonResource::~RemoteAccessApiComputerApiJsonResource()
{
}

void RemoteAccessApiComputerApiJsonResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			
			// Getting the query params
			const int32_t depth = request->get_query_parameter("depth", 0);

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved computer details", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiApiJsonResource::RemoteAccessApiApiJsonResource()
{
	this->set_path("/api/json/");
	this->set_method_handler("GET",
		std::bind(&RemoteAccessApiApiJsonResource::GET_method_handler, this,
			std::placeholders::_1));
	this->set_method_handler("HEAD",
		std::bind(&RemoteAccessApiApiJsonResource::HEAD_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiApiJsonResource::~RemoteAccessApiApiJsonResource()
{
}

void RemoteAccessApiApiJsonResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved Jenkins details", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}

}

void RemoteAccessApiApiJsonResource::HEAD_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();

			
		
			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				// Description: Jenkins version number
				session->set_header("x-jenkins", ""); // Change second param to your header value
				session->close(200, "Successfully retrieved Jenkins headers", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}

}


RemoteAccessApiJobNameApiJsonResource::RemoteAccessApiJobNameApiJsonResource()
{
	this->set_path("/job/{name: .*}/api/json/");
	this->set_method_handler("GET",
		std::bind(&RemoteAccessApiJobNameApiJsonResource::GET_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiJobNameApiJsonResource::~RemoteAccessApiJobNameApiJsonResource()
{
}

void RemoteAccessApiJobNameApiJsonResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved job details", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "Job cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiJobNameConfig.xmlResource::RemoteAccessApiJobNameConfig.xmlResource()
{
	this->set_path("/job/{name: .*}/config.xml/");
	this->set_method_handler("GET",
		std::bind(&RemoteAccessApiJobNameConfig.xmlResource::GET_method_handler, this,
			std::placeholders::_1));
	this->set_method_handler("POST",
		std::bind(&RemoteAccessApiJobNameConfig.xmlResource::POST_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiJobNameConfig.xmlResource::~RemoteAccessApiJobNameConfig.xmlResource()
{
}

void RemoteAccessApiJobNameConfig.xmlResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved job configuration in config.xml format", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "Job cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}

void RemoteAccessApiJobNameConfig.xmlResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
	// Body params are present, therefore we have to fetch them
	int content_length = request->get_header("Content-Length", 0);
	session->fetch(content_length,
		[ this ]( const std::shared_ptr<restbed::Session> session, const restbed::Bytes & body )
		{

			const auto request = session->get_request();
			std::string requestBody = restbed::String::format("%.*s\n", ( int ) body.size( ), body.data( ));

			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			
		
			// Getting the headers
			const std::string jenkinsCrumb = request->get_header("jenkinsCrumb", "");
			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved job configuration in config.xml format", { {"Connection", "close"} });
				return;
			}
			if (status_code == 400) {
				std::shared_ptr<std::string> response = NULL;
				session->close(400, "An error has occurred - error message is embedded inside the HTML response", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "Job cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

		});
}


RemoteAccessApiJobNameLastBuildApiJsonResource::RemoteAccessApiJobNameLastBuildApiJsonResource()
{
	this->set_path("/job/{name: .*}/lastBuild/api/json/");
	this->set_method_handler("GET",
		std::bind(&RemoteAccessApiJobNameLastBuildApiJsonResource::GET_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiJobNameLastBuildApiJsonResource::~RemoteAccessApiJobNameLastBuildApiJsonResource()
{
}

void RemoteAccessApiJobNameLastBuildApiJsonResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved job&#39;s last build details", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "Job cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiJobNameNumberLogTextProgressiveTextResource::RemoteAccessApiJobNameNumberLogTextProgressiveTextResource()
{
	this->set_path("/job/{name: .*}/{number: .*}/logText/progressiveText/");
	this->set_method_handler("GET",
		std::bind(&RemoteAccessApiJobNameNumberLogTextProgressiveTextResource::GET_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiJobNameNumberLogTextProgressiveTextResource::~RemoteAccessApiJobNameNumberLogTextProgressiveTextResource()
{
}

void RemoteAccessApiJobNameNumberLogTextProgressiveTextResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			const std::string number = request->get_path_parameter("number", "");
			
			// Getting the query params
			const std::string start = request->get_query_parameter("start", "");

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved job&#39;s build progressive text output", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "Job cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiQueueApiJsonResource::RemoteAccessApiQueueApiJsonResource()
{
	this->set_path("/queue/api/json/");
	this->set_method_handler("GET",
		std::bind(&RemoteAccessApiQueueApiJsonResource::GET_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiQueueApiJsonResource::~RemoteAccessApiQueueApiJsonResource()
{
}

void RemoteAccessApiQueueApiJsonResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved queue details", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiQueueItemNumberApiJsonResource::RemoteAccessApiQueueItemNumberApiJsonResource()
{
	this->set_path("/queue/item/{number: .*}/api/json/");
	this->set_method_handler("GET",
		std::bind(&RemoteAccessApiQueueItemNumberApiJsonResource::GET_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiQueueItemNumberApiJsonResource::~RemoteAccessApiQueueItemNumberApiJsonResource()
{
}

void RemoteAccessApiQueueItemNumberApiJsonResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string number = request->get_path_parameter("number", "");
			

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved queued item details", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiViewNameApiJsonResource::RemoteAccessApiViewNameApiJsonResource()
{
	this->set_path("/view/{name: .*}/api/json/");
	this->set_method_handler("GET",
		std::bind(&RemoteAccessApiViewNameApiJsonResource::GET_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiViewNameApiJsonResource::~RemoteAccessApiViewNameApiJsonResource()
{
}

void RemoteAccessApiViewNameApiJsonResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved view details", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "View cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiViewNameConfig.xmlResource::RemoteAccessApiViewNameConfig.xmlResource()
{
	this->set_path("/view/{name: .*}/config.xml/");
	this->set_method_handler("GET",
		std::bind(&RemoteAccessApiViewNameConfig.xmlResource::GET_method_handler, this,
			std::placeholders::_1));
	this->set_method_handler("POST",
		std::bind(&RemoteAccessApiViewNameConfig.xmlResource::POST_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiViewNameConfig.xmlResource::~RemoteAccessApiViewNameConfig.xmlResource()
{
}

void RemoteAccessApiViewNameConfig.xmlResource::GET_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			

			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully retrieved view configuration in config.xml format", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "View cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}

void RemoteAccessApiViewNameConfig.xmlResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
	// Body params are present, therefore we have to fetch them
	int content_length = request->get_header("Content-Length", 0);
	session->fetch(content_length,
		[ this ]( const std::shared_ptr<restbed::Session> session, const restbed::Bytes & body )
		{

			const auto request = session->get_request();
			std::string requestBody = restbed::String::format("%.*s\n", ( int ) body.size( ), body.data( ));

			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			
		
			// Getting the headers
			const std::string jenkinsCrumb = request->get_header("jenkinsCrumb", "");
			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully updated view configuration", { {"Connection", "close"} });
				return;
			}
			if (status_code == 400) {
				std::shared_ptr<std::string> response = NULL;
				session->close(400, "An error has occurred - error message is embedded inside the HTML response", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "View cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

		});
}


RemoteAccessApiCreateItemResource::RemoteAccessApiCreateItemResource()
{
	this->set_path("/createItem/");
	this->set_method_handler("POST",
		std::bind(&RemoteAccessApiCreateItemResource::POST_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiCreateItemResource::~RemoteAccessApiCreateItemResource()
{
}

void RemoteAccessApiCreateItemResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
	// Body params are present, therefore we have to fetch them
	int content_length = request->get_header("Content-Length", 0);
	session->fetch(content_length,
		[ this ]( const std::shared_ptr<restbed::Session> session, const restbed::Bytes & body )
		{

			const auto request = session->get_request();
			std::string requestBody = restbed::String::format("%.*s\n", ( int ) body.size( ), body.data( ));
			/**
			 * Get body params or form params here from the requestBody string
			 */
			
			
			// Getting the query params
			const std::string name = request->get_query_parameter("name", "");
			const std::string from = request->get_query_parameter("from", "");
			const std::string mode = request->get_query_parameter("mode", "");

			// Getting the headers
			const std::string jenkinsCrumb = request->get_header("jenkinsCrumb", "");
			const std::string contentType = request->get_header("contentType", "");
			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully created a new job", { {"Connection", "close"} });
				return;
			}
			if (status_code == 400) {
				session->close(400, "An error has occurred - error message is embedded inside the HTML response", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}

		});
}



RemoteAccessApiCreateViewResource::RemoteAccessApiCreateViewResource()
{
	this->set_path("/createView/");
	this->set_method_handler("POST",
		std::bind(&RemoteAccessApiCreateViewResource::POST_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiCreateViewResource::~RemoteAccessApiCreateViewResource()
{
}

void RemoteAccessApiCreateViewResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
	// Body params are present, therefore we have to fetch them
	int content_length = request->get_header("Content-Length", 0);
	session->fetch(content_length,
		[ this ]( const std::shared_ptr<restbed::Session> session, const restbed::Bytes & body )
		{

			const auto request = session->get_request();
			std::string requestBody = restbed::String::format("%.*s\n", ( int ) body.size( ), body.data( ));
			/**
			 * Get body params or form params here from the requestBody string
			 */
			
			
			// Getting the query params
			const std::string name = request->get_query_parameter("name", "");

			// Getting the headers
			const std::string jenkinsCrumb = request->get_header("jenkinsCrumb", "");
			const std::string contentType = request->get_header("contentType", "");
			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully created the view", { {"Connection", "close"} });
				return;
			}
			if (status_code == 400) {
				session->close(400, "An error has occurred - error message is embedded inside the HTML response", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}

		});
}



RemoteAccessApiJobNameBuildResource::RemoteAccessApiJobNameBuildResource()
{
	this->set_path("/job/{name: .*}/build/");
	this->set_method_handler("POST",
		std::bind(&RemoteAccessApiJobNameBuildResource::POST_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiJobNameBuildResource::~RemoteAccessApiJobNameBuildResource()
{
}

void RemoteAccessApiJobNameBuildResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			
			// Getting the query params
			const std::string json = request->get_query_parameter("json", "");
			const std::string token = request->get_query_parameter("token", "");

			// Getting the headers
			const std::string jenkinsCrumb = request->get_header("jenkinsCrumb", "");
			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully built the job (backward compatibility for older versions of Jenkins)", { {"Connection", "close"} });
				return;
			}
			if (status_code == 201) {
				session->close(201, "Successfully built the job", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "Job cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiJobNameDoDeleteResource::RemoteAccessApiJobNameDoDeleteResource()
{
	this->set_path("/job/{name: .*}/doDelete/");
	this->set_method_handler("POST",
		std::bind(&RemoteAccessApiJobNameDoDeleteResource::POST_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiJobNameDoDeleteResource::~RemoteAccessApiJobNameDoDeleteResource()
{
}

void RemoteAccessApiJobNameDoDeleteResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			

			// Getting the headers
			const std::string jenkinsCrumb = request->get_header("jenkinsCrumb", "");
			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully deleted the job", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "Job cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiJobNameDisableResource::RemoteAccessApiJobNameDisableResource()
{
	this->set_path("/job/{name: .*}/disable/");
	this->set_method_handler("POST",
		std::bind(&RemoteAccessApiJobNameDisableResource::POST_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiJobNameDisableResource::~RemoteAccessApiJobNameDisableResource()
{
}

void RemoteAccessApiJobNameDisableResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			

			// Getting the headers
			const std::string jenkinsCrumb = request->get_header("jenkinsCrumb", "");
			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully disabled the job", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "Job cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiJobNameEnableResource::RemoteAccessApiJobNameEnableResource()
{
	this->set_path("/job/{name: .*}/enable/");
	this->set_method_handler("POST",
		std::bind(&RemoteAccessApiJobNameEnableResource::POST_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiJobNameEnableResource::~RemoteAccessApiJobNameEnableResource()
{
}

void RemoteAccessApiJobNameEnableResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			

			// Getting the headers
			const std::string jenkinsCrumb = request->get_header("jenkinsCrumb", "");
			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully enabled the job", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "Job cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}



RemoteAccessApiJobNameLastBuildStopResource::RemoteAccessApiJobNameLastBuildStopResource()
{
	this->set_path("/job/{name: .*}/lastBuild/stop/");
	this->set_method_handler("POST",
		std::bind(&RemoteAccessApiJobNameLastBuildStopResource::POST_method_handler, this,
			std::placeholders::_1));
}

RemoteAccessApiJobNameLastBuildStopResource::~RemoteAccessApiJobNameLastBuildStopResource()
{
}

void RemoteAccessApiJobNameLastBuildStopResource::POST_method_handler(const std::shared_ptr<restbed::Session> session) {

	const auto request = session->get_request();
			
			// Getting the path params
			const std::string name = request->get_path_parameter("name", "");
			

			// Getting the headers
			const std::string jenkinsCrumb = request->get_header("jenkinsCrumb", "");
			
			// Change the value of this variable to the appropriate response before sending the response
			int status_code = 200;
			
			/**
			 * Process the received information here
			 */
			
			if (status_code == 200) {
				session->close(200, "Successfully stopped the job", { {"Connection", "close"} });
				return;
			}
			if (status_code == 401) {
				session->close(401, "Authentication failed - incorrect username and/or password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 403) {
				session->close(403, "Jenkins requires authentication - please set username and password", { {"Connection", "close"} });
				return;
			}
			if (status_code == 404) {
				session->close(404, "Job cannot be found on Jenkins instance", { {"Connection", "close"} });
				return;
			}

}




}
}
}
}

