<?php
require_once __DIR__ . '/vendor/autoload.php';

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Silex\Application;

$app = new Silex\Application();


$app->GET('//blue/rest/organizations/{organisation}/user/', function(Application $app, Request $request, $organisation) {
            return new Response('How about implementing getAuthenticatedUser as a GET method ?');
            });


$app->GET('//blue/rest/classes/{class}', function(Application $app, Request $request, $class) {
            return new Response('How about implementing getClasses as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organisation}', function(Application $app, Request $request, $organisation) {
            return new Response('How about implementing getOrganisation as a GET method ?');
            });


$app->GET('//blue/rest/organizations/', function(Application $app, Request $request) {
            return new Response('How about implementing getOrganisations as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/', function(Application $app, Request $request, $organisation, $pipeline, $branch) {
            return new Response('How about implementing getPipelineBranchByOrg as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches', function(Application $app, Request $request, $organisation, $pipeline) {
            return new Response('How about implementing getPipelineBranchesByOrg as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organisation}/pipelines/{pipeline}', function(Application $app, Request $request, $organisation, $pipeline) {
            return new Response('How about implementing getPipelineByOrg as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organisation}/pipelines/{folder}/', function(Application $app, Request $request, $organisation, $folder) {
            return new Response('How about implementing getPipelineFolderByOrg as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline}', function(Application $app, Request $request, $organisation, $pipeline, $folder) {
            return new Response('How about implementing getPipelineFolderByOrg_0 as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organisation}/pipelines/', function(Application $app, Request $request, $organisation) {
            return new Response('How about implementing getPipelinesByOrg as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organisation}/users/{user}', function(Application $app, Request $request, $organisation, $user) {
            return new Response('How about implementing getUser as a GET method ?');
            });


$app->GET('//blue/rest/organizations/{organisation}/users/', function(Application $app, Request $request, $organisation) {
            return new Response('How about implementing getUsers as a GET method ?');
            });


$app->GET('//blue/rest/classes/', function(Application $app, Request $request) {
            $q = $request->get('q');
            return new Response('How about implementing search as a GET method ?');
            });


$app->GET('//blue/rest/search/', function(Application $app, Request $request) {
            $q = $request->get('q');
            return new Response('How about implementing search_0 as a GET method ?');
            });


$app->GET('//computer/api/json?depth=1', function(Application $app, Request $request) {
            return new Response('How about implementing getComputer as a GET method ?');
            });


$app->GET('//crumbIssuer/api/json', function(Application $app, Request $request) {
            return new Response('How about implementing getCrumb as a GET method ?');
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
