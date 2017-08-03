<?php
/**
 * Swaggy Jenkins
 * @version 0.1.0
 */

require_once __DIR__ . '/vendor/autoload.php';

$app = new Slim\App();


/**
 * DELETE deletePipelineQueueItem
 * Summary: 
 * Notes: Delete queue item from an organization pipeline queue
 * Output-Formats: [application/json]
 */
$app->DELETE('//blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing deletePipelineQueueItem as a DELETE method ?');
            return $response;
            });


/**
 * GET getAuthenticatedUser
 * Summary: 
 * Notes: Retrieve authenticated user details for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/user/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getAuthenticatedUser as a GET method ?');
            return $response;
            });


/**
 * GET getClasses
 * Summary: 
 * Notes: Get a list of class names supported by a given class
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/classes/{class}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getClasses as a GET method ?');
            return $response;
            });


/**
 * GET getOrganisation
 * Summary: 
 * Notes: Retrieve organization details
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getOrganisation as a GET method ?');
            return $response;
            });


/**
 * GET getOrganisations
 * Summary: 
 * Notes: Retrieve all organizations details
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getOrganisations as a GET method ?');
            return $response;
            });


/**
 * GET getPipeline
 * Summary: 
 * Notes: Retrieve pipeline details for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipeline as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineActivities
 * Summary: 
 * Notes: Retrieve all activities details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/activities', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineActivities as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineBranch
 * Summary: 
 * Notes: Retrieve branch details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineBranch as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineBranchRun
 * Summary: 
 * Notes: Retrieve branch run details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineBranchRun as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineBranches
 * Summary: 
 * Notes: Retrieve all branches details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineBranches as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineFolder
 * Summary: 
 * Notes: Retrieve pipeline folder for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{folder}/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineFolder as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineFolderPipeline
 * Summary: 
 * Notes: Retrieve pipeline details for an organization folder
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineFolderPipeline as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineQueue
 * Summary: 
 * Notes: Retrieve queue details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/queue', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineQueue as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineRun
 * Summary: 
 * Notes: Retrieve run details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineRun as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineRunLog
 * Summary: 
 * Notes: Get log for a pipeline run
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $start = $queryParams['start'];    $download = $queryParams['download'];    
            
            
            $response->write('How about implementing getPipelineRunLog as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineRunNode
 * Summary: 
 * Notes: Retrieve run node details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineRunNode as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineRunNodeStep
 * Summary: 
 * Notes: Retrieve run node details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineRunNodeStep as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineRunNodeStepLog
 * Summary: 
 * Notes: Get log for a pipeline run node step
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineRunNodeStepLog as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineRunNodeSteps
 * Summary: 
 * Notes: Retrieve run node steps details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineRunNodeSteps as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineRunNodes
 * Summary: 
 * Notes: Retrieve run nodes details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineRunNodes as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineRuns
 * Summary: 
 * Notes: Retrieve all runs details for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineRuns as a GET method ?');
            return $response;
            });


/**
 * GET getPipelines
 * Summary: 
 * Notes: Retrieve all pipelines details for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/pipelines/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelines as a GET method ?');
            return $response;
            });


/**
 * GET getSCM
 * Summary: 
 * Notes: Retrieve SCM details for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/scm/{scm}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getSCM as a GET method ?');
            return $response;
            });


/**
 * GET getSCMOrganisationRepositories
 * Summary: 
 * Notes: Retrieve SCM organization repositories details for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $credentialId = $queryParams['credentialId'];    $pageSize = $queryParams['pageSize'];    $pageNumber = $queryParams['pageNumber'];    
            
            
            $response->write('How about implementing getSCMOrganisationRepositories as a GET method ?');
            return $response;
            });


/**
 * GET getSCMOrganisationRepository
 * Summary: 
 * Notes: Retrieve SCM organization repository details for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $credentialId = $queryParams['credentialId'];    
            
            
            $response->write('How about implementing getSCMOrganisationRepository as a GET method ?');
            return $response;
            });


/**
 * GET getSCMOrganisations
 * Summary: 
 * Notes: Retrieve SCM organizations details for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/scm/{scm}/organizations', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $credentialId = $queryParams['credentialId'];    
            
            
            $response->write('How about implementing getSCMOrganisations as a GET method ?');
            return $response;
            });


/**
 * GET getUser
 * Summary: 
 * Notes: Retrieve user details for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/users/{user}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getUser as a GET method ?');
            return $response;
            });


/**
 * GET getUserFavorites
 * Summary: 
 * Notes: Retrieve user favorites details for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/users/{user}/favorites', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getUserFavorites as a GET method ?');
            return $response;
            });


/**
 * GET getUsers
 * Summary: 
 * Notes: Retrieve users details for an organization
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organization}/users/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getUsers as a GET method ?');
            return $response;
            });


/**
 * POST postPipelineRun
 * Summary: 
 * Notes: Replay an organization pipeline run
 * Output-Formats: [application/json]
 */
$app->POST('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing postPipelineRun as a POST method ?');
            return $response;
            });


/**
 * POST postPipelineRuns
 * Summary: 
 * Notes: Start a build for an organization pipeline
 * Output-Formats: [application/json]
 */
$app->POST('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing postPipelineRuns as a POST method ?');
            return $response;
            });


/**
 * PUT putPipelineFavorite
 * Summary: 
 * Notes: Favorite/unfavorite a pipeline
 * Output-Formats: [application/json]
 */
$app->PUT('//blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite', function($request, $response, $args) {
            
            
            
            $body = $request->getParsedBody();
            $response->write('How about implementing putPipelineFavorite as a PUT method ?');
            return $response;
            });


/**
 * PUT putPipelineRun
 * Summary: 
 * Notes: Stop a build of an organization pipeline
 * Output-Formats: [application/json]
 */
$app->PUT('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $blocking = $queryParams['blocking'];    $timeOutInSecs = $queryParams['timeOutInSecs'];    
            
            
            $response->write('How about implementing putPipelineRun as a PUT method ?');
            return $response;
            });


/**
 * GET search
 * Summary: 
 * Notes: Search for any resource details
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/search/', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $q = $queryParams['q'];    
            
            
            $response->write('How about implementing search as a GET method ?');
            return $response;
            });


/**
 * GET searchClasses
 * Summary: 
 * Notes: Get classes details
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/classes/', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $q = $queryParams['q'];    
            
            
            $response->write('How about implementing searchClasses as a GET method ?');
            return $response;
            });


/**
 * GET getComputer
 * Summary: 
 * Notes: Retrieve computer details
 * Output-Formats: [application/json]
 */
$app->GET('//computer/api/json', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $depth = $queryParams['depth'];    
            
            
            $response->write('How about implementing getComputer as a GET method ?');
            return $response;
            });


/**
 * GET getCrumb
 * Summary: 
 * Notes: Retrieve CSRF protection token
 * Output-Formats: [application/json]
 */
$app->GET('//crumbIssuer/api/json', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getCrumb as a GET method ?');
            return $response;
            });


/**
 * GET getJenkins
 * Summary: 
 * Notes: Retrieve Jenkins details
 * Output-Formats: [application/json]
 */
$app->GET('//api/json', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getJenkins as a GET method ?');
            return $response;
            });


/**
 * GET getJob
 * Summary: 
 * Notes: Retrieve job details
 * Output-Formats: [application/json]
 */
$app->GET('//job/{name}/api/json', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getJob as a GET method ?');
            return $response;
            });


/**
 * GET getJobConfig
 * Summary: 
 * Notes: Retrieve job configuration
 * Output-Formats: [text/xml]
 */
$app->GET('//job/{name}/config.xml', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getJobConfig as a GET method ?');
            return $response;
            });


/**
 * GET getJobLastBuild
 * Summary: 
 * Notes: Retrieve job&#39;s last build details
 * Output-Formats: [application/json]
 */
$app->GET('//job/{name}/lastBuild/api/json', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getJobLastBuild as a GET method ?');
            return $response;
            });


/**
 * GET getJobProgressiveText
 * Summary: 
 * Notes: Retrieve job&#39;s build progressive text output

 */
$app->GET('//job/{name}/{number}/logText/progressiveText', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $start = $queryParams['start'];    
            
            
            $response->write('How about implementing getJobProgressiveText as a GET method ?');
            return $response;
            });


/**
 * GET getQueue
 * Summary: 
 * Notes: Retrieve queue details
 * Output-Formats: [application/json]
 */
$app->GET('//queue/api/json', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getQueue as a GET method ?');
            return $response;
            });


/**
 * GET getQueueItem
 * Summary: 
 * Notes: Retrieve queued item details
 * Output-Formats: [application/json]
 */
$app->GET('//queue/item/{number}/api/json', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getQueueItem as a GET method ?');
            return $response;
            });


/**
 * GET getView
 * Summary: 
 * Notes: Retrieve view details
 * Output-Formats: [application/json]
 */
$app->GET('//view/{name}/api/json', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getView as a GET method ?');
            return $response;
            });


/**
 * GET getViewConfig
 * Summary: 
 * Notes: Retrieve view configuration
 * Output-Formats: [text/xml]
 */
$app->GET('//view/{name}/config.xml', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getViewConfig as a GET method ?');
            return $response;
            });


/**
 * HEAD headJenkins
 * Summary: 
 * Notes: Retrieve Jenkins headers

 */
$app->HEAD('//api/json', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing headJenkins as a HEAD method ?');
            return $response;
            });


/**
 * POST postCreateItem
 * Summary: 
 * Notes: Create a new job using job configuration, or copied from an existing job
 * Output-Formats: [text/html]
 */
$app->POST('//createItem', function($request, $response, $args) {
            $headers = $request->getHeaders();
            $queryParams = $request->getQueryParams();
            $name = $queryParams['name'];    $from = $queryParams['from'];    $mode = $queryParams['mode'];    
            
            $body = $request->getParsedBody();
            $response->write('How about implementing postCreateItem as a POST method ?');
            return $response;
            });


/**
 * POST postCreateView
 * Summary: 
 * Notes: Create a new view using view configuration
 * Output-Formats: [text/html]
 */
$app->POST('//createView', function($request, $response, $args) {
            $headers = $request->getHeaders();
            $queryParams = $request->getQueryParams();
            $name = $queryParams['name'];    
            
            $body = $request->getParsedBody();
            $response->write('How about implementing postCreateView as a POST method ?');
            return $response;
            });


/**
 * POST postJobBuild
 * Summary: 
 * Notes: Build a job

 */
$app->POST('//job/{name}/build', function($request, $response, $args) {
            $headers = $request->getHeaders();
            $queryParams = $request->getQueryParams();
            $json = $queryParams['json'];    $token = $queryParams['token'];    
            
            
            $response->write('How about implementing postJobBuild as a POST method ?');
            return $response;
            });


/**
 * POST postJobConfig
 * Summary: 
 * Notes: Update job configuration
 * Output-Formats: [text/xml]
 */
$app->POST('//job/{name}/config.xml', function($request, $response, $args) {
            $headers = $request->getHeaders();
            
            
            $body = $request->getParsedBody();
            $response->write('How about implementing postJobConfig as a POST method ?');
            return $response;
            });


/**
 * POST postJobDelete
 * Summary: 
 * Notes: Delete a job

 */
$app->POST('//job/{name}/doDelete', function($request, $response, $args) {
            $headers = $request->getHeaders();
            
            
            
            $response->write('How about implementing postJobDelete as a POST method ?');
            return $response;
            });


/**
 * POST postJobDisable
 * Summary: 
 * Notes: Disable a job

 */
$app->POST('//job/{name}/disable', function($request, $response, $args) {
            $headers = $request->getHeaders();
            
            
            
            $response->write('How about implementing postJobDisable as a POST method ?');
            return $response;
            });


/**
 * POST postJobEnable
 * Summary: 
 * Notes: Enable a job

 */
$app->POST('//job/{name}/enable', function($request, $response, $args) {
            $headers = $request->getHeaders();
            
            
            
            $response->write('How about implementing postJobEnable as a POST method ?');
            return $response;
            });


/**
 * POST postJobLastBuildStop
 * Summary: 
 * Notes: Stop a job

 */
$app->POST('//job/{name}/lastBuild/stop', function($request, $response, $args) {
            $headers = $request->getHeaders();
            
            
            
            $response->write('How about implementing postJobLastBuildStop as a POST method ?');
            return $response;
            });


/**
 * POST postViewConfig
 * Summary: 
 * Notes: Update view configuration

 */
$app->POST('//view/{name}/config.xml', function($request, $response, $args) {
            $headers = $request->getHeaders();
            
            
            $body = $request->getParsedBody();
            $response->write('How about implementing postViewConfig as a POST method ?');
            return $response;
            });



$app->run();
