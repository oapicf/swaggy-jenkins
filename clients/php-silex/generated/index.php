<?php
require_once __DIR__ . '/vendor/autoload.php';

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Silex\Application;

$app = new Silex\Application();


$app->GET('//crumbIssuer/api/json', function(Application $app, Request $request) {
            return new Response('How about implementing getCrumb as a GET method ?');
            });


$app->DELETE('//blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}', function(Application $app, Request $request, $organization, $pipeline, $queue) {
            return new Response('How about implementing deletePipelineQueueItem as a DELETE method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/user/', function(Application $app, Request $request, $organization) {
            return new Response('How about implementing getAuthenticatedUser as a GET method ?');
            });


$app->GET('//blue/rest/classes/{class}', function(Application $app, Request $request, $class) {
            return new Response('How about implementing getClasses as a GET method ?');
            });


$app->GET('//jwt-auth/jwks/{key}', function(Application $app, Request $request, $key) {
            return new Response('How about implementing getJsonWebKey as a GET method ?');
            });


$app->GET('//jwt-auth/token', function(Application $app, Request $request) {
            $expiry_time_in_mins = $request->get('expiry_time_in_mins');
            $max_expiry_time_in_mins = $request->get('max_expiry_time_in_mins');
            return new Response('How about implementing getJsonWebToken as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}', function(Application $app, Request $request, $organization) {
            return new Response('How about implementing getOrganisation as a GET method ?');
            });


$app->GET('//blue/rest/organizations/', function(Application $app, Request $request) {
            return new Response('How about implementing getOrganisations as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}', function(Application $app, Request $request, $organization, $pipeline) {
            return new Response('How about implementing getPipeline as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/activities', function(Application $app, Request $request, $organization, $pipeline) {
            return new Response('How about implementing getPipelineActivities as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/', function(Application $app, Request $request, $organization, $pipeline, $branch) {
            return new Response('How about implementing getPipelineBranch as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}', function(Application $app, Request $request, $organization, $pipeline, $branch, $run) {
            return new Response('How about implementing getPipelineBranchRun as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/branches', function(Application $app, Request $request, $organization, $pipeline) {
            return new Response('How about implementing getPipelineBranches as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{folder}/', function(Application $app, Request $request, $organization, $folder) {
            return new Response('How about implementing getPipelineFolder as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}', function(Application $app, Request $request, $organization, $pipeline, $folder) {
            return new Response('How about implementing getPipelineFolderPipeline as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/queue', function(Application $app, Request $request, $organization, $pipeline) {
            return new Response('How about implementing getPipelineQueue as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}', function(Application $app, Request $request, $organization, $pipeline, $run) {
            return new Response('How about implementing getPipelineRun as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log', function(Application $app, Request $request, $organization, $pipeline, $run) {
            $start = $request->get('start');
            $download = $request->get('download');
            return new Response('How about implementing getPipelineRunLog as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}', function(Application $app, Request $request, $organization, $pipeline, $run, $node) {
            return new Response('How about implementing getPipelineRunNode as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}', function(Application $app, Request $request, $organization, $pipeline, $run, $node, $step) {
            return new Response('How about implementing getPipelineRunNodeStep as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log', function(Application $app, Request $request, $organization, $pipeline, $run, $node, $step) {
            return new Response('How about implementing getPipelineRunNodeStepLog as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps', function(Application $app, Request $request, $organization, $pipeline, $run, $node) {
            return new Response('How about implementing getPipelineRunNodeSteps as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes', function(Application $app, Request $request, $organization, $pipeline, $run) {
            return new Response('How about implementing getPipelineRunNodes as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs', function(Application $app, Request $request, $organization, $pipeline) {
            return new Response('How about implementing getPipelineRuns as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/pipelines/', function(Application $app, Request $request, $organization) {
            return new Response('How about implementing getPipelines as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/scm/{scm}', function(Application $app, Request $request, $organization, $scm) {
            return new Response('How about implementing getSCM as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories', function(Application $app, Request $request, $organization, $scm, $scmOrganisation) {
            $credential_id = $request->get('credential_id');
            $page_size = $request->get('page_size');
            $page_number = $request->get('page_number');
            return new Response('How about implementing getSCMOrganisationRepositories as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}', function(Application $app, Request $request, $organization, $scm, $scmOrganisation, $repository) {
            $credential_id = $request->get('credential_id');
            return new Response('How about implementing getSCMOrganisationRepository as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/scm/{scm}/organizations', function(Application $app, Request $request, $organization, $scm) {
            $credential_id = $request->get('credential_id');
            return new Response('How about implementing getSCMOrganisations as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/users/{user}', function(Application $app, Request $request, $organization, $user) {
            return new Response('How about implementing getUser as a GET method ?');
            });


$app->GET('//blue/rest/users/{user}/favorites', function(Application $app, Request $request, $user) {
            return new Response('How about implementing getUserFavorites as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organization}/users/', function(Application $app, Request $request, $organization) {
            return new Response('How about implementing getUsers as a GET method ?');
            });


$app->POST('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay', function(Application $app, Request $request, $organization, $pipeline, $run) {
            return new Response('How about implementing postPipelineRun as a POST method ?');
            });


$app->POST('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs', function(Application $app, Request $request, $organization, $pipeline) {
            return new Response('How about implementing postPipelineRuns as a POST method ?');
            });


$app->PUT('//blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite', function(Application $app, Request $request, $organization, $pipeline) {
            return new Response('How about implementing putPipelineFavorite as a PUT method ?');
            });


$app->PUT('//blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop', function(Application $app, Request $request, $organization, $pipeline, $run) {
            $blocking = $request->get('blocking');
            $time_out_in_secs = $request->get('time_out_in_secs');
            return new Response('How about implementing putPipelineRun as a PUT method ?');
            });


$app->GET('//blue/rest/search/', function(Application $app, Request $request) {
            $q = $request->get('q');
            return new Response('How about implementing search as a GET method ?');
            });


$app->GET('//blue/rest/classes/', function(Application $app, Request $request) {
            $q = $request->get('q');
            return new Response('How about implementing searchClasses as a GET method ?');
            });


$app->GET('//computer/api/json', function(Application $app, Request $request) {
            $depth = $request->get('depth');
            return new Response('How about implementing getComputer as a GET method ?');
            });


$app->GET('//api/json', function(Application $app, Request $request) {
            return new Response('How about implementing getJenkins as a GET method ?');
            });


$app->GET('//job/{name}/api/json', function(Application $app, Request $request, $name) {
            return new Response('How about implementing getJob as a GET method ?');
            });


$app->GET('//job/{name}/config.xml', function(Application $app, Request $request, $name) {
            return new Response('How about implementing getJobConfig as a GET method ?');
            });


$app->GET('//job/{name}/lastBuild/api/json', function(Application $app, Request $request, $name) {
            return new Response('How about implementing getJobLastBuild as a GET method ?');
            });


$app->GET('//job/{name}/{number}/logText/progressiveText', function(Application $app, Request $request, $name, $number) {
            $start = $request->get('start');
            return new Response('How about implementing getJobProgressiveText as a GET method ?');
            });


$app->GET('//queue/api/json', function(Application $app, Request $request) {
            return new Response('How about implementing getQueue as a GET method ?');
            });


$app->GET('//queue/item/{number}/api/json', function(Application $app, Request $request, $number) {
            return new Response('How about implementing getQueueItem as a GET method ?');
            });


$app->GET('//view/{name}/api/json', function(Application $app, Request $request, $name) {
            return new Response('How about implementing getView as a GET method ?');
            });


$app->GET('//view/{name}/config.xml', function(Application $app, Request $request, $name) {
            return new Response('How about implementing getViewConfig as a GET method ?');
            });


$app->HEAD('//api/json', function(Application $app, Request $request) {
            return new Response('How about implementing headJenkins as a HEAD method ?');
            });


$app->POST('//createItem', function(Application $app, Request $request) {
            $name = $request->get('name');
            $from = $request->get('from');
            $mode = $request->get('mode');
            return new Response('How about implementing postCreateItem as a POST method ?');
            });


$app->POST('//createView', function(Application $app, Request $request) {
            $name = $request->get('name');
            return new Response('How about implementing postCreateView as a POST method ?');
            });


$app->POST('//job/{name}/build', function(Application $app, Request $request, $name) {
            $json = $request->get('json');
            $token = $request->get('token');
            return new Response('How about implementing postJobBuild as a POST method ?');
            });


$app->POST('//job/{name}/config.xml', function(Application $app, Request $request, $name) {
            return new Response('How about implementing postJobConfig as a POST method ?');
            });


$app->POST('//job/{name}/doDelete', function(Application $app, Request $request, $name) {
            return new Response('How about implementing postJobDelete as a POST method ?');
            });


$app->POST('//job/{name}/disable', function(Application $app, Request $request, $name) {
            return new Response('How about implementing postJobDisable as a POST method ?');
            });


$app->POST('//job/{name}/enable', function(Application $app, Request $request, $name) {
            return new Response('How about implementing postJobEnable as a POST method ?');
            });


$app->POST('//job/{name}/lastBuild/stop', function(Application $app, Request $request, $name) {
            return new Response('How about implementing postJobLastBuildStop as a POST method ?');
            });


$app->POST('//view/{name}/config.xml', function(Application $app, Request $request, $name) {
            return new Response('How about implementing postViewConfig as a POST method ?');
            });


$app->run();
