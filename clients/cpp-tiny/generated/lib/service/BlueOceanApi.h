#ifndef TINY_CPP_CLIENT_BlueOceanApi_H_
#define TINY_CPP_CLIENT_BlueOceanApi_H_


#include "Response.h"
#include "Arduino.h"
#include "Service.h"
#include "Helpers.h"
#include <list>

#include "BranchImpl.h"
#include "FavoriteImpl.h"
#include "GithubOrganization.h"
#include "GithubScm.h"
#include "MultibranchPipeline.h"
#include "Organisation.h"
#include "Pipeline.h"
#include "PipelineActivity.h"
#include "PipelineFolderImpl.h"
#include "PipelineImpl.h"
#include "PipelineRun.h"
#include "PipelineRunNode.h"
#include "PipelineStepImpl.h"
#include "QueueItemImpl.h"
#include "User.h"

namespace Tiny {

/**
 *  Class 
 * Generated with openapi::tiny-cpp-client
 */

class BlueOceanApi : public Service {
public:
    BlueOceanApi() = default;

    virtual ~BlueOceanApi() = default;

    /**
    * .
    *
    * Delete queue item from an organization pipeline queue
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param queue Name of the queue item *Required*
    */
    Response<
            String
        >
    deletePipelineQueueItem(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string queue
            
    );
    /**
    * .
    *
    * Retrieve authenticated user details for an organization
    * \param organization Name of the organization *Required*
    */
    Response<
                User
        >
    getAuthenticatedUser(
            
            std::string organization
            
    );
    /**
    * .
    *
    * Get a list of class names supported by a given class
    * \param r_class Name of the class *Required*
    */
    Response<
                std::string
        >
    getClasses(
            
            std::string r_class
            
    );
    /**
    * .
    *
    * Retrieve JSON Web Key
    * \param key Key ID received as part of JWT header field kid *Required*
    */
    Response<
                std::string
        >
    getJsonWebKey(
            
            int key
            
    );
    /**
    * .
    *
    * Retrieve JSON Web Token
    * \param expiryTimeInMins Token expiry time in minutes, default: 30 minutes
    * \param maxExpiryTimeInMins Maximum token expiry time in minutes, default: 480 minutes
    */
    Response<
                std::string
        >
    getJsonWebToken(
            
            int expiryTimeInMins
            , 
            
            int maxExpiryTimeInMins
            
    );
    /**
    * .
    *
    * Retrieve organization details
    * \param organization Name of the organization *Required*
    */
    Response<
                Organisation
        >
    getOrganisation(
            
            std::string organization
            
    );
    /**
    * .
    *
    * Retrieve all organizations details
    */
    Response<
                    std::list<Organisation>
        >
    getOrganisations(
    );
    /**
    * .
    *
    * Retrieve pipeline details for an organization
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    */
    Response<
                Pipeline
        >
    getPipeline(
            
            std::string organization
            , 
            
            std::string pipeline
            
    );
    /**
    * .
    *
    * Retrieve all activities details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    */
    Response<
                    std::list<PipelineActivity>
        >
    getPipelineActivities(
            
            std::string organization
            , 
            
            std::string pipeline
            
    );
    /**
    * .
    *
    * Retrieve branch details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param branch Name of the branch *Required*
    */
    Response<
                BranchImpl
        >
    getPipelineBranch(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string branch
            
    );
    /**
    * .
    *
    * Retrieve branch run details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param branch Name of the branch *Required*
    * \param run Name of the run *Required*
    */
    Response<
                PipelineRun
        >
    getPipelineBranchRun(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string branch
            , 
            
            std::string run
            
    );
    /**
    * .
    *
    * Retrieve all branches details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    */
    Response<
                MultibranchPipeline
        >
    getPipelineBranches(
            
            std::string organization
            , 
            
            std::string pipeline
            
    );
    /**
    * .
    *
    * Retrieve pipeline folder for an organization
    * \param organization Name of the organization *Required*
    * \param folder Name of the folder *Required*
    */
    Response<
                PipelineFolderImpl
        >
    getPipelineFolder(
            
            std::string organization
            , 
            
            std::string folder
            
    );
    /**
    * .
    *
    * Retrieve pipeline details for an organization folder
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param folder Name of the folder *Required*
    */
    Response<
                PipelineImpl
        >
    getPipelineFolderPipeline(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string folder
            
    );
    /**
    * .
    *
    * Retrieve queue details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    */
    Response<
                    std::list<QueueItemImpl>
        >
    getPipelineQueue(
            
            std::string organization
            , 
            
            std::string pipeline
            
    );
    /**
    * .
    *
    * Retrieve run details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param run Name of the run *Required*
    */
    Response<
                PipelineRun
        >
    getPipelineRun(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            
    );
    /**
    * .
    *
    * Get log for a pipeline run
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param run Name of the run *Required*
    * \param start Start position of the log
    * \param download Set to true in order to download the file, otherwise it's passed as a response body
    */
    Response<
                std::string
        >
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
            
    );
    /**
    * .
    *
    * Retrieve run node details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param run Name of the run *Required*
    * \param node Name of the node *Required*
    */
    Response<
                PipelineRunNode
        >
    getPipelineRunNode(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            , 
            
            std::string node
            
    );
    /**
    * .
    *
    * Retrieve run node details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param run Name of the run *Required*
    * \param node Name of the node *Required*
    * \param step Name of the step *Required*
    */
    Response<
                PipelineStepImpl
        >
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
            
    );
    /**
    * .
    *
    * Get log for a pipeline run node step
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param run Name of the run *Required*
    * \param node Name of the node *Required*
    * \param step Name of the step *Required*
    */
    Response<
                std::string
        >
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
            
    );
    /**
    * .
    *
    * Retrieve run node steps details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param run Name of the run *Required*
    * \param node Name of the node *Required*
    */
    Response<
                    std::list<PipelineStepImpl>
        >
    getPipelineRunNodeSteps(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            , 
            
            std::string node
            
    );
    /**
    * .
    *
    * Retrieve run nodes details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param run Name of the run *Required*
    */
    Response<
                    std::list<PipelineRunNode>
        >
    getPipelineRunNodes(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            
    );
    /**
    * .
    *
    * Retrieve all runs details for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    */
    Response<
                    std::list<PipelineRun>
        >
    getPipelineRuns(
            
            std::string organization
            , 
            
            std::string pipeline
            
    );
    /**
    * .
    *
    * Retrieve all pipelines details for an organization
    * \param organization Name of the organization *Required*
    */
    Response<
                    std::list<Pipeline>
        >
    getPipelines(
            
            std::string organization
            
    );
    /**
    * .
    *
    * Retrieve SCM details for an organization
    * \param organization Name of the organization *Required*
    * \param scm Name of SCM *Required*
    */
    Response<
                GithubScm
        >
    getSCM(
            
            std::string organization
            , 
            
            std::string scm
            
    );
    /**
    * .
    *
    * Retrieve SCM organization repositories details for an organization
    * \param organization Name of the organization *Required*
    * \param scm Name of SCM *Required*
    * \param scmOrganisation Name of the SCM organization *Required*
    * \param credentialId Credential ID
    * \param pageSize Number of items in a page
    * \param pageNumber Page number
    */
    Response<
                    std::list<GithubOrganization>
        >
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
            
    );
    /**
    * .
    *
    * Retrieve SCM organization repository details for an organization
    * \param organization Name of the organization *Required*
    * \param scm Name of SCM *Required*
    * \param scmOrganisation Name of the SCM organization *Required*
    * \param repository Name of the SCM repository *Required*
    * \param credentialId Credential ID
    */
    Response<
                    std::list<GithubOrganization>
        >
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
            
    );
    /**
    * .
    *
    * Retrieve SCM organizations details for an organization
    * \param organization Name of the organization *Required*
    * \param scm Name of SCM *Required*
    * \param credentialId Credential ID
    */
    Response<
                    std::list<GithubOrganization>
        >
    getSCMOrganisations(
            
            std::string organization
            , 
            
            std::string scm
            , 
            
            std::string credentialId
            
    );
    /**
    * .
    *
    * Retrieve user details for an organization
    * \param organization Name of the organization *Required*
    * \param user Name of the user *Required*
    */
    Response<
                User
        >
    getUser(
            
            std::string organization
            , 
            
            std::string user
            
    );
    /**
    * .
    *
    * Retrieve user favorites details for an organization
    * \param user Name of the user *Required*
    */
    Response<
                    std::list<FavoriteImpl>
        >
    getUserFavorites(
            
            std::string user
            
    );
    /**
    * .
    *
    * Retrieve users details for an organization
    * \param organization Name of the organization *Required*
    */
    Response<
                User
        >
    getUsers(
            
            std::string organization
            
    );
    /**
    * .
    *
    * Replay an organization pipeline run
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param run Name of the run *Required*
    */
    Response<
                QueueItemImpl
        >
    postPipelineRun(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            std::string run
            
    );
    /**
    * .
    *
    * Start a build for an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    */
    Response<
                QueueItemImpl
        >
    postPipelineRuns(
            
            std::string organization
            , 
            
            std::string pipeline
            
    );
    /**
    * .
    *
    * Favorite/unfavorite a pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param body Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite *Required*
    */
    Response<
                FavoriteImpl
        >
    putPipelineFavorite(
            
            std::string organization
            , 
            
            std::string pipeline
            , 
            
            bool body
            
    );
    /**
    * .
    *
    * Stop a build of an organization pipeline
    * \param organization Name of the organization *Required*
    * \param pipeline Name of the pipeline *Required*
    * \param run Name of the run *Required*
    * \param blocking Set to true to make blocking stop, default: false
    * \param timeOutInSecs Timeout in seconds, default: 10 seconds
    */
    Response<
                PipelineRun
        >
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
            
    );
    /**
    * .
    *
    * Search for any resource details
    * \param q Query string *Required*
    */
    Response<
                std::string
        >
    search(
            
            std::string q
            
    );
    /**
    * .
    *
    * Get classes details
    * \param q Query string containing an array of class names *Required*
    */
    Response<
                std::string
        >
    searchClasses(
            
            std::string q
            
    );
}; 

} 

#endif /* TINY_CPP_CLIENT_BlueOceanApi_H_ */