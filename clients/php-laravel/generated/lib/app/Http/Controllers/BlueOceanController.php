<?php

/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 * PHP version 7.2.5
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 * Source files are located at:
 *
 * > https://github.com/OpenAPITools/openapi-generator/blob/master/modules/openapi-generator/src/main/resources/php-laravel/
 */


namespace App\Http\Controllers;

use Illuminate\Support\Facades\Request;

class BlueOceanController extends Controller
{
    /**
     * Constructor
     */
    public function __construct()
    {
    }

    /**
     * Operation searchClasses
     *
     * .
     *
     *
     * @return Http response
     */
    public function searchClasses()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['q'])) {
            throw new \InvalidArgumentException('Missing the required parameter $q when calling searchClasses');
        }
        $q = $input['q'];


        return response('How about implementing searchClasses as a get method ?');
    }
    /**
     * Operation getClasses
     *
     * .
     *
     * @param string $class Name of the class (required)
     *
     * @return Http response
     */
    public function getClasses($class)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getClasses as a get method ?');
    }
    /**
     * Operation getOrganisations
     *
     * .
     *
     *
     * @return Http response
     */
    public function getOrganisations()
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getOrganisations as a get method ?');
    }
    /**
     * Operation getOrganisation
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     *
     * @return Http response
     */
    public function getOrganisation($organization)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getOrganisation as a get method ?');
    }
    /**
     * Operation getPipelines
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     *
     * @return Http response
     */
    public function getPipelines($organization)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelines as a get method ?');
    }
    /**
     * Operation getPipelineFolder
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $folder Name of the folder (required)
     *
     * @return Http response
     */
    public function getPipelineFolder($organization, $folder)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineFolder as a get method ?');
    }
    /**
     * Operation getPipelineFolderPipeline
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $folder Name of the folder (required)
     *
     * @return Http response
     */
    public function getPipelineFolderPipeline($organization, $pipeline, $folder)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineFolderPipeline as a get method ?');
    }
    /**
     * Operation getPipeline
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     *
     * @return Http response
     */
    public function getPipeline($organization, $pipeline)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipeline as a get method ?');
    }
    /**
     * Operation getPipelineActivities
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     *
     * @return Http response
     */
    public function getPipelineActivities($organization, $pipeline)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineActivities as a get method ?');
    }
    /**
     * Operation getPipelineBranches
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     *
     * @return Http response
     */
    public function getPipelineBranches($organization, $pipeline)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineBranches as a get method ?');
    }
    /**
     * Operation getPipelineBranch
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $branch Name of the branch (required)
     *
     * @return Http response
     */
    public function getPipelineBranch($organization, $pipeline, $branch)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineBranch as a get method ?');
    }
    /**
     * Operation getPipelineBranchRun
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $branch Name of the branch (required)
     * @param string $run Name of the run (required)
     *
     * @return Http response
     */
    public function getPipelineBranchRun($organization, $pipeline, $branch, $run)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineBranchRun as a get method ?');
    }
    /**
     * Operation putPipelineFavorite
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     *
     * @return Http response
     */
    public function putPipelineFavorite($organization, $pipeline)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing putPipelineFavorite as a put method ?');
    }
    /**
     * Operation getPipelineQueue
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     *
     * @return Http response
     */
    public function getPipelineQueue($organization, $pipeline)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineQueue as a get method ?');
    }
    /**
     * Operation deletePipelineQueueItem
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $queue Name of the queue item (required)
     *
     * @return Http response
     */
    public function deletePipelineQueueItem($organization, $pipeline, $queue)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing deletePipelineQueueItem as a delete method ?');
    }
    /**
     * Operation getPipelineRuns
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     *
     * @return Http response
     */
    public function getPipelineRuns($organization, $pipeline)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineRuns as a get method ?');
    }
    /**
     * Operation postPipelineRuns
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     *
     * @return Http response
     */
    public function postPipelineRuns($organization, $pipeline)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing postPipelineRuns as a post method ?');
    }
    /**
     * Operation getPipelineRun
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $run Name of the run (required)
     *
     * @return Http response
     */
    public function getPipelineRun($organization, $pipeline, $run)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineRun as a get method ?');
    }
    /**
     * Operation getPipelineRunLog
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $run Name of the run (required)
     *
     * @return Http response
     */
    public function getPipelineRunLog($organization, $pipeline, $run)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineRunLog as a get method ?');
    }
    /**
     * Operation getPipelineRunNodes
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $run Name of the run (required)
     *
     * @return Http response
     */
    public function getPipelineRunNodes($organization, $pipeline, $run)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineRunNodes as a get method ?');
    }
    /**
     * Operation getPipelineRunNode
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $run Name of the run (required)
     * @param string $node Name of the node (required)
     *
     * @return Http response
     */
    public function getPipelineRunNode($organization, $pipeline, $run, $node)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineRunNode as a get method ?');
    }
    /**
     * Operation getPipelineRunNodeSteps
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $run Name of the run (required)
     * @param string $node Name of the node (required)
     *
     * @return Http response
     */
    public function getPipelineRunNodeSteps($organization, $pipeline, $run, $node)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineRunNodeSteps as a get method ?');
    }
    /**
     * Operation getPipelineRunNodeStep
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $run Name of the run (required)
     * @param string $node Name of the node (required)
     * @param string $step Name of the step (required)
     *
     * @return Http response
     */
    public function getPipelineRunNodeStep($organization, $pipeline, $run, $node, $step)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineRunNodeStep as a get method ?');
    }
    /**
     * Operation getPipelineRunNodeStepLog
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $run Name of the run (required)
     * @param string $node Name of the node (required)
     * @param string $step Name of the step (required)
     *
     * @return Http response
     */
    public function getPipelineRunNodeStepLog($organization, $pipeline, $run, $node, $step)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getPipelineRunNodeStepLog as a get method ?');
    }
    /**
     * Operation postPipelineRun
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $run Name of the run (required)
     *
     * @return Http response
     */
    public function postPipelineRun($organization, $pipeline, $run)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing postPipelineRun as a post method ?');
    }
    /**
     * Operation putPipelineRun
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $pipeline Name of the pipeline (required)
     * @param string $run Name of the run (required)
     *
     * @return Http response
     */
    public function putPipelineRun($organization, $pipeline, $run)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing putPipelineRun as a put method ?');
    }
    /**
     * Operation getSCM
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $scm Name of SCM (required)
     *
     * @return Http response
     */
    public function getSCM($organization, $scm)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getSCM as a get method ?');
    }
    /**
     * Operation getSCMOrganisations
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $scm Name of SCM (required)
     *
     * @return Http response
     */
    public function getSCMOrganisations($organization, $scm)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getSCMOrganisations as a get method ?');
    }
    /**
     * Operation getSCMOrganisationRepositories
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $scm Name of SCM (required)
     * @param string $scmOrganisation Name of the SCM organization (required)
     *
     * @return Http response
     */
    public function getSCMOrganisationRepositories($organization, $scm, $scmOrganisation)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getSCMOrganisationRepositories as a get method ?');
    }
    /**
     * Operation getSCMOrganisationRepository
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $scm Name of SCM (required)
     * @param string $scmOrganisation Name of the SCM organization (required)
     * @param string $repository Name of the SCM repository (required)
     *
     * @return Http response
     */
    public function getSCMOrganisationRepository($organization, $scm, $scmOrganisation, $repository)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getSCMOrganisationRepository as a get method ?');
    }
    /**
     * Operation getAuthenticatedUser
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     *
     * @return Http response
     */
    public function getAuthenticatedUser($organization)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getAuthenticatedUser as a get method ?');
    }
    /**
     * Operation getUsers
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     *
     * @return Http response
     */
    public function getUsers($organization)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getUsers as a get method ?');
    }
    /**
     * Operation getUser
     *
     * .
     *
     * @param string $organization Name of the organization (required)
     * @param string $user Name of the user (required)
     *
     * @return Http response
     */
    public function getUser($organization, $user)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getUser as a get method ?');
    }
    /**
     * Operation search
     *
     * .
     *
     *
     * @return Http response
     */
    public function search()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        if (!isset($input['q'])) {
            throw new \InvalidArgumentException('Missing the required parameter $q when calling search');
        }
        $q = $input['q'];


        return response('How about implementing search as a get method ?');
    }
    /**
     * Operation getUserFavorites
     *
     * .
     *
     * @param string $user Name of the user (required)
     *
     * @return Http response
     */
    public function getUserFavorites($user)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getUserFavorites as a get method ?');
    }
    /**
     * Operation getJsonWebKey
     *
     * .
     *
     * @param int $key Key ID received as part of JWT header field kid (required)
     *
     * @return Http response
     */
    public function getJsonWebKey($key)
    {
        $input = Request::all();

        //path params validation


        //not path params validation

        return response('How about implementing getJsonWebKey as a get method ?');
    }
    /**
     * Operation getJsonWebToken
     *
     * .
     *
     *
     * @return Http response
     */
    public function getJsonWebToken()
    {
        $input = Request::all();

        //path params validation


        //not path params validation
        $expiryTimeInMins = $input['expiryTimeInMins'];

        $maxExpiryTimeInMins = $input['maxExpiryTimeInMins'];


        return response('How about implementing getJsonWebToken as a get method ?');
    }
}
