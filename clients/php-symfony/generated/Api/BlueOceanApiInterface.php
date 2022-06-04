<?php
/**
 * BlueOceanApiInterface
 *
 * PHP version 8.1.1
 *
 * @category Class
 * @package  OpenAPI\Server
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */

/**
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 *
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 */

namespace OpenAPI\Server\Api;

use Symfony\Component\HttpFoundation\File\UploadedFile;
use OpenAPI\Server\Model\BranchImpl;
use OpenAPI\Server\Model\FavoriteImpl;
use OpenAPI\Server\Model\GithubOrganization;
use OpenAPI\Server\Model\GithubScm;
use OpenAPI\Server\Model\MultibranchPipeline;
use OpenAPI\Server\Model\Organisation;
use OpenAPI\Server\Model\Pipeline;
use OpenAPI\Server\Model\PipelineActivity;
use OpenAPI\Server\Model\PipelineFolderImpl;
use OpenAPI\Server\Model\PipelineImpl;
use OpenAPI\Server\Model\PipelineRun;
use OpenAPI\Server\Model\PipelineRunNode;
use OpenAPI\Server\Model\PipelineStepImpl;
use OpenAPI\Server\Model\QueueItemImpl;
use OpenAPI\Server\Model\User;

/**
 * BlueOceanApiInterface Interface Doc Comment
 *
 * @category Interface
 * @package  OpenAPI\Server\Api
 * @author   OpenAPI Generator team
 * @link     https://github.com/openapitools/openapi-generator
 */
interface BlueOceanApiInterface
{

    /**
     * Sets authentication method jenkins_auth
     *
     * @param string $value Value of the jenkins_auth authentication method.
     *
     * @return void
     */
    public function setjenkins_auth($value);

    /**
     * Operation deletePipelineQueueItem
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $queue  Name of the queue item (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return void
     */
    public function deletePipelineQueueItem($organization, $pipeline, $queue, &$responseCode, array &$responseHeaders): void;


    /**
     * Operation getAuthenticatedUser
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\User
     */
    public function getAuthenticatedUser($organization, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\User;


    /**
     * Operation getClasses
     *
     * @param  \string $class  Name of the class (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \string
     */
    public function getClasses($class, &$responseCode, array &$responseHeaders): array|\string;


    /**
     * Operation getJsonWebKey
     *
     * @param  \int $key  Key ID received as part of JWT header field kid (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \string
     */
    public function getJsonWebKey($key, &$responseCode, array &$responseHeaders): array|\string;


    /**
     * Operation getJsonWebToken
     *
     * @param  \int $expiryTimeInMins  Token expiry time in minutes, default: 30 minutes (optional)
     * @param  \int $maxExpiryTimeInMins  Maximum token expiry time in minutes, default: 480 minutes (optional)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \string
     */
    public function getJsonWebToken($expiryTimeInMins = null, $maxExpiryTimeInMins = null, &$responseCode, array &$responseHeaders): array|\string;


    /**
     * Operation getOrganisation
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\Organisation
     */
    public function getOrganisation($organization, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\Organisation;


    /**
     * Operation getOrganisations
     *
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\Organisation[]
     */
    public function getOrganisations(&$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getPipeline
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\Pipeline
     */
    public function getPipeline($organization, $pipeline, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\Pipeline;


    /**
     * Operation getPipelineActivities
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineActivity[]
     */
    public function getPipelineActivities($organization, $pipeline, &$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getPipelineBranch
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $branch  Name of the branch (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\BranchImpl
     */
    public function getPipelineBranch($organization, $pipeline, $branch, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\BranchImpl;


    /**
     * Operation getPipelineBranchRun
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $branch  Name of the branch (required)
     * @param  \string $run  Name of the run (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineRun
     */
    public function getPipelineBranchRun($organization, $pipeline, $branch, $run, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\PipelineRun;


    /**
     * Operation getPipelineBranches
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\MultibranchPipeline
     */
    public function getPipelineBranches($organization, $pipeline, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\MultibranchPipeline;


    /**
     * Operation getPipelineFolder
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $folder  Name of the folder (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineFolderImpl
     */
    public function getPipelineFolder($organization, $folder, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\PipelineFolderImpl;


    /**
     * Operation getPipelineFolderPipeline
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $folder  Name of the folder (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineImpl
     */
    public function getPipelineFolderPipeline($organization, $pipeline, $folder, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\PipelineImpl;


    /**
     * Operation getPipelineQueue
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\QueueItemImpl[]
     */
    public function getPipelineQueue($organization, $pipeline, &$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getPipelineRun
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $run  Name of the run (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineRun
     */
    public function getPipelineRun($organization, $pipeline, $run, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\PipelineRun;


    /**
     * Operation getPipelineRunLog
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $run  Name of the run (required)
     * @param  \int $start  Start position of the log (optional)
     * @param  \bool $download  Set to true in order to download the file, otherwise it&#39;s passed as a response body (optional)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \string
     */
    public function getPipelineRunLog($organization, $pipeline, $run, $start = null, $download = null, &$responseCode, array &$responseHeaders): array|\string;


    /**
     * Operation getPipelineRunNode
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $run  Name of the run (required)
     * @param  \string $node  Name of the node (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineRunNode
     */
    public function getPipelineRunNode($organization, $pipeline, $run, $node, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\PipelineRunNode;


    /**
     * Operation getPipelineRunNodeStep
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $run  Name of the run (required)
     * @param  \string $node  Name of the node (required)
     * @param  \string $step  Name of the step (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineStepImpl
     */
    public function getPipelineRunNodeStep($organization, $pipeline, $run, $node, $step, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\PipelineStepImpl;


    /**
     * Operation getPipelineRunNodeStepLog
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $run  Name of the run (required)
     * @param  \string $node  Name of the node (required)
     * @param  \string $step  Name of the step (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \string
     */
    public function getPipelineRunNodeStepLog($organization, $pipeline, $run, $node, $step, &$responseCode, array &$responseHeaders): array|\string;


    /**
     * Operation getPipelineRunNodeSteps
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $run  Name of the run (required)
     * @param  \string $node  Name of the node (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineStepImpl[]
     */
    public function getPipelineRunNodeSteps($organization, $pipeline, $run, $node, &$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getPipelineRunNodes
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $run  Name of the run (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineRunNode[]
     */
    public function getPipelineRunNodes($organization, $pipeline, $run, &$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getPipelineRuns
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineRun[]
     */
    public function getPipelineRuns($organization, $pipeline, &$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getPipelines
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\Pipeline[]
     */
    public function getPipelines($organization, &$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getSCM
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $scm  Name of SCM (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\GithubScm
     */
    public function getSCM($organization, $scm, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\GithubScm;


    /**
     * Operation getSCMOrganisationRepositories
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $scm  Name of SCM (required)
     * @param  \string $scmOrganisation  Name of the SCM organization (required)
     * @param  \string $credentialId  Credential ID (optional)
     * @param  \int $pageSize  Number of items in a page (optional)
     * @param  \int $pageNumber  Page number (optional)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\GithubOrganization[]
     */
    public function getSCMOrganisationRepositories($organization, $scm, $scmOrganisation, $credentialId = null, $pageSize = null, $pageNumber = null, &$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getSCMOrganisationRepository
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $scm  Name of SCM (required)
     * @param  \string $scmOrganisation  Name of the SCM organization (required)
     * @param  \string $repository  Name of the SCM repository (required)
     * @param  \string $credentialId  Credential ID (optional)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\GithubOrganization[]
     */
    public function getSCMOrganisationRepository($organization, $scm, $scmOrganisation, $repository, $credentialId = null, &$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getSCMOrganisations
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $scm  Name of SCM (required)
     * @param  \string $credentialId  Credential ID (optional)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\GithubOrganization[]
     */
    public function getSCMOrganisations($organization, $scm, $credentialId = null, &$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getUser
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $user  Name of the user (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\User
     */
    public function getUser($organization, $user, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\User;


    /**
     * Operation getUserFavorites
     *
     * @param  \string $user  Name of the user (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\FavoriteImpl[]
     */
    public function getUserFavorites($user, &$responseCode, array &$responseHeaders): iterable;


    /**
     * Operation getUsers
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\User
     */
    public function getUsers($organization, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\User;


    /**
     * Operation postPipelineRun
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $run  Name of the run (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\QueueItemImpl
     */
    public function postPipelineRun($organization, $pipeline, $run, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\QueueItemImpl;


    /**
     * Operation postPipelineRuns
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\QueueItemImpl
     */
    public function postPipelineRuns($organization, $pipeline, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\QueueItemImpl;


    /**
     * Operation putPipelineFavorite
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \bool $body  Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\FavoriteImpl
     */
    public function putPipelineFavorite($organization, $pipeline, $body, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\FavoriteImpl;


    /**
     * Operation putPipelineRun
     *
     * @param  \string $organization  Name of the organization (required)
     * @param  \string $pipeline  Name of the pipeline (required)
     * @param  \string $run  Name of the run (required)
     * @param  \string $blocking  Set to true to make blocking stop, default: false (optional)
     * @param  \int $timeOutInSecs  Timeout in seconds, default: 10 seconds (optional)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \OpenAPI\Server\Model\PipelineRun
     */
    public function putPipelineRun($organization, $pipeline, $run, $blocking = null, $timeOutInSecs = null, &$responseCode, array &$responseHeaders): array|\OpenAPI\Server\Model\PipelineRun;


    /**
     * Operation search
     *
     * @param  \string $q  Query string (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \string
     */
    public function search($q, &$responseCode, array &$responseHeaders): array|\string;


    /**
     * Operation searchClasses
     *
     * @param  \string $q  Query string containing an array of class names (required)
     * @param  \array   $responseHeaders  Additional HTTP headers to return with the response ()
     *
     * @return \string
     */
    public function searchClasses($q, &$responseCode, array &$responseHeaders): array|\string;

}
