<?php
declare(strict_types=1);

namespace App;

use Articus\DataTransfer as DT;
use OpenAPIGenerator\APIClient as OAGAC;
use Psr\Http\Client\ClientExceptionInterface;
use Psr\Http\Message\ResponseInterface;

/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 * The version of the OpenAPI document: 3.2.1-pre.0
 */
class ApiClient extends OAGAC\AbstractApiClient
{
    //region deletePipelineQueueItem
    /**
     * @param \App\DTO\DeletePipelineQueueItemParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function deletePipelineQueueItemRaw(
        \App\DTO\DeletePipelineQueueItemParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): ResponseInterface
    {
        $request = $this->createRequest('DELETE', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}', $this->getPathParameters($parameters), []);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\DeletePipelineQueueItemParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function deletePipelineQueueItem(
        \App\DTO\DeletePipelineQueueItemParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): array
    {
        $response = $this->deletePipelineQueueItemRaw($parameters, $security);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully deleted queue item */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\DeletePipelineQueueItemParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function deletePipelineQueueItemResult(
        \App\DTO\DeletePipelineQueueItemParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    )
    {
        return $this->getSuccessfulContent(...$this->deletePipelineQueueItem($parameters, $security));
    }
    //endregion

    //region getAuthenticatedUser
    /**
     * @param \App\DTO\GetAuthenticatedUserParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getAuthenticatedUserRaw(
        \App\DTO\GetAuthenticatedUserParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/user/', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetAuthenticatedUserParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getAuthenticatedUser(
        \App\DTO\GetAuthenticatedUserParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getAuthenticatedUserRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved authenticated user details */
                $responseContent = new \App\DTO\User();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetAuthenticatedUserParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\User
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getAuthenticatedUserResult(
        \App\DTO\GetAuthenticatedUserParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\User
    {
        return $this->getSuccessfulContent(...$this->getAuthenticatedUser($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getClasses
    /**
     * @param \App\DTO\GetClassesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getClassesRaw(
        \App\DTO\GetClassesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/classes/{class}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetClassesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getClasses(
        \App\DTO\GetClassesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getClassesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved class names */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetClassesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return string
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getClassesResult(
        \App\DTO\GetClassesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): string
    {
        return $this->getSuccessfulContent(...$this->getClasses($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getComputer
    /**
     * @param \App\DTO\GetComputerParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getComputerRaw(
        \App\DTO\GetComputerParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/computer/api/json', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetComputerParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getComputer(
        \App\DTO\GetComputerParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getComputerRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved computer details */
                $responseContent = new \App\DTO\ComputerSet();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetComputerParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\ComputerSet
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getComputerResult(
        \App\DTO\GetComputerParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\ComputerSet
    {
        return $this->getSuccessfulContent(...$this->getComputer($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getCrumb
    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getCrumbRaw(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/crumbIssuer/api/json', [], []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getCrumb(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getCrumbRaw($security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved CSRF protection token */
                $responseContent = new \App\DTO\DefaultCrumbIssuer();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\DefaultCrumbIssuer
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getCrumbResult(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\DefaultCrumbIssuer
    {
        return $this->getSuccessfulContent(...$this->getCrumb($security, $responseMediaType));
    }
    //endregion

    //region getJenkins
    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getJenkinsRaw(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/api/json', [], []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getJenkins(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getJenkinsRaw($security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved Jenkins details */
                $responseContent = new \App\DTO\Hudson();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Hudson
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getJenkinsResult(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Hudson
    {
        return $this->getSuccessfulContent(...$this->getJenkins($security, $responseMediaType));
    }
    //endregion

    //region getJob
    /**
     * @param \App\DTO\GetJobParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getJobRaw(
        \App\DTO\GetJobParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/job/{name}/api/json', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetJobParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getJob(
        \App\DTO\GetJobParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getJobRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved job details */
                $responseContent = new \App\DTO\FreeStyleProject();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Job cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetJobParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\FreeStyleProject
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getJobResult(
        \App\DTO\GetJobParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\FreeStyleProject
    {
        return $this->getSuccessfulContent(...$this->getJob($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getJobConfig
    /**
     * @param \App\DTO\GetJobConfigParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getJobConfigRaw(
        \App\DTO\GetJobConfigParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'text/xml'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/job/{name}/config.xml', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetJobConfigParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getJobConfig(
        \App\DTO\GetJobConfigParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'text/xml'
    ): array
    {
        $response = $this->getJobConfigRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved job configuration in config.xml format */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Job cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetJobConfigParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return string
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getJobConfigResult(
        \App\DTO\GetJobConfigParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'text/xml'
    ): string
    {
        return $this->getSuccessfulContent(...$this->getJobConfig($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getJobLastBuild
    /**
     * @param \App\DTO\GetJobLastBuildParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getJobLastBuildRaw(
        \App\DTO\GetJobLastBuildParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/job/{name}/lastBuild/api/json', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetJobLastBuildParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getJobLastBuild(
        \App\DTO\GetJobLastBuildParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getJobLastBuildRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved job's last build details */
                $responseContent = new \App\DTO\FreeStyleBuild();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Job cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetJobLastBuildParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\FreeStyleBuild
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getJobLastBuildResult(
        \App\DTO\GetJobLastBuildParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\FreeStyleBuild
    {
        return $this->getSuccessfulContent(...$this->getJobLastBuild($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getJobProgressiveText
    /**
     * @param \App\DTO\GetJobProgressiveTextParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getJobProgressiveTextRaw(
        \App\DTO\GetJobProgressiveTextParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/job/{name}/{number}/logText/progressiveText', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetJobProgressiveTextParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getJobProgressiveText(
        \App\DTO\GetJobProgressiveTextParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): array
    {
        $response = $this->getJobProgressiveTextRaw($parameters, $security);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved job's build progressive text output */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Job cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetJobProgressiveTextParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getJobProgressiveTextResult(
        \App\DTO\GetJobProgressiveTextParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    )
    {
        return $this->getSuccessfulContent(...$this->getJobProgressiveText($parameters, $security));
    }
    //endregion

    //region getJsonWebKey
    /**
     * @param \App\DTO\GetJsonWebKeyParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getJsonWebKeyRaw(
        \App\DTO\GetJsonWebKeyParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/jwt-auth/jwks/{key}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetJsonWebKeyParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getJsonWebKey(
        \App\DTO\GetJsonWebKeyParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getJsonWebKeyRaw($parameters, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved JWT token */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetJsonWebKeyParameterData $parameters
     * @param string $responseMediaType
     * @return string
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getJsonWebKeyResult(
        \App\DTO\GetJsonWebKeyParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): string
    {
        return $this->getSuccessfulContent(...$this->getJsonWebKey($parameters, $responseMediaType));
    }
    //endregion

    //region getJsonWebToken
    /**
     * @param \App\DTO\GetJsonWebTokenParameterData $parameters
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getJsonWebTokenRaw(
        \App\DTO\GetJsonWebTokenParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/jwt-auth/token', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetJsonWebTokenParameterData $parameters
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getJsonWebToken(
        \App\DTO\GetJsonWebTokenParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getJsonWebTokenRaw($parameters, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved JWT token */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetJsonWebTokenParameterData $parameters
     * @param string $responseMediaType
     * @return string
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getJsonWebTokenResult(
        \App\DTO\GetJsonWebTokenParameterData $parameters,
        string $responseMediaType = 'application/json'
    ): string
    {
        return $this->getSuccessfulContent(...$this->getJsonWebToken($parameters, $responseMediaType));
    }
    //endregion

    //region getOrganisation
    /**
     * @param \App\DTO\GetOrganisationParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getOrganisationRaw(
        \App\DTO\GetOrganisationParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetOrganisationParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getOrganisation(
        \App\DTO\GetOrganisationParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getOrganisationRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved pipeline details */
                $responseContent = new \App\DTO\Organisation();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Pipeline cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetOrganisationParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Organisation
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getOrganisationResult(
        \App\DTO\GetOrganisationParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Organisation
    {
        return $this->getSuccessfulContent(...$this->getOrganisation($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getOrganisations
    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getOrganisationsRaw(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/', [], []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getOrganisations(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getOrganisationsRaw($security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved pipelines details */
                $responseContent = new \App\DTO\Collection17();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection17
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getOrganisationsResult(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection17
    {
        return $this->getSuccessfulContent(...$this->getOrganisations($security, $responseMediaType));
    }
    //endregion

    //region getPipeline
    /**
     * @param \App\DTO\GetPipelineParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineRaw(
        \App\DTO\GetPipelineParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipeline(
        \App\DTO\GetPipelineParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved pipeline details */
                $responseContent = new \App\DTO\Pipeline();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Pipeline cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Pipeline
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineResult(
        \App\DTO\GetPipelineParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Pipeline
    {
        return $this->getSuccessfulContent(...$this->getPipeline($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineActivities
    /**
     * @param \App\DTO\GetPipelineActivitiesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineActivitiesRaw(
        \App\DTO\GetPipelineActivitiesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineActivitiesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineActivities(
        \App\DTO\GetPipelineActivitiesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineActivitiesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved all activities details */
                $responseContent = new \App\DTO\Collection21();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineActivitiesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection21
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineActivitiesResult(
        \App\DTO\GetPipelineActivitiesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection21
    {
        return $this->getSuccessfulContent(...$this->getPipelineActivities($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineBranch
    /**
     * @param \App\DTO\GetPipelineBranchParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineBranchRaw(
        \App\DTO\GetPipelineBranchParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineBranchParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineBranch(
        \App\DTO\GetPipelineBranchParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineBranchRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved branch details */
                $responseContent = new \App\DTO\BranchImpl();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineBranchParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\BranchImpl
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineBranchResult(
        \App\DTO\GetPipelineBranchParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\BranchImpl
    {
        return $this->getSuccessfulContent(...$this->getPipelineBranch($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineBranchRun
    /**
     * @param \App\DTO\GetPipelineBranchRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineBranchRunRaw(
        \App\DTO\GetPipelineBranchRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineBranchRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineBranchRun(
        \App\DTO\GetPipelineBranchRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineBranchRunRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved run details */
                $responseContent = new \App\DTO\PipelineRun();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineBranchRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\PipelineRun
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineBranchRunResult(
        \App\DTO\GetPipelineBranchRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\PipelineRun
    {
        return $this->getSuccessfulContent(...$this->getPipelineBranchRun($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineBranches
    /**
     * @param \App\DTO\GetPipelineBranchesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineBranchesRaw(
        \App\DTO\GetPipelineBranchesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineBranchesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineBranches(
        \App\DTO\GetPipelineBranchesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineBranchesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved all branches details */
                $responseContent = new \App\DTO\MultibranchPipeline();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineBranchesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\MultibranchPipeline
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineBranchesResult(
        \App\DTO\GetPipelineBranchesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\MultibranchPipeline
    {
        return $this->getSuccessfulContent(...$this->getPipelineBranches($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineFolder
    /**
     * @param \App\DTO\GetPipelineFolderParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineFolderRaw(
        \App\DTO\GetPipelineFolderParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{folder}/', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineFolderParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineFolder(
        \App\DTO\GetPipelineFolderParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineFolderRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved folder details */
                $responseContent = new \App\DTO\PipelineFolderImpl();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineFolderParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\PipelineFolderImpl
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineFolderResult(
        \App\DTO\GetPipelineFolderParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\PipelineFolderImpl
    {
        return $this->getSuccessfulContent(...$this->getPipelineFolder($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineFolderPipeline
    /**
     * @param \App\DTO\GetPipelineFolderPipelineParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineFolderPipelineRaw(
        \App\DTO\GetPipelineFolderPipelineParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineFolderPipelineParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineFolderPipeline(
        \App\DTO\GetPipelineFolderPipelineParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineFolderPipelineRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved pipeline details */
                $responseContent = new \App\DTO\PipelineImpl();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineFolderPipelineParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\PipelineImpl
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineFolderPipelineResult(
        \App\DTO\GetPipelineFolderPipelineParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\PipelineImpl
    {
        return $this->getSuccessfulContent(...$this->getPipelineFolderPipeline($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineQueue
    /**
     * @param \App\DTO\GetPipelineQueueParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineQueueRaw(
        \App\DTO\GetPipelineQueueParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineQueueParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineQueue(
        \App\DTO\GetPipelineQueueParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineQueueRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved queue details */
                $responseContent = new \App\DTO\Collection25();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineQueueParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection25
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineQueueResult(
        \App\DTO\GetPipelineQueueParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection25
    {
        return $this->getSuccessfulContent(...$this->getPipelineQueue($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineRun
    /**
     * @param \App\DTO\GetPipelineRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineRunRaw(
        \App\DTO\GetPipelineRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineRun(
        \App\DTO\GetPipelineRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineRunRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved run details */
                $responseContent = new \App\DTO\PipelineRun();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\PipelineRun
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineRunResult(
        \App\DTO\GetPipelineRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\PipelineRun
    {
        return $this->getSuccessfulContent(...$this->getPipelineRun($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineRunLog
    /**
     * @param \App\DTO\GetPipelineRunLogParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineRunLogRaw(
        \App\DTO\GetPipelineRunLogParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineRunLogParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineRunLog(
        \App\DTO\GetPipelineRunLogParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineRunLogRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved pipeline run log */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineRunLogParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return string
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineRunLogResult(
        \App\DTO\GetPipelineRunLogParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): string
    {
        return $this->getSuccessfulContent(...$this->getPipelineRunLog($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineRunNode
    /**
     * @param \App\DTO\GetPipelineRunNodeParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineRunNodeRaw(
        \App\DTO\GetPipelineRunNodeParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineRunNodeParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineRunNode(
        \App\DTO\GetPipelineRunNodeParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineRunNodeRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved run node details */
                $responseContent = new \App\DTO\PipelineRunNode();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineRunNodeParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\PipelineRunNode
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineRunNodeResult(
        \App\DTO\GetPipelineRunNodeParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\PipelineRunNode
    {
        return $this->getSuccessfulContent(...$this->getPipelineRunNode($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineRunNodeStep
    /**
     * @param \App\DTO\GetPipelineRunNodeStepParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineRunNodeStepRaw(
        \App\DTO\GetPipelineRunNodeStepParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineRunNodeStepParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineRunNodeStep(
        \App\DTO\GetPipelineRunNodeStepParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineRunNodeStepRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved run node step details */
                $responseContent = new \App\DTO\PipelineStepImpl();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineRunNodeStepParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\PipelineStepImpl
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineRunNodeStepResult(
        \App\DTO\GetPipelineRunNodeStepParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\PipelineStepImpl
    {
        return $this->getSuccessfulContent(...$this->getPipelineRunNodeStep($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineRunNodeStepLog
    /**
     * @param \App\DTO\GetPipelineRunNodeStepLogParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineRunNodeStepLogRaw(
        \App\DTO\GetPipelineRunNodeStepLogParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineRunNodeStepLogParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineRunNodeStepLog(
        \App\DTO\GetPipelineRunNodeStepLogParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineRunNodeStepLogRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved pipeline run node step log */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineRunNodeStepLogParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return string
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineRunNodeStepLogResult(
        \App\DTO\GetPipelineRunNodeStepLogParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): string
    {
        return $this->getSuccessfulContent(...$this->getPipelineRunNodeStepLog($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineRunNodeSteps
    /**
     * @param \App\DTO\GetPipelineRunNodeStepsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineRunNodeStepsRaw(
        \App\DTO\GetPipelineRunNodeStepsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineRunNodeStepsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineRunNodeSteps(
        \App\DTO\GetPipelineRunNodeStepsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineRunNodeStepsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved run node steps details */
                $responseContent = new \App\DTO\Collection32();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineRunNodeStepsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection32
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineRunNodeStepsResult(
        \App\DTO\GetPipelineRunNodeStepsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection32
    {
        return $this->getSuccessfulContent(...$this->getPipelineRunNodeSteps($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineRunNodes
    /**
     * @param \App\DTO\GetPipelineRunNodesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineRunNodesRaw(
        \App\DTO\GetPipelineRunNodesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineRunNodesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineRunNodes(
        \App\DTO\GetPipelineRunNodesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineRunNodesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved run nodes details */
                $responseContent = new \App\DTO\Collection29();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineRunNodesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection29
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineRunNodesResult(
        \App\DTO\GetPipelineRunNodesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection29
    {
        return $this->getSuccessfulContent(...$this->getPipelineRunNodes($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelineRuns
    /**
     * @param \App\DTO\GetPipelineRunsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelineRunsRaw(
        \App\DTO\GetPipelineRunsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelineRunsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelineRuns(
        \App\DTO\GetPipelineRunsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelineRunsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved runs details */
                $responseContent = new \App\DTO\Collection27();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelineRunsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection27
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelineRunsResult(
        \App\DTO\GetPipelineRunsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection27
    {
        return $this->getSuccessfulContent(...$this->getPipelineRuns($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getPipelines
    /**
     * @param \App\DTO\GetPipelinesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getPipelinesRaw(
        \App\DTO\GetPipelinesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/pipelines/', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetPipelinesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getPipelines(
        \App\DTO\GetPipelinesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getPipelinesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved pipelines details */
                $responseContent = new \App\DTO\Collection19();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetPipelinesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection19
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getPipelinesResult(
        \App\DTO\GetPipelinesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection19
    {
        return $this->getSuccessfulContent(...$this->getPipelines($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getQueue
    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getQueueRaw(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/queue/api/json', [], []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getQueue(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getQueueRaw($security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved queue details */
                $responseContent = new \App\DTO\Queue();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Queue
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getQueueResult(
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Queue
    {
        return $this->getSuccessfulContent(...$this->getQueue($security, $responseMediaType));
    }
    //endregion

    //region getQueueItem
    /**
     * @param \App\DTO\GetQueueItemParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getQueueItemRaw(
        \App\DTO\GetQueueItemParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/queue/item/{number}/api/json', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetQueueItemParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getQueueItem(
        \App\DTO\GetQueueItemParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getQueueItemRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved queued item details */
                $responseContent = new \App\DTO\Queue();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetQueueItemParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Queue
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getQueueItemResult(
        \App\DTO\GetQueueItemParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Queue
    {
        return $this->getSuccessfulContent(...$this->getQueueItem($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getSCM
    /**
     * @param \App\DTO\GetSCMParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getSCMRaw(
        \App\DTO\GetSCMParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/scm/{scm}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetSCMParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getSCM(
        \App\DTO\GetSCMParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getSCMRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved SCM details */
                $responseContent = new \App\DTO\GithubScm();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetSCMParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\GithubScm
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getSCMResult(
        \App\DTO\GetSCMParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\GithubScm
    {
        return $this->getSuccessfulContent(...$this->getSCM($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getSCMOrganisationRepositories
    /**
     * @param \App\DTO\GetSCMOrganisationRepositoriesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getSCMOrganisationRepositoriesRaw(
        \App\DTO\GetSCMOrganisationRepositoriesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetSCMOrganisationRepositoriesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getSCMOrganisationRepositories(
        \App\DTO\GetSCMOrganisationRepositoriesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getSCMOrganisationRepositoriesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved SCM organization repositories details */
                $responseContent = new \App\DTO\Collection33();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetSCMOrganisationRepositoriesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection33
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getSCMOrganisationRepositoriesResult(
        \App\DTO\GetSCMOrganisationRepositoriesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection33
    {
        return $this->getSuccessfulContent(...$this->getSCMOrganisationRepositories($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getSCMOrganisationRepository
    /**
     * @param \App\DTO\GetSCMOrganisationRepositoryParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getSCMOrganisationRepositoryRaw(
        \App\DTO\GetSCMOrganisationRepositoryParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetSCMOrganisationRepositoryParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getSCMOrganisationRepository(
        \App\DTO\GetSCMOrganisationRepositoryParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getSCMOrganisationRepositoryRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved SCM organizations details */
                $responseContent = new \App\DTO\Collection33();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetSCMOrganisationRepositoryParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection33
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getSCMOrganisationRepositoryResult(
        \App\DTO\GetSCMOrganisationRepositoryParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection33
    {
        return $this->getSuccessfulContent(...$this->getSCMOrganisationRepository($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getSCMOrganisations
    /**
     * @param \App\DTO\GetSCMOrganisationsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getSCMOrganisationsRaw(
        \App\DTO\GetSCMOrganisationsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/scm/{scm}/organizations', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetSCMOrganisationsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getSCMOrganisations(
        \App\DTO\GetSCMOrganisationsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getSCMOrganisationsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved SCM organizations details */
                $responseContent = new \App\DTO\Collection33();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetSCMOrganisationsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection33
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getSCMOrganisationsResult(
        \App\DTO\GetSCMOrganisationsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection33
    {
        return $this->getSuccessfulContent(...$this->getSCMOrganisations($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getUser
    /**
     * @param \App\DTO\GetUserParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getUserRaw(
        \App\DTO\GetUserParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/users/{user}', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetUserParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getUser(
        \App\DTO\GetUserParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getUserRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved users details */
                $responseContent = new \App\DTO\User();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetUserParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\User
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getUserResult(
        \App\DTO\GetUserParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\User
    {
        return $this->getSuccessfulContent(...$this->getUser($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getUserFavorites
    /**
     * @param \App\DTO\GetUserFavoritesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getUserFavoritesRaw(
        \App\DTO\GetUserFavoritesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/users/{user}/favorites', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetUserFavoritesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getUserFavorites(
        \App\DTO\GetUserFavoritesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getUserFavoritesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved users favorites details */
                $responseContent = new \App\DTO\Collection34();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetUserFavoritesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\Collection34
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getUserFavoritesResult(
        \App\DTO\GetUserFavoritesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\Collection34
    {
        return $this->getSuccessfulContent(...$this->getUserFavorites($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getUsers
    /**
     * @param \App\DTO\GetUsersParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getUsersRaw(
        \App\DTO\GetUsersParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/organizations/{organization}/users/', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetUsersParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getUsers(
        \App\DTO\GetUsersParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getUsersRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved users details */
                $responseContent = new \App\DTO\User();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetUsersParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\User
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getUsersResult(
        \App\DTO\GetUsersParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\User
    {
        return $this->getSuccessfulContent(...$this->getUsers($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getView
    /**
     * @param \App\DTO\GetViewParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getViewRaw(
        \App\DTO\GetViewParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/view/{name}/api/json', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetViewParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getView(
        \App\DTO\GetViewParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->getViewRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved view details */
                $responseContent = new \App\DTO\ListView();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* View cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetViewParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\ListView
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getViewResult(
        \App\DTO\GetViewParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\ListView
    {
        return $this->getSuccessfulContent(...$this->getView($parameters, $security, $responseMediaType));
    }
    //endregion

    //region getViewConfig
    /**
     * @param \App\DTO\GetViewConfigParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function getViewConfigRaw(
        \App\DTO\GetViewConfigParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'text/xml'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/view/{name}/config.xml', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\GetViewConfigParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function getViewConfig(
        \App\DTO\GetViewConfigParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'text/xml'
    ): array
    {
        $response = $this->getViewConfigRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved view configuration in config.xml format */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* View cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\GetViewConfigParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return string
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function getViewConfigResult(
        \App\DTO\GetViewConfigParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'text/xml'
    ): string
    {
        return $this->getSuccessfulContent(...$this->getViewConfig($parameters, $security, $responseMediaType));
    }
    //endregion

    //region headJenkins
    /**
     * @param iterable<string, string[]> $security
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function headJenkinsRaw(
        iterable $security = ['jenkins_auth' => []]
    ): ResponseInterface
    {
        $request = $this->createRequest('HEAD', '/api/json', [], []);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param iterable<string, string[]> $security
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function headJenkins(
        iterable $security = ['jenkins_auth' => []]
    ): array
    {
        $response = $this->headJenkinsRaw($security);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved Jenkins headers */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param iterable<string, string[]> $security
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function headJenkinsResult(
        iterable $security = ['jenkins_auth' => []]
    )
    {
        return $this->getSuccessfulContent(...$this->headJenkins($security));
    }
    //endregion

    //region postCreateItem
    /**
     * @param \App\DTO\PostCreateItemParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postCreateItemRaw(
        \App\DTO\PostCreateItemParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/createItem', [], $this->getQueryParameters($parameters));
        $request = $this->addCustomHeaders($request, $parameters);
        $request = $this->addBody($request, $requestMediaType, $requestContent);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostCreateItemParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postCreateItem(
        \App\DTO\PostCreateItemParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    ): array
    {
        $response = $this->postCreateItemRaw($parameters, $requestContent, $security, $requestMediaType, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully created a new job */
                break;
            case 400:
                /* An error has occurred - error message is embedded inside the HTML response */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostCreateItemParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postCreateItemResult(
        \App\DTO\PostCreateItemParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    )
    {
        return $this->getSuccessfulContent(...$this->postCreateItem($parameters, $requestContent, $security, $requestMediaType, $responseMediaType));
    }
    //endregion

    //region postCreateView
    /**
     * @param \App\DTO\PostCreateViewParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postCreateViewRaw(
        \App\DTO\PostCreateViewParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/createView', [], $this->getQueryParameters($parameters));
        $request = $this->addCustomHeaders($request, $parameters);
        $request = $this->addBody($request, $requestMediaType, $requestContent);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostCreateViewParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postCreateView(
        \App\DTO\PostCreateViewParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    ): array
    {
        $response = $this->postCreateViewRaw($parameters, $requestContent, $security, $requestMediaType, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully created the view */
                break;
            case 400:
                /* An error has occurred - error message is embedded inside the HTML response */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostCreateViewParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postCreateViewResult(
        \App\DTO\PostCreateViewParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    )
    {
        return $this->getSuccessfulContent(...$this->postCreateView($parameters, $requestContent, $security, $requestMediaType, $responseMediaType));
    }
    //endregion

    //region postJobBuild
    /**
     * @param \App\DTO\PostJobBuildParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postJobBuildRaw(
        \App\DTO\PostJobBuildParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/job/{name}/build', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addCustomHeaders($request, $parameters);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostJobBuildParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postJobBuild(
        \App\DTO\PostJobBuildParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): array
    {
        $response = $this->postJobBuildRaw($parameters, $security);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully built the job (backward compatibility for older versions of Jenkins) */
                break;
            case 201:
                /* Successfully built the job */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Job cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostJobBuildParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postJobBuildResult(
        \App\DTO\PostJobBuildParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    )
    {
        return $this->getSuccessfulContent(...$this->postJobBuild($parameters, $security));
    }
    //endregion

    //region postJobConfig
    /**
     * @param \App\DTO\PostJobConfigParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postJobConfigRaw(
        \App\DTO\PostJobConfigParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/job/{name}/config.xml', $this->getPathParameters($parameters), []);
        $request = $this->addCustomHeaders($request, $parameters);
        $request = $this->addBody($request, $requestMediaType, $requestContent);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostJobConfigParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postJobConfig(
        \App\DTO\PostJobConfigParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    ): array
    {
        $response = $this->postJobConfigRaw($parameters, $requestContent, $security, $requestMediaType, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved job configuration in config.xml format */
                break;
            case 400:
                /* An error has occurred - error message is embedded inside the HTML response */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Job cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostJobConfigParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postJobConfigResult(
        \App\DTO\PostJobConfigParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    )
    {
        return $this->getSuccessfulContent(...$this->postJobConfig($parameters, $requestContent, $security, $requestMediaType, $responseMediaType));
    }
    //endregion

    //region postJobDelete
    /**
     * @param \App\DTO\PostJobDeleteParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postJobDeleteRaw(
        \App\DTO\PostJobDeleteParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/job/{name}/doDelete', $this->getPathParameters($parameters), []);
        $request = $this->addCustomHeaders($request, $parameters);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostJobDeleteParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postJobDelete(
        \App\DTO\PostJobDeleteParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): array
    {
        $response = $this->postJobDeleteRaw($parameters, $security);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully deleted the job */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Job cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostJobDeleteParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postJobDeleteResult(
        \App\DTO\PostJobDeleteParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    )
    {
        return $this->getSuccessfulContent(...$this->postJobDelete($parameters, $security));
    }
    //endregion

    //region postJobDisable
    /**
     * @param \App\DTO\PostJobDisableParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postJobDisableRaw(
        \App\DTO\PostJobDisableParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/job/{name}/disable', $this->getPathParameters($parameters), []);
        $request = $this->addCustomHeaders($request, $parameters);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostJobDisableParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postJobDisable(
        \App\DTO\PostJobDisableParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): array
    {
        $response = $this->postJobDisableRaw($parameters, $security);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully disabled the job */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Job cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostJobDisableParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postJobDisableResult(
        \App\DTO\PostJobDisableParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    )
    {
        return $this->getSuccessfulContent(...$this->postJobDisable($parameters, $security));
    }
    //endregion

    //region postJobEnable
    /**
     * @param \App\DTO\PostJobEnableParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postJobEnableRaw(
        \App\DTO\PostJobEnableParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/job/{name}/enable', $this->getPathParameters($parameters), []);
        $request = $this->addCustomHeaders($request, $parameters);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostJobEnableParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postJobEnable(
        \App\DTO\PostJobEnableParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): array
    {
        $response = $this->postJobEnableRaw($parameters, $security);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully enabled the job */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Job cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostJobEnableParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postJobEnableResult(
        \App\DTO\PostJobEnableParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    )
    {
        return $this->getSuccessfulContent(...$this->postJobEnable($parameters, $security));
    }
    //endregion

    //region postJobLastBuildStop
    /**
     * @param \App\DTO\PostJobLastBuildStopParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postJobLastBuildStopRaw(
        \App\DTO\PostJobLastBuildStopParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/job/{name}/lastBuild/stop', $this->getPathParameters($parameters), []);
        $request = $this->addCustomHeaders($request, $parameters);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostJobLastBuildStopParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postJobLastBuildStop(
        \App\DTO\PostJobLastBuildStopParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    ): array
    {
        $response = $this->postJobLastBuildStopRaw($parameters, $security);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully stopped the job */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* Job cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostJobLastBuildStopParameterData $parameters
     * @param iterable<string, string[]> $security
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postJobLastBuildStopResult(
        \App\DTO\PostJobLastBuildStopParameterData $parameters,
        iterable $security = ['jenkins_auth' => []]
    )
    {
        return $this->getSuccessfulContent(...$this->postJobLastBuildStop($parameters, $security));
    }
    //endregion

    //region postPipelineRun
    /**
     * @param \App\DTO\PostPipelineRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postPipelineRunRaw(
        \App\DTO\PostPipelineRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostPipelineRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postPipelineRun(
        \App\DTO\PostPipelineRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->postPipelineRunRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully replayed a pipeline run */
                $responseContent = new \App\DTO\QueueItemImpl();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostPipelineRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\QueueItemImpl
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postPipelineRunResult(
        \App\DTO\PostPipelineRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\QueueItemImpl
    {
        return $this->getSuccessfulContent(...$this->postPipelineRun($parameters, $security, $responseMediaType));
    }
    //endregion

    //region postPipelineRuns
    /**
     * @param \App\DTO\PostPipelineRunsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postPipelineRunsRaw(
        \App\DTO\PostPipelineRunsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs', $this->getPathParameters($parameters), []);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostPipelineRunsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postPipelineRuns(
        \App\DTO\PostPipelineRunsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->postPipelineRunsRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully started a build */
                $responseContent = new \App\DTO\QueueItemImpl();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostPipelineRunsParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\QueueItemImpl
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postPipelineRunsResult(
        \App\DTO\PostPipelineRunsParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\QueueItemImpl
    {
        return $this->getSuccessfulContent(...$this->postPipelineRuns($parameters, $security, $responseMediaType));
    }
    //endregion

    //region postViewConfig
    /**
     * @param \App\DTO\PostViewConfigParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function postViewConfigRaw(
        \App\DTO\PostViewConfigParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    ): ResponseInterface
    {
        $request = $this->createRequest('POST', '/view/{name}/config.xml', $this->getPathParameters($parameters), []);
        $request = $this->addCustomHeaders($request, $parameters);
        $request = $this->addBody($request, $requestMediaType, $requestContent);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PostViewConfigParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function postViewConfig(
        \App\DTO\PostViewConfigParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    ): array
    {
        $response = $this->postViewConfigRaw($parameters, $requestContent, $security, $requestMediaType, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully updated view configuration */
                break;
            case 400:
                /* An error has occurred - error message is embedded inside the HTML response */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
            case 404:
                /* View cannot be found on Jenkins instance */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PostViewConfigParameterData $parameters
     * @param string $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return mixed
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function postViewConfigResult(
        \App\DTO\PostViewConfigParameterData $parameters,
        string $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = '*/*'
    )
    {
        return $this->getSuccessfulContent(...$this->postViewConfig($parameters, $requestContent, $security, $requestMediaType, $responseMediaType));
    }
    //endregion

    //region putPipelineFavorite
    /**
     * @param \App\DTO\PutPipelineFavoriteParameterData $parameters
     * @param bool $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function putPipelineFavoriteRaw(
        \App\DTO\PutPipelineFavoriteParameterData $parameters,
        bool $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('PUT', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite', $this->getPathParameters($parameters), []);
        $request = $this->addBody($request, $requestMediaType, $requestContent);
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PutPipelineFavoriteParameterData $parameters
     * @param bool $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function putPipelineFavorite(
        \App\DTO\PutPipelineFavoriteParameterData $parameters,
        bool $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->putPipelineFavoriteRaw($parameters, $requestContent, $security, $requestMediaType, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully favorited/unfavorited a pipeline */
                $responseContent = new \App\DTO\FavoriteImpl();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PutPipelineFavoriteParameterData $parameters
     * @param bool $requestContent
     * @param iterable<string, string[]> $security
     * @param string $requestMediaType
     * @param string $responseMediaType
     * @return \App\DTO\FavoriteImpl
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function putPipelineFavoriteResult(
        \App\DTO\PutPipelineFavoriteParameterData $parameters,
        bool $requestContent,
        iterable $security = ['jenkins_auth' => []],
        string $requestMediaType = 'application/json',
        string $responseMediaType = 'application/json'
    ): \App\DTO\FavoriteImpl
    {
        return $this->getSuccessfulContent(...$this->putPipelineFavorite($parameters, $requestContent, $security, $requestMediaType, $responseMediaType));
    }
    //endregion

    //region putPipelineRun
    /**
     * @param \App\DTO\PutPipelineRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function putPipelineRunRaw(
        \App\DTO\PutPipelineRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('PUT', '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop', $this->getPathParameters($parameters), $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\PutPipelineRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function putPipelineRun(
        \App\DTO\PutPipelineRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->putPipelineRunRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully stopped a build */
                $responseContent = new \App\DTO\PipelineRun();
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\PutPipelineRunParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return \App\DTO\PipelineRun
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function putPipelineRunResult(
        \App\DTO\PutPipelineRunParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): \App\DTO\PipelineRun
    {
        return $this->getSuccessfulContent(...$this->putPipelineRun($parameters, $security, $responseMediaType));
    }
    //endregion

    //region search
    /**
     * @param \App\DTO\SearchParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function searchRaw(
        \App\DTO\SearchParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/search/', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SearchParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function search(
        \App\DTO\SearchParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->searchRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved search result */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SearchParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return string
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function searchResult(
        \App\DTO\SearchParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): string
    {
        return $this->getSuccessfulContent(...$this->search($parameters, $security, $responseMediaType));
    }
    //endregion

    //region searchClasses
    /**
     * @param \App\DTO\SearchClassesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return ResponseInterface
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     */
    public function searchClassesRaw(
        \App\DTO\SearchClassesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): ResponseInterface
    {
        $request = $this->createRequest('GET', '/blue/rest/classes/', [], $this->getQueryParameters($parameters));
        $request = $this->addAcceptHeader($request, $responseMediaType);
        $request = $this->addSecurity($request, $security);
        return $this->httpClient->sendRequest($request);
    }

    /**
     * @param \App\DTO\SearchClassesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return array
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     */
    public function searchClasses(
        \App\DTO\SearchClassesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): array
    {
        $response = $this->searchClassesRaw($parameters, $security, $responseMediaType);
        $responseContent = null;
        $contentStrategy = null;
        $contentValidator = null;
        switch ($response->getStatusCode())
        {
            case 200:
                /* Successfully retrieved search result */
                break;
            case 401:
                /* Authentication failed - incorrect username and/or password */
                break;
            case 403:
                /* Jenkins requires authentication - please set username and password */
                break;
        }
        $this->parseBody($response, $responseContent, $contentStrategy, $contentValidator);
        return [$responseContent, $response->getHeaders(), $response->getStatusCode(), $response->getReasonPhrase()];
    }

    /**
     * @param \App\DTO\SearchClassesParameterData $parameters
     * @param iterable<string, string[]> $security
     * @param string $responseMediaType
     * @return string
     * @throws ClientExceptionInterface
     * @throws DT\Exception\InvalidData
     * @throws OAGAC\Exception\InvalidResponseBodySchema
     * @throws OAGAC\Exception\UnsuccessfulResponse
     */
    public function searchClassesResult(
        \App\DTO\SearchClassesParameterData $parameters,
        iterable $security = ['jenkins_auth' => []],
        string $responseMediaType = 'application/json'
    ): string
    {
        return $this->getSuccessfulContent(...$this->searchClasses($parameters, $security, $responseMediaType));
    }
    //endregion
}

