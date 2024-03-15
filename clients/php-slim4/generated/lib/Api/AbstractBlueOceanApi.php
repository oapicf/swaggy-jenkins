<?php

/**
 * Swaggy Jenkins
 * PHP version 7.4
 *
 * @package OpenAPIServer
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */

/**
 * Jenkins API clients generated from Swagger / Open API specification
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

/**
 * NOTE: This class is auto generated by the openapi generator program.
 * https://github.com/openapitools/openapi-generator
 * Do not edit the class manually.
 * Extend this class with your controller. You can inject dependencies via class constructor,
 * @see https://github.com/PHP-DI/Slim-Bridge basic example.
 */
namespace OpenAPIServer\Api;

use Psr\Http\Message\ServerRequestInterface;
use Psr\Http\Message\ResponseInterface;
use Slim\Exception\HttpNotImplementedException;

/**
 * AbstractBlueOceanApi Class Doc Comment
 *
 * @package OpenAPIServer\Api
 * @author  OpenAPI Generator team
 * @link    https://github.com/openapitools/openapi-generator
 */
abstract class AbstractBlueOceanApi
{
    /**
     * DELETE deletePipelineQueueItem
     * Notes: Delete queue item from an organization pipeline queue
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $queue Name of the queue item
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function deletePipelineQueueItem(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $queue
    ): ResponseInterface {
        $message = "How about implementing deletePipelineQueueItem as a DELETE method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getAuthenticatedUser
     * Notes: Retrieve authenticated user details for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getAuthenticatedUser(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization
    ): ResponseInterface {
        $message = "How about implementing getAuthenticatedUser as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getClasses
     * Notes: Get a list of class names supported by a given class
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $class Name of the class
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getClasses(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $class
    ): ResponseInterface {
        $message = "How about implementing getClasses as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getJsonWebKey
     * Notes: Retrieve JSON Web Key
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param int $key Key ID received as part of JWT header field kid
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getJsonWebKey(
        ServerRequestInterface $request,
        ResponseInterface $response,
        int $key
    ): ResponseInterface {
        $message = "How about implementing getJsonWebKey as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getJsonWebToken
     * Notes: Retrieve JSON Web Token
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getJsonWebToken(
        ServerRequestInterface $request,
        ResponseInterface $response
    ): ResponseInterface {
        $queryParams = $request->getQueryParams();
        $expiryTimeInMins = (key_exists('expiryTimeInMins', $queryParams)) ? $queryParams['expiryTimeInMins'] : null;
        $maxExpiryTimeInMins = (key_exists('maxExpiryTimeInMins', $queryParams)) ? $queryParams['maxExpiryTimeInMins'] : null;
        $message = "How about implementing getJsonWebToken as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getOrganisation
     * Notes: Retrieve organization details
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getOrganisation(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization
    ): ResponseInterface {
        $message = "How about implementing getOrganisation as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getOrganisations
     * Notes: Retrieve all organizations details
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getOrganisations(
        ServerRequestInterface $request,
        ResponseInterface $response
    ): ResponseInterface {
        $message = "How about implementing getOrganisations as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipeline
     * Notes: Retrieve pipeline details for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipeline(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline
    ): ResponseInterface {
        $message = "How about implementing getPipeline as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineActivities
     * Notes: Retrieve all activities details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineActivities(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline
    ): ResponseInterface {
        $message = "How about implementing getPipelineActivities as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineBranch
     * Notes: Retrieve branch details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $branch Name of the branch
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineBranch(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $branch
    ): ResponseInterface {
        $message = "How about implementing getPipelineBranch as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineBranchRun
     * Notes: Retrieve branch run details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $branch Name of the branch
     * @param string $run Name of the run
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineBranchRun(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $branch,
        string $run
    ): ResponseInterface {
        $message = "How about implementing getPipelineBranchRun as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineBranches
     * Notes: Retrieve all branches details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineBranches(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline
    ): ResponseInterface {
        $message = "How about implementing getPipelineBranches as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineFolder
     * Notes: Retrieve pipeline folder for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $folder Name of the folder
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineFolder(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $folder
    ): ResponseInterface {
        $message = "How about implementing getPipelineFolder as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineFolderPipeline
     * Notes: Retrieve pipeline details for an organization folder
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $folder Name of the folder
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineFolderPipeline(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $folder
    ): ResponseInterface {
        $message = "How about implementing getPipelineFolderPipeline as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineQueue
     * Notes: Retrieve queue details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineQueue(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline
    ): ResponseInterface {
        $message = "How about implementing getPipelineQueue as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineRun
     * Notes: Retrieve run details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $run Name of the run
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineRun(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $run
    ): ResponseInterface {
        $message = "How about implementing getPipelineRun as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineRunLog
     * Notes: Get log for a pipeline run
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $run Name of the run
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineRunLog(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $run
    ): ResponseInterface {
        $queryParams = $request->getQueryParams();
        $start = (key_exists('start', $queryParams)) ? $queryParams['start'] : null;
        $download = (key_exists('download', $queryParams)) ? $queryParams['download'] : null;
        $message = "How about implementing getPipelineRunLog as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineRunNode
     * Notes: Retrieve run node details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $run Name of the run
     * @param string $node Name of the node
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineRunNode(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $run,
        string $node
    ): ResponseInterface {
        $message = "How about implementing getPipelineRunNode as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineRunNodeStep
     * Notes: Retrieve run node details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $run Name of the run
     * @param string $node Name of the node
     * @param string $step Name of the step
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineRunNodeStep(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $run,
        string $node,
        string $step
    ): ResponseInterface {
        $message = "How about implementing getPipelineRunNodeStep as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineRunNodeStepLog
     * Notes: Get log for a pipeline run node step
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $run Name of the run
     * @param string $node Name of the node
     * @param string $step Name of the step
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineRunNodeStepLog(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $run,
        string $node,
        string $step
    ): ResponseInterface {
        $message = "How about implementing getPipelineRunNodeStepLog as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineRunNodeSteps
     * Notes: Retrieve run node steps details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $run Name of the run
     * @param string $node Name of the node
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineRunNodeSteps(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $run,
        string $node
    ): ResponseInterface {
        $message = "How about implementing getPipelineRunNodeSteps as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineRunNodes
     * Notes: Retrieve run nodes details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $run Name of the run
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineRunNodes(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $run
    ): ResponseInterface {
        $message = "How about implementing getPipelineRunNodes as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelineRuns
     * Notes: Retrieve all runs details for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelineRuns(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline
    ): ResponseInterface {
        $message = "How about implementing getPipelineRuns as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getPipelines
     * Notes: Retrieve all pipelines details for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getPipelines(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization
    ): ResponseInterface {
        $message = "How about implementing getPipelines as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getSCM
     * Notes: Retrieve SCM details for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $scm Name of SCM
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getSCM(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $scm
    ): ResponseInterface {
        $message = "How about implementing getSCM as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getSCMOrganisationRepositories
     * Notes: Retrieve SCM organization repositories details for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $scm Name of SCM
     * @param string $scmOrganisation Name of the SCM organization
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getSCMOrganisationRepositories(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $scm,
        string $scmOrganisation
    ): ResponseInterface {
        $queryParams = $request->getQueryParams();
        $credentialId = (key_exists('credentialId', $queryParams)) ? $queryParams['credentialId'] : null;
        $pageSize = (key_exists('pageSize', $queryParams)) ? $queryParams['pageSize'] : null;
        $pageNumber = (key_exists('pageNumber', $queryParams)) ? $queryParams['pageNumber'] : null;
        $message = "How about implementing getSCMOrganisationRepositories as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getSCMOrganisationRepository
     * Notes: Retrieve SCM organization repository details for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $scm Name of SCM
     * @param string $scmOrganisation Name of the SCM organization
     * @param string $repository Name of the SCM repository
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getSCMOrganisationRepository(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $scm,
        string $scmOrganisation,
        string $repository
    ): ResponseInterface {
        $queryParams = $request->getQueryParams();
        $credentialId = (key_exists('credentialId', $queryParams)) ? $queryParams['credentialId'] : null;
        $message = "How about implementing getSCMOrganisationRepository as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getSCMOrganisations
     * Notes: Retrieve SCM organizations details for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $scm Name of SCM
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getSCMOrganisations(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $scm
    ): ResponseInterface {
        $queryParams = $request->getQueryParams();
        $credentialId = (key_exists('credentialId', $queryParams)) ? $queryParams['credentialId'] : null;
        $message = "How about implementing getSCMOrganisations as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getUser
     * Notes: Retrieve user details for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $user Name of the user
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getUser(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $user
    ): ResponseInterface {
        $message = "How about implementing getUser as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getUserFavorites
     * Notes: Retrieve user favorites details for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $user Name of the user
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getUserFavorites(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $user
    ): ResponseInterface {
        $message = "How about implementing getUserFavorites as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET getUsers
     * Notes: Retrieve users details for an organization
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function getUsers(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization
    ): ResponseInterface {
        $message = "How about implementing getUsers as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST postPipelineRun
     * Notes: Replay an organization pipeline run
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $run Name of the run
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function postPipelineRun(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $run
    ): ResponseInterface {
        $message = "How about implementing postPipelineRun as a POST method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * POST postPipelineRuns
     * Notes: Start a build for an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function postPipelineRuns(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline
    ): ResponseInterface {
        $message = "How about implementing postPipelineRuns as a POST method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * PUT putPipelineFavorite
     * Notes: Favorite/unfavorite a pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function putPipelineFavorite(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline
    ): ResponseInterface {
        $body = $request->getParsedBody();
        $message = "How about implementing putPipelineFavorite as a PUT method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * PUT putPipelineRun
     * Notes: Stop a build of an organization pipeline
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     * @param string $organization Name of the organization
     * @param string $pipeline Name of the pipeline
     * @param string $run Name of the run
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function putPipelineRun(
        ServerRequestInterface $request,
        ResponseInterface $response,
        string $organization,
        string $pipeline,
        string $run
    ): ResponseInterface {
        $queryParams = $request->getQueryParams();
        $blocking = (key_exists('blocking', $queryParams)) ? $queryParams['blocking'] : null;
        $timeOutInSecs = (key_exists('timeOutInSecs', $queryParams)) ? $queryParams['timeOutInSecs'] : null;
        $message = "How about implementing putPipelineRun as a PUT method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET search
     * Notes: Search for any resource details
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function search(
        ServerRequestInterface $request,
        ResponseInterface $response
    ): ResponseInterface {
        $queryParams = $request->getQueryParams();
        $q = (key_exists('q', $queryParams)) ? $queryParams['q'] : null;
        $message = "How about implementing search as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }

    /**
     * GET searchClasses
     * Notes: Get classes details
     * Output-Formats: [application/json]
     *
     * @param ServerRequestInterface $request  Request
     * @param ResponseInterface      $response Response
     *
     * @return ResponseInterface
     * @throws HttpNotImplementedException to force implementation class to override this method
     */
    public function searchClasses(
        ServerRequestInterface $request,
        ResponseInterface $response
    ): ResponseInterface {
        $queryParams = $request->getQueryParams();
        $q = (key_exists('q', $queryParams)) ? $queryParams['q'] : null;
        $message = "How about implementing searchClasses as a GET method in OpenAPIServer\Api\BlueOceanApi class?";
        throw new HttpNotImplementedException($request, $message);
    }
}
