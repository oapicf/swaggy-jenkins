#include "BlueOceanApi.h"

using namespace Tiny;



        Response<
            String
        >
        BlueOceanApi::
        deletePipelineQueueItem(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string queue
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}"; //organization pipeline queue 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_queue("{");
                s_queue.append("queue");
                s_queue.append("}");

                int pos = url.find(s_queue);

                url.erase(pos, s_queue.length());
                url.insert(pos, stringify(queue));


            std::string payload = "";
            // Send Request
            // METHOD | DELETE
            // Body     | 
            int httpCode = sendRequest(url, "DELETE", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();


            Response<String> response(output, httpCode);
            return response;
        }

        Response<
            User
        >
        BlueOceanApi::
        getAuthenticatedUser(
            
            std::string organization
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/user/"; //organization 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            User obj(output_string);


            Response<User> response(obj, httpCode);
            return response;
        }

        Response<
            std::string
        >
        BlueOceanApi::
        getClasses(
            
            std::string r_class
            
        )
        {
            std::string url = basepath + "/blue/rest/classes/{class}"; //r_class 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_r_class("{");
                s_r_class.append("class");
                s_r_class.append("}");

                int pos = url.find(s_r_class);

                url.erase(pos, s_r_class.length());
                url.insert(pos, stringify(r_class));


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
            std::string
        >
        BlueOceanApi::
        getJsonWebKey(
            
            int key
            
        )
        {
            std::string url = basepath + "/jwt-auth/jwks/{key}"; //key 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_key("{");
                s_key.append("key");
                s_key.append("}");

                int pos = url.find(s_key);

                url.erase(pos, s_key.length());
                url.insert(pos, stringify(key));


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
            std::string
        >
        BlueOceanApi::
        getJsonWebToken(
            
            int expiryTimeInMins
            , 
            
            int maxExpiryTimeInMins
            
        )
        {
            std::string url = basepath + "/jwt-auth/token"; //


            // Headers  | 

            // Query    | expiryTimeInMins maxExpiryTimeInMins 
            addQueryParam("expiryTimeInMins",expiryTimeInMins);
            addQueryParam("maxExpiryTimeInMins",maxExpiryTimeInMins);

            // Form     | 





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
            Organisation
        >
        BlueOceanApi::
        getOrganisation(
            
            std::string organization
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}"; //organization 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            Organisation obj(output_string);


            Response<Organisation> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<Organisation>
        >
        BlueOceanApi::
        getOrganisations(
        )
        {
            std::string url = basepath + "/blue/rest/organizations/"; //


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



            std::list<Organisation> obj = std::list<Organisation>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                Organisation tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<Organisation>> response(obj, httpCode);
            return response;
        }

        Response<
            Pipeline
        >
        BlueOceanApi::
        getPipeline(
            
            std::string organization
            , 
            
            std::string pipeline
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}"; //organization pipeline 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            Pipeline obj(output_string);


            Response<Pipeline> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<PipelineActivity>
        >
        BlueOceanApi::
        getPipelineActivities(
            
            std::string organization
            , 
            
            std::string pipeline
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities"; //organization pipeline 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<PipelineActivity> obj = std::list<PipelineActivity>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                PipelineActivity tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<PipelineActivity>> response(obj, httpCode);
            return response;
        }

        Response<
            BranchImpl
        >
        BlueOceanApi::
        getPipelineBranch(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string branch
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/"; //organization pipeline branch 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_branch("{");
                s_branch.append("branch");
                s_branch.append("}");

                int pos = url.find(s_branch);

                url.erase(pos, s_branch.length());
                url.insert(pos, stringify(branch));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            BranchImpl obj(output_string);


            Response<BranchImpl> response(obj, httpCode);
            return response;
        }

        Response<
            PipelineRun
        >
        BlueOceanApi::
        getPipelineBranchRun(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string branch
            , 
            
            std::string run
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}"; //organization pipeline branch run 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_branch("{");
                s_branch.append("branch");
                s_branch.append("}");

                int pos = url.find(s_branch);

                url.erase(pos, s_branch.length());
                url.insert(pos, stringify(branch));
                std::string s_run("{");
                s_run.append("run");
                s_run.append("}");

                int pos = url.find(s_run);

                url.erase(pos, s_run.length());
                url.insert(pos, stringify(run));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PipelineRun obj(output_string);


            Response<PipelineRun> response(obj, httpCode);
            return response;
        }

        Response<
            MultibranchPipeline
        >
        BlueOceanApi::
        getPipelineBranches(
            
            std::string organization
            , 
            
            std::string pipeline
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches"; //organization pipeline 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            MultibranchPipeline obj(output_string);


            Response<MultibranchPipeline> response(obj, httpCode);
            return response;
        }

        Response<
            PipelineFolderImpl
        >
        BlueOceanApi::
        getPipelineFolder(
            
            std::string organization
            , 
            
            std::string folder
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{folder}/"; //organization folder 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_folder("{");
                s_folder.append("folder");
                s_folder.append("}");

                int pos = url.find(s_folder);

                url.erase(pos, s_folder.length());
                url.insert(pos, stringify(folder));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PipelineFolderImpl obj(output_string);


            Response<PipelineFolderImpl> response(obj, httpCode);
            return response;
        }

        Response<
            PipelineImpl
        >
        BlueOceanApi::
        getPipelineFolderPipeline(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string folder
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}"; //organization pipeline folder 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_folder("{");
                s_folder.append("folder");
                s_folder.append("}");

                int pos = url.find(s_folder);

                url.erase(pos, s_folder.length());
                url.insert(pos, stringify(folder));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PipelineImpl obj(output_string);


            Response<PipelineImpl> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<QueueItemImpl>
        >
        BlueOceanApi::
        getPipelineQueue(
            
            std::string organization
            , 
            
            std::string pipeline
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue"; //organization pipeline 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<QueueItemImpl> obj = std::list<QueueItemImpl>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                QueueItemImpl tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<QueueItemImpl>> response(obj, httpCode);
            return response;
        }

        Response<
            PipelineRun
        >
        BlueOceanApi::
        getPipelineRun(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}"; //organization pipeline run 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_run("{");
                s_run.append("run");
                s_run.append("}");

                int pos = url.find(s_run);

                url.erase(pos, s_run.length());
                url.insert(pos, stringify(run));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PipelineRun obj(output_string);


            Response<PipelineRun> response(obj, httpCode);
            return response;
        }

        Response<
            std::string
        >
        BlueOceanApi::
        getPipelineRunLog(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            , 
            
            int start
            , 
            
            bool download
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log"; //organization pipeline run 


            // Headers  | 

            // Query    | start download 
            addQueryParam("start",start);
            addQueryParam("download",download);

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_run("{");
                s_run.append("run");
                s_run.append("}");

                int pos = url.find(s_run);

                url.erase(pos, s_run.length());
                url.insert(pos, stringify(run));


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
            PipelineRunNode
        >
        BlueOceanApi::
        getPipelineRunNode(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            , 
            
            std::string node
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}"; //organization pipeline run node 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_run("{");
                s_run.append("run");
                s_run.append("}");

                int pos = url.find(s_run);

                url.erase(pos, s_run.length());
                url.insert(pos, stringify(run));
                std::string s_node("{");
                s_node.append("node");
                s_node.append("}");

                int pos = url.find(s_node);

                url.erase(pos, s_node.length());
                url.insert(pos, stringify(node));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PipelineRunNode obj(output_string);


            Response<PipelineRunNode> response(obj, httpCode);
            return response;
        }

        Response<
            PipelineStepImpl
        >
        BlueOceanApi::
        getPipelineRunNodeStep(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            , 
            
            std::string node
            , 
            
            std::string step
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}"; //organization pipeline run node step 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_run("{");
                s_run.append("run");
                s_run.append("}");

                int pos = url.find(s_run);

                url.erase(pos, s_run.length());
                url.insert(pos, stringify(run));
                std::string s_node("{");
                s_node.append("node");
                s_node.append("}");

                int pos = url.find(s_node);

                url.erase(pos, s_node.length());
                url.insert(pos, stringify(node));
                std::string s_step("{");
                s_step.append("step");
                s_step.append("}");

                int pos = url.find(s_step);

                url.erase(pos, s_step.length());
                url.insert(pos, stringify(step));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PipelineStepImpl obj(output_string);


            Response<PipelineStepImpl> response(obj, httpCode);
            return response;
        }

        Response<
            std::string
        >
        BlueOceanApi::
        getPipelineRunNodeStepLog(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            , 
            
            std::string node
            , 
            
            std::string step
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log"; //organization pipeline run node step 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_run("{");
                s_run.append("run");
                s_run.append("}");

                int pos = url.find(s_run);

                url.erase(pos, s_run.length());
                url.insert(pos, stringify(run));
                std::string s_node("{");
                s_node.append("node");
                s_node.append("}");

                int pos = url.find(s_node);

                url.erase(pos, s_node.length());
                url.insert(pos, stringify(node));
                std::string s_step("{");
                s_step.append("step");
                s_step.append("}");

                int pos = url.find(s_step);

                url.erase(pos, s_step.length());
                url.insert(pos, stringify(step));


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
            std::list<PipelineStepImpl>
        >
        BlueOceanApi::
        getPipelineRunNodeSteps(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            , 
            
            std::string node
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps"; //organization pipeline run node 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_run("{");
                s_run.append("run");
                s_run.append("}");

                int pos = url.find(s_run);

                url.erase(pos, s_run.length());
                url.insert(pos, stringify(run));
                std::string s_node("{");
                s_node.append("node");
                s_node.append("}");

                int pos = url.find(s_node);

                url.erase(pos, s_node.length());
                url.insert(pos, stringify(node));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<PipelineStepImpl> obj = std::list<PipelineStepImpl>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                PipelineStepImpl tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<PipelineStepImpl>> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<PipelineRunNode>
        >
        BlueOceanApi::
        getPipelineRunNodes(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes"; //organization pipeline run 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_run("{");
                s_run.append("run");
                s_run.append("}");

                int pos = url.find(s_run);

                url.erase(pos, s_run.length());
                url.insert(pos, stringify(run));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<PipelineRunNode> obj = std::list<PipelineRunNode>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                PipelineRunNode tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<PipelineRunNode>> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<PipelineRun>
        >
        BlueOceanApi::
        getPipelineRuns(
            
            std::string organization
            , 
            
            std::string pipeline
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"; //organization pipeline 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<PipelineRun> obj = std::list<PipelineRun>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                PipelineRun tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<PipelineRun>> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<Pipeline>
        >
        BlueOceanApi::
        getPipelines(
            
            std::string organization
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/"; //organization 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<Pipeline> obj = std::list<Pipeline>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                Pipeline tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<Pipeline>> response(obj, httpCode);
            return response;
        }

        Response<
            GithubScm
        >
        BlueOceanApi::
        getSCM(
            
            std::string organization
            , 
            
            std::string scm
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/scm/{scm}"; //organization scm 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_scm("{");
                s_scm.append("scm");
                s_scm.append("}");

                int pos = url.find(s_scm);

                url.erase(pos, s_scm.length());
                url.insert(pos, stringify(scm));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            GithubScm obj(output_string);


            Response<GithubScm> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<GithubOrganization>
        >
        BlueOceanApi::
        getSCMOrganisationRepositories(
            
            std::string organization
            , 
            
            std::string scm
            , 
            
            std::string scmOrganisation
            , 
            
            std::string credentialId
            , 
            
            int pageSize
            , 
            
            int pageNumber
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories"; //organization scm scmOrganisation 


            // Headers  | 

            // Query    | credentialId pageSize pageNumber 
            addQueryParam("credentialId",credentialId);
            addQueryParam("pageSize",pageSize);
            addQueryParam("pageNumber",pageNumber);

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_scm("{");
                s_scm.append("scm");
                s_scm.append("}");

                int pos = url.find(s_scm);

                url.erase(pos, s_scm.length());
                url.insert(pos, stringify(scm));
                std::string s_scmOrganisation("{");
                s_scmOrganisation.append("scmOrganisation");
                s_scmOrganisation.append("}");

                int pos = url.find(s_scmOrganisation);

                url.erase(pos, s_scmOrganisation.length());
                url.insert(pos, stringify(scmOrganisation));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<GithubOrganization> obj = std::list<GithubOrganization>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                GithubOrganization tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<GithubOrganization>> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<GithubOrganization>
        >
        BlueOceanApi::
        getSCMOrganisationRepository(
            
            std::string organization
            , 
            
            std::string scm
            , 
            
            std::string scmOrganisation
            , 
            
            std::string repository
            , 
            
            std::string credentialId
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}"; //organization scm scmOrganisation repository 


            // Headers  | 

            // Query    | credentialId 
            addQueryParam("credentialId",credentialId);

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_scm("{");
                s_scm.append("scm");
                s_scm.append("}");

                int pos = url.find(s_scm);

                url.erase(pos, s_scm.length());
                url.insert(pos, stringify(scm));
                std::string s_scmOrganisation("{");
                s_scmOrganisation.append("scmOrganisation");
                s_scmOrganisation.append("}");

                int pos = url.find(s_scmOrganisation);

                url.erase(pos, s_scmOrganisation.length());
                url.insert(pos, stringify(scmOrganisation));
                std::string s_repository("{");
                s_repository.append("repository");
                s_repository.append("}");

                int pos = url.find(s_repository);

                url.erase(pos, s_repository.length());
                url.insert(pos, stringify(repository));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<GithubOrganization> obj = std::list<GithubOrganization>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                GithubOrganization tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<GithubOrganization>> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<GithubOrganization>
        >
        BlueOceanApi::
        getSCMOrganisations(
            
            std::string organization
            , 
            
            std::string scm
            , 
            
            std::string credentialId
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/scm/{scm}/organizations"; //organization scm 


            // Headers  | 

            // Query    | credentialId 
            addQueryParam("credentialId",credentialId);

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_scm("{");
                s_scm.append("scm");
                s_scm.append("}");

                int pos = url.find(s_scm);

                url.erase(pos, s_scm.length());
                url.insert(pos, stringify(scm));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<GithubOrganization> obj = std::list<GithubOrganization>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                GithubOrganization tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<GithubOrganization>> response(obj, httpCode);
            return response;
        }

        Response<
            User
        >
        BlueOceanApi::
        getUser(
            
            std::string organization
            , 
            
            std::string user
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/users/{user}"; //organization user 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_user("{");
                s_user.append("user");
                s_user.append("}");

                int pos = url.find(s_user);

                url.erase(pos, s_user.length());
                url.insert(pos, stringify(user));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            User obj(output_string);


            Response<User> response(obj, httpCode);
            return response;
        }

        Response<
            std::list<FavoriteImpl>
        >
        BlueOceanApi::
        getUserFavorites(
            
            std::string user
            
        )
        {
            std::string url = basepath + "/blue/rest/users/{user}/favorites"; //user 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_user("{");
                s_user.append("user");
                s_user.append("}");

                int pos = url.find(s_user);

                url.erase(pos, s_user.length());
                url.insert(pos, stringify(user));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();



            std::list<FavoriteImpl> obj = std::list<FavoriteImpl>();
            bourne::json jsonPayload(output_string);








            
            for(auto& var : jsonPayload.array_range())
            {
                FavoriteImpl tmp(var.dump());
                obj.push_back(tmp);
            }
            







            Response<std::list<FavoriteImpl>> response(obj, httpCode);
            return response;
        }

        Response<
            User
        >
        BlueOceanApi::
        getUsers(
            
            std::string organization
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/users/"; //organization 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));


            std::string payload = "";
            // Send Request
            // METHOD | GET
            // Body     | 
            int httpCode = sendRequest(url, "GET", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            User obj(output_string);


            Response<User> response(obj, httpCode);
            return response;
        }

        Response<
            QueueItemImpl
        >
        BlueOceanApi::
        postPipelineRun(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay"; //organization pipeline run 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_run("{");
                s_run.append("run");
                s_run.append("}");

                int pos = url.find(s_run);

                url.erase(pos, s_run.length());
                url.insert(pos, stringify(run));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            QueueItemImpl obj(output_string);


            Response<QueueItemImpl> response(obj, httpCode);
            return response;
        }

        Response<
            QueueItemImpl
        >
        BlueOceanApi::
        postPipelineRuns(
            
            std::string organization
            , 
            
            std::string pipeline
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs"; //organization pipeline 


            // Headers  | 

            // Query    | 

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));


            std::string payload = "";
            // Send Request
            // METHOD | POST
            // Body     | 
            int httpCode = sendRequest(url, "POST", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            QueueItemImpl obj(output_string);


            Response<QueueItemImpl> response(obj, httpCode);
            return response;
        }

        Response<
            FavoriteImpl
        >
        BlueOceanApi::
        putPipelineFavorite(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            UNKNOWN_BASE_TYPE uNKNOWNBASETYPE
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite"; //organization pipeline 


            // Headers  | 

            // Query    | 

            // Form     | 
            addHeader("Content-Type", "application/json");



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));


            std::string payload = "";
            // Send Request
            // METHOD | PUT
            // Body     | uNKNOWNBASETYPE



            payload = uNKNOWNBASETYPE.toJson().dump();

            int httpCode = sendRequest(url, "PUT", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            FavoriteImpl obj(output_string);


            Response<FavoriteImpl> response(obj, httpCode);
            return response;
        }

        Response<
            PipelineRun
        >
        BlueOceanApi::
        putPipelineRun(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            , 
            
            std::string blocking
            , 
            
            int timeOutInSecs
            
        )
        {
            std::string url = basepath + "/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop"; //organization pipeline run 


            // Headers  | 

            // Query    | blocking timeOutInSecs 
            addQueryParam("blocking",blocking);
            addQueryParam("timeOutInSecs",timeOutInSecs);

            // Form     | 



                std::string s_organization("{");
                s_organization.append("organization");
                s_organization.append("}");

                int pos = url.find(s_organization);

                url.erase(pos, s_organization.length());
                url.insert(pos, stringify(organization));
                std::string s_pipeline("{");
                s_pipeline.append("pipeline");
                s_pipeline.append("}");

                int pos = url.find(s_pipeline);

                url.erase(pos, s_pipeline.length());
                url.insert(pos, stringify(pipeline));
                std::string s_run("{");
                s_run.append("run");
                s_run.append("}");

                int pos = url.find(s_run);

                url.erase(pos, s_run.length());
                url.insert(pos, stringify(run));


            std::string payload = "";
            // Send Request
            // METHOD | PUT
            // Body     | 
            int httpCode = sendRequest(url, "PUT", reinterpret_cast<uint8_t*>(&payload[0]), payload.length());

            // Handle Request
            String output = getResponseBody();
            std::string output_string = output.c_str();




            PipelineRun obj(output_string);


            Response<PipelineRun> response(obj, httpCode);
            return response;
        }

        Response<
            std::string
        >
        BlueOceanApi::
        search(
            
            std::string q
            
        )
        {
            std::string url = basepath + "/blue/rest/search/"; //


            // Headers  | 

            // Query    | q 
            addQueryParam("q",q);

            // Form     | 





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
            std::string
        >
        BlueOceanApi::
        searchClasses(
            
            std::string q
            
        )
        {
            std::string url = basepath + "/blue/rest/classes/"; //


            // Headers  | 

            // Query    | q 
            addQueryParam("q",q);

            // Form     | 





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



