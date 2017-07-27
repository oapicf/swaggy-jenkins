<?php
/**
 * Swaggy Jenkins
 * @version 0.1.0
 */

require_once __DIR__ . '/vendor/autoload.php';

$app = new Slim\App();


/**
 * GET getAuthenticatedUser
 * Summary: 
 * Notes: Retrieve authenticated user details for an organisation
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organisation}/user/', function($request, $response, $args) {
            
            
            
            
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
 * Notes: Retrieve organisation details
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organisation}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getOrganisation as a GET method ?');
            return $response;
            });


/**
 * GET getOrganisations
 * Summary: 
 * Notes: Retrieve all organisations details
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getOrganisations as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineBranchByOrg
 * Summary: 
 * Notes: Retrieve branch details for an organisation pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineBranchByOrg as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineBranchesByOrg
 * Summary: 
 * Notes: Retrieve all branches details for an organisation pipeline
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineBranchesByOrg as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineByOrg
 * Summary: 
 * Notes: Retrieve pipeline details for an organisation
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organisation}/pipelines/{pipeline}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineByOrg as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineFolderByOrg
 * Summary: 
 * Notes: Retrieve pipeline folder for an organisation
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organisation}/pipelines/{folder}/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineFolderByOrg as a GET method ?');
            return $response;
            });


/**
 * GET getPipelineFolderByOrg_1
 * Summary: 
 * Notes: Retrieve pipeline details for an organisation folder
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelineFolderByOrg_1 as a GET method ?');
            return $response;
            });


/**
 * GET getPipelinesByOrg
 * Summary: 
 * Notes: Retrieve all pipelines details for an organisation
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organisation}/pipelines/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getPipelinesByOrg as a GET method ?');
            return $response;
            });


/**
 * GET getUser
 * Summary: 
 * Notes: Retrieve user details for an organisation
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organisation}/users/{user}', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getUser as a GET method ?');
            return $response;
            });


/**
 * GET getUsers
 * Summary: 
 * Notes: Retrieve users details for an organisation
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/organizations/{organisation}/users/', function($request, $response, $args) {
            
            
            
            
            $response->write('How about implementing getUsers as a GET method ?');
            return $response;
            });


/**
 * GET search
 * Summary: 
 * Notes: Get classes details
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/classes/', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $q = $queryParams['q'];    
            
            
            $response->write('How about implementing search as a GET method ?');
            return $response;
            });


/**
 * GET search_2
 * Summary: 
 * Notes: Search for any resource details
 * Output-Formats: [application/json]
 */
$app->GET('//blue/rest/search/', function($request, $response, $args) {
            
            $queryParams = $request->getQueryParams();
            $q = $queryParams['q'];    
            
            
            $response->write('How about implementing search_2 as a GET method ?');
            return $response;
            });


/**
 * GET getComputer
 * Summary: 
 * Notes: Retrieve computer details
 * Output-Formats: [application/json]
 */
$app->GET('//computer/api/json?depth=1', function($request, $response, $args) {
            
            
            
            
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
