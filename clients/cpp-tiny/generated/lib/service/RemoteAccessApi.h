#ifndef TINY_CPP_CLIENT_RemoteAccessApi_H_
#define TINY_CPP_CLIENT_RemoteAccessApi_H_


#include "Response.h"
#include "Arduino.h"
#include "Service.h"
#include "Helpers.h"
#include <list>

#include "ComputerSet.h"
#include "FreeStyleBuild.h"
#include "FreeStyleProject.h"
#include "Hudson.h"
#include "ListView.h"
#include "Queue.h"

namespace Tiny {

/**
 *  Class 
 * Generated with openapi::tiny-cpp-client
 */

class RemoteAccessApi : public Service {
public:
    RemoteAccessApi() = default;

    virtual ~RemoteAccessApi() = default;

    /**
    * .
    *
    * Retrieve computer details
    * \param depth Recursion depth in response model *Required*
    */
    Response<
                ComputerSet
        >
    getComputer(
            
            int depth
            
    );
    /**
    * .
    *
    * Retrieve Jenkins details
    */
    Response<
                Hudson
        >
    getJenkins(
    );
    /**
    * .
    *
    * Retrieve job details
    * \param name Name of the job *Required*
    */
    Response<
                FreeStyleProject
        >
    getJob(
            
            std::string name
            
    );
    /**
    * .
    *
    * Retrieve job configuration
    * \param name Name of the job *Required*
    */
    Response<
                std::string
        >
    getJobConfig(
            
            std::string name
            
    );
    /**
    * .
    *
    * Retrieve job's last build details
    * \param name Name of the job *Required*
    */
    Response<
                FreeStyleBuild
        >
    getJobLastBuild(
            
            std::string name
            
    );
    /**
    * .
    *
    * Retrieve job's build progressive text output
    * \param name Name of the job *Required*
    * \param number Build number *Required*
    * \param start Starting point of progressive text output *Required*
    */
    Response<
            String
        >
    getJobProgressiveText(
            
            std::string name
            , 
            
            std::string number
            , 
            
            std::string start
            
    );
    /**
    * .
    *
    * Retrieve queue details
    */
    Response<
                Queue
        >
    getQueue(
    );
    /**
    * .
    *
    * Retrieve queued item details
    * \param number Queue number *Required*
    */
    Response<
                Queue
        >
    getQueueItem(
            
            std::string number
            
    );
    /**
    * .
    *
    * Retrieve view details
    * \param name Name of the view *Required*
    */
    Response<
                ListView
        >
    getView(
            
            std::string name
            
    );
    /**
    * .
    *
    * Retrieve view configuration
    * \param name Name of the view *Required*
    */
    Response<
                std::string
        >
    getViewConfig(
            
            std::string name
            
    );
    /**
    * .
    *
    * Retrieve Jenkins headers
    */
    Response<
            String
        >
    headJenkins(
    );
    /**
    * .
    *
    * Create a new job using job configuration, or copied from an existing job
    * \param name Name of the new job *Required*
    * \param from Existing job to copy from
    * \param mode Set to 'copy' for copying an existing job
    * \param jenkinsCrumb CSRF protection token
    * \param contentType Content type header application/xml
    * \param body Job configuration in config.xml format
    */
    Response<
            String
        >
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
            
    );
    /**
    * .
    *
    * Create a new view using view configuration
    * \param name Name of the new view *Required*
    * \param jenkinsCrumb CSRF protection token
    * \param contentType Content type header application/xml
    * \param body View configuration in config.xml format
    */
    Response<
            String
        >
    postCreateView(
            
            std::string name
            , 
            
            std::string jenkinsCrumb
            , 
            
            std::string contentType
            , 
            
            std::string body
            
    );
    /**
    * .
    *
    * Build a job
    * \param name Name of the job *Required*
    * \param json  *Required*
    * \param token 
    * \param jenkinsCrumb CSRF protection token
    */
    Response<
            String
        >
    postJobBuild(
            
            std::string name
            , 
            
            std::string json
            , 
            
            std::string token
            , 
            
            std::string jenkinsCrumb
            
    );
    /**
    * .
    *
    * Update job configuration
    * \param name Name of the job *Required*
    * \param body Job configuration in config.xml format *Required*
    * \param jenkinsCrumb CSRF protection token
    */
    Response<
            String
        >
    postJobConfig(
            
            std::string name
            , 
            
            std::string body
            , 
            
            std::string jenkinsCrumb
            
    );
    /**
    * .
    *
    * Delete a job
    * \param name Name of the job *Required*
    * \param jenkinsCrumb CSRF protection token
    */
    Response<
            String
        >
    postJobDelete(
            
            std::string name
            , 
            
            std::string jenkinsCrumb
            
    );
    /**
    * .
    *
    * Disable a job
    * \param name Name of the job *Required*
    * \param jenkinsCrumb CSRF protection token
    */
    Response<
            String
        >
    postJobDisable(
            
            std::string name
            , 
            
            std::string jenkinsCrumb
            
    );
    /**
    * .
    *
    * Enable a job
    * \param name Name of the job *Required*
    * \param jenkinsCrumb CSRF protection token
    */
    Response<
            String
        >
    postJobEnable(
            
            std::string name
            , 
            
            std::string jenkinsCrumb
            
    );
    /**
    * .
    *
    * Stop a job
    * \param name Name of the job *Required*
    * \param jenkinsCrumb CSRF protection token
    */
    Response<
            String
        >
    postJobLastBuildStop(
            
            std::string name
            , 
            
            std::string jenkinsCrumb
            
    );
    /**
    * .
    *
    * Update view configuration
    * \param name Name of the view *Required*
    * \param body View configuration in config.xml format *Required*
    * \param jenkinsCrumb CSRF protection token
    */
    Response<
            String
        >
    postViewConfig(
            
            std::string name
            , 
            
            std::string body
            , 
            
            std::string jenkinsCrumb
            
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_RemoteAccessApi_H_ */