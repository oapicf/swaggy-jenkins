#include "RemoteAccessApi.h"

using namespace Tiny;



        Response<
            ComputerSet
        >
        RemoteAccessApi::
        getComputer(
            
            int depth
            
        )
        {
            std::string url = basepath + "/computer/api/json"; //


            // Headers  | 

            // Query    | depth 
            addQueryParam("depth",depth);

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ComputerSet obj(output_string);


            Response<ComputerSet> response(obj, httpCode);
            return response;
        }

        Response<
            Hudson
        >
        RemoteAccessApi::
        getJenkins(
        )
        {
            std::string url = basepath + "/api/json"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            Hudson obj(output_string);


            Response<Hudson> response(obj, httpCode);
            return response;
        }

        Response<
            FreeStyleProject
        >
        RemoteAccessApi::
        getJob(
            
            std::string name
            
        )
        {
            std::string url = basepath + "/job/{name}/api/json"; //name 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            FreeStyleProject obj(output_string);


            Response<FreeStyleProject> response(obj, httpCode);
            return response;
        }

        Response<
            std::string
        >
        RemoteAccessApi::
        getJobConfig(
            
            std::string name
            
        )
        {
            std::string url = basepath + "/job/{name}/config.xml"; //name 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            bourne::json jsonPayload(output_string);
            std::string obj;
            jsonToValue(&obj, jsonPayload, "std::string");



            Response<std::string> response(obj, httpCode);
            return response;
        }

        Response<
            FreeStyleBuild
        >
        RemoteAccessApi::
        getJobLastBuild(
            
            std::string name
            
        )
        {
            std::string url = basepath + "/job/{name}/lastBuild/api/json"; //name 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            FreeStyleBuild obj(output_string);


            Response<FreeStyleBuild> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        getJobProgressiveText(
            
            std::string name
            , 
            
            std::string number
            , 
            
            std::string start
            
        )
        {
            std::string url = basepath + "/job/{name}/{number}/logText/progressiveText"; //name number 


            // Headers  | 

            // Query    | start 
            addQueryParam("start",start);

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));
                std::string s_number("{");
                s_number.append("number");
                s_number.append("}");

                int pos = url.find(s_number);

                url.erase(pos, s_number.length());
                url.insert(pos, stringify(number));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            Queue
        >
        RemoteAccessApi::
        getQueue(
        )
        {
            std::string url = basepath + "/queue/api/json"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            Queue obj(output_string);


            Response<Queue> response(obj, httpCode);
            return response;
        }

        Response<
            Queue
        >
        RemoteAccessApi::
        getQueueItem(
            
            std::string number
            
        )
        {
            std::string url = basepath + "/queue/item/{number}/api/json"; //number 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_number("{");
                s_number.append("number");
                s_number.append("}");

                int pos = url.find(s_number);

                url.erase(pos, s_number.length());
                url.insert(pos, stringify(number));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            Queue obj(output_string);


            Response<Queue> response(obj, httpCode);
            return response;
        }

        Response<
            ListView
        >
        RemoteAccessApi::
        getView(
            
            std::string name
            
        )
        {
            std::string url = basepath + "/view/{name}/api/json"; //name 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            ListView obj(output_string);


            Response<ListView> response(obj, httpCode);
            return response;
        }

        Response<
            std::string
        >
        RemoteAccessApi::
        getViewConfig(
            
            std::string name
            
        )
        {
            std::string url = basepath + "/view/{name}/config.xml"; //name 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            bourne::json jsonPayload(output_string);
            std::string obj;
            jsonToValue(&obj, jsonPayload, "std::string");



            Response<std::string> response(obj, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        headJenkins(
        )
        {
            std::string url = basepath + "/api/json"; //


            // Headers  | 

            // Query    | 

            // Form     | 





            std::string payload = "";
            // Send Request
            // METHOD | HEAD
            // Body     | 
            int httpCode = sendRequest(url, "HEAD", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        postCreateItem(
            
            std::string name
            , 
            
            std::string from
            , 
            
            std::string mode
            , 
            
            std::string jenkinsCrumb
            , 
            
            std::string contentType
            , 
            
            std::string body
            
        )
        {
            std::string url = basepath + "/createItem"; //


            // Headers  |  jenkinsCrumb  contentType 
            addHeader("Jenkins-Crumb",jenkinsCrumb);
            addHeader("Content-Type",contentType);

            // Query    | name from mode 
            addQueryParam("name",name);
            addQueryParam("from",from);
            addQueryParam("mode",mode);

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | body


            payload = stringify(body);


            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        postCreateView(
            
            std::string name
            , 
            
            std::string jenkinsCrumb
            , 
            
            std::string contentType
            , 
            
            std::string body
            
        )
        {
            std::string url = basepath + "/createView"; //


            // Headers  |  jenkinsCrumb  contentType 
            addHeader("Jenkins-Crumb",jenkinsCrumb);
            addHeader("Content-Type",contentType);

            // Query    | name 
            addQueryParam("name",name);

            // Form     | 
            addHeader("Content-Type", "application/json");





            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | body


            payload = stringify(body);


            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        postJobBuild(
            
            std::string name
            , 
            
            std::string json
            , 
            
            std::string token
            , 
            
            std::string jenkinsCrumb
            
        )
        {
            std::string url = basepath + "/job/{name}/build"; //name 


            // Headers  |  jenkinsCrumb 
            addHeader("Jenkins-Crumb",jenkinsCrumb);

            // Query    | json token 
            addQueryParam("json",json);
            addQueryParam("token",token);

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        postJobConfig(
            
            std::string name
            , 
            
            std::string body
            , 
            
            std::string jenkinsCrumb
            
        )
        {
            std::string url = basepath + "/job/{name}/config.xml"; //name 


            // Headers  |  jenkinsCrumb 
            addHeader("Jenkins-Crumb",jenkinsCrumb);

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | body


            payload = stringify(body);


            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        postJobDelete(
            
            std::string name
            , 
            
            std::string jenkinsCrumb
            
        )
        {
            std::string url = basepath + "/job/{name}/doDelete"; //name 


            // Headers  |  jenkinsCrumb 
            addHeader("Jenkins-Crumb",jenkinsCrumb);

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        postJobDisable(
            
            std::string name
            , 
            
            std::string jenkinsCrumb
            
        )
        {
            std::string url = basepath + "/job/{name}/disable"; //name 


            // Headers  |  jenkinsCrumb 
            addHeader("Jenkins-Crumb",jenkinsCrumb);

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        postJobEnable(
            
            std::string name
            , 
            
            std::string jenkinsCrumb
            
        )
        {
            std::string url = basepath + "/job/{name}/enable"; //name 


            // Headers  |  jenkinsCrumb 
            addHeader("Jenkins-Crumb",jenkinsCrumb);

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        postJobLastBuildStop(
            
            std::string name
            , 
            
            std::string jenkinsCrumb
            
        )
        {
            std::string url = basepath + "/job/{name}/lastBuild/stop"; //name 


            // Headers  |  jenkinsCrumb 
            addHeader("Jenkins-Crumb",jenkinsCrumb);

            // Query    | 

            // Form     | 



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            String
        >
        RemoteAccessApi::
        postViewConfig(
            
            std::string name
            , 
            
            std::string body
            , 
            
            std::string jenkinsCrumb
            
        )
        {
            std::string url = basepath + "/view/{name}/config.xml"; //name 


            // Headers  |  jenkinsCrumb 
            addHeader("Jenkins-Crumb",jenkinsCrumb);

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");



                std::string s_name("{");
                s_name.append("name");
                s_name.append("}");

                int pos = url.find(s_name);

                url.erase(pos, s_name.length());
                url.insert(pos, stringify(name));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | body


            payload = stringify(body);


            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }



