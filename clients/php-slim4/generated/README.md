# php-base - PHP Slim 4 Server library for Swaggy Jenkins

* [OpenAPI Generator](https://openapi-generator.tech)
* [Slim 4 Documentation](https://www.slimframework.com/docs/v4/)

This server has been generated with [Slim PSR-7](https://github.com/slimphp/Slim-Psr7) implementation.
[PHP-DI](https://php-di.org/doc/frameworks/slim.html) package used as dependency container.

## Requirements

* Web server with URL rewriting
* PHP 7.4 or newer

This package contains `.htaccess` for Apache configuration.
If you use another server(Nginx, HHVM, IIS, lighttpd) check out [Web Servers](https://www.slimframework.com/docs/v3/start/web-servers.html) doc.

## Installation via [Composer](https://getcomposer.org/)

Navigate into your project's root directory and execute the bash command shown below.
This command downloads the Slim Framework and its third-party dependencies into your project's `vendor/` directory.
```bash
$ composer install
```

## Add configs

[PHP-DI package](https://php-di.org/doc/getting-started.html) helps to decouple configuration from implementation. App loads configuration files in straight order(`$env` can be `prod` or `dev`):
1. `config/$env/default.inc.php` (contains safe values, can be committed to vcs)
2. `config/$env/config.inc.php` (user config, excluded from vcs, can contain sensitive values, passwords etc.)
3. `lib/App/RegisterDependencies.php`

## Start devserver

Run the following command in terminal to start localhost web server, assuming `./php-slim-server/public/` is public-accessible directory with `index.php` file:
```bash
$ php -S localhost:8888 -t php-slim-server/public
```
> **Warning** This web server was designed to aid application development.
> It may also be useful for testing purposes or for application demonstrations that are run in controlled environments.
> It is not intended to be a full-featured web server. It should not be used on a public network.

## Tests

### PHPUnit

This package uses PHPUnit 8 or 9(depends from your PHP version) for unit testing.
[Test folder](tests) contains templates which you can fill with real test assertions.
How to write tests read at [2. Writing Tests for PHPUnit - PHPUnit 8.5 Manual](https://phpunit.readthedocs.io/en/8.5/writing-tests-for-phpunit.html).

#### Run

Command | Target
---- | ----
`$ composer test` | All tests
`$ composer test-apis` | Apis tests
`$ composer test-models` | Models tests

#### Config

Package contains fully functional config `./phpunit.xml.dist` file. Create `./phpunit.xml` in root folder to override it.

Quote from [3. The Command-Line Test Runner — PHPUnit 8.5 Manual](https://phpunit.readthedocs.io/en/8.5/textui.html#command-line-options):

> If phpunit.xml or phpunit.xml.dist (in that order) exist in the current working directory and --configuration is not used, the configuration will be automatically read from that file.

### PHP CodeSniffer

[PHP CodeSniffer Documentation](https://github.com/squizlabs/PHP_CodeSniffer/wiki). This tool helps to follow coding style and avoid common PHP coding mistakes.

#### Run

```bash
$ composer phpcs
```

#### Config

Package contains fully functional config `./phpcs.xml.dist` file. It checks source code against PSR-1 and PSR-2 coding standards.
Create `./phpcs.xml` in root folder to override it. More info at [Using a Default Configuration File](https://github.com/squizlabs/PHP_CodeSniffer/wiki/Advanced-Usage#using-a-default-configuration-file)

### PHPLint

[PHPLint Documentation](https://github.com/overtrue/phplint). Checks PHP syntax only.

#### Run

```bash
$ composer phplint
```

## Show errors

Switch your app environment to development in `public/.htaccess` file:
```ini
## .htaccess
<IfModule mod_env.c>
    SetEnv APP_ENV 'development'
</IfModule>
```

## API Endpoints

All URIs are relative to *http://localhost*

> Important! Do not modify abstract API controllers directly! Instead extend them by implementation classes like:

```php
// src/Api/PetApi.php

namespace OpenAPIServer\Api;

use OpenAPIServer\Api\AbstractPetApi;
use Psr\Http\Message\ServerRequestInterface;
use Psr\Http\Message\ResponseInterface;

class PetApi extends AbstractPetApi
{
    public function addPet(
        ServerRequestInterface $request,
        ResponseInterface $response
    ): ResponseInterface {
        // your implementation of addPet method here
    }
}
```

When you need to inject dependencies into API controller check [PHP-DI - Controllers as services](https://github.com/PHP-DI/Slim-Bridge#controllers-as-services) guide.

Place all your implementation classes in `./src` folder accordingly.
For instance, when abstract class located at `./lib/Api/AbstractPetApi.php` you need to create implementation class at `./src/Api/PetApi.php`.

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AbstractBaseApi* | **getCrumb** | **GET** /crumbIssuer/api/json | 
*AbstractBlueOceanApi* | **getJsonWebToken** | **GET** /jwt-auth/token | 
*AbstractBlueOceanApi* | **getOrganisations** | **GET** /blue/rest/organizations/ | 
*AbstractBlueOceanApi* | **search** | **GET** /blue/rest/search/ | 
*AbstractBlueOceanApi* | **searchClasses** | **GET** /blue/rest/classes/ | 
*AbstractBlueOceanApi* | **deletePipelineQueueItem** | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
*AbstractBlueOceanApi* | **getAuthenticatedUser** | **GET** /blue/rest/organizations/{organization}/user/ | 
*AbstractBlueOceanApi* | **getClasses** | **GET** /blue/rest/classes/{class} | 
*AbstractBlueOceanApi* | **getJsonWebKey** | **GET** /jwt-auth/jwks/{key} | 
*AbstractBlueOceanApi* | **getOrganisation** | **GET** /blue/rest/organizations/{organization} | 
*AbstractBlueOceanApi* | **getPipeline** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
*AbstractBlueOceanApi* | **getPipelineActivities** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
*AbstractBlueOceanApi* | **getPipelineBranch** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
*AbstractBlueOceanApi* | **getPipelineBranchRun** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
*AbstractBlueOceanApi* | **getPipelineBranches** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
*AbstractBlueOceanApi* | **getPipelineFolder** | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
*AbstractBlueOceanApi* | **getPipelineFolderPipeline** | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
*AbstractBlueOceanApi* | **getPipelineQueue** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
*AbstractBlueOceanApi* | **getPipelineRun** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
*AbstractBlueOceanApi* | **getPipelineRunLog** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
*AbstractBlueOceanApi* | **getPipelineRunNode** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
*AbstractBlueOceanApi* | **getPipelineRunNodeStep** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
*AbstractBlueOceanApi* | **getPipelineRunNodeStepLog** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
*AbstractBlueOceanApi* | **getPipelineRunNodeSteps** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
*AbstractBlueOceanApi* | **getPipelineRunNodes** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
*AbstractBlueOceanApi* | **getPipelineRuns** | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*AbstractBlueOceanApi* | **getPipelines** | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
*AbstractBlueOceanApi* | **getSCM** | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
*AbstractBlueOceanApi* | **getSCMOrganisationRepositories** | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
*AbstractBlueOceanApi* | **getSCMOrganisationRepository** | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
*AbstractBlueOceanApi* | **getSCMOrganisations** | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
*AbstractBlueOceanApi* | **getUser** | **GET** /blue/rest/organizations/{organization}/users/{user} | 
*AbstractBlueOceanApi* | **getUserFavorites** | **GET** /blue/rest/users/{user}/favorites | 
*AbstractBlueOceanApi* | **getUsers** | **GET** /blue/rest/organizations/{organization}/users/ | 
*AbstractBlueOceanApi* | **postPipelineRun** | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
*AbstractBlueOceanApi* | **postPipelineRuns** | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
*AbstractBlueOceanApi* | **putPipelineFavorite** | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
*AbstractBlueOceanApi* | **putPipelineRun** | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
*AbstractRemoteAccessApi* | **getComputer** | **GET** /computer/api/json | 
*AbstractRemoteAccessApi* | **getJenkins** | **GET** /api/json | 
*AbstractRemoteAccessApi* | **getQueue** | **GET** /queue/api/json | 
*AbstractRemoteAccessApi* | **headJenkins** | **HEAD** /api/json | 
*AbstractRemoteAccessApi* | **postCreateItem** | **POST** /createItem | 
*AbstractRemoteAccessApi* | **postCreateView** | **POST** /createView | 
*AbstractRemoteAccessApi* | **getJob** | **GET** /job/{name}/api/json | 
*AbstractRemoteAccessApi* | **getJobConfig** | **GET** /job/{name}/config.xml | 
*AbstractRemoteAccessApi* | **getJobLastBuild** | **GET** /job/{name}/lastBuild/api/json | 
*AbstractRemoteAccessApi* | **getJobProgressiveText** | **GET** /job/{name}/{number}/logText/progressiveText | 
*AbstractRemoteAccessApi* | **getQueueItem** | **GET** /queue/item/{number}/api/json | 
*AbstractRemoteAccessApi* | **getView** | **GET** /view/{name}/api/json | 
*AbstractRemoteAccessApi* | **getViewConfig** | **GET** /view/{name}/config.xml | 
*AbstractRemoteAccessApi* | **postJobBuild** | **POST** /job/{name}/build | 
*AbstractRemoteAccessApi* | **postJobConfig** | **POST** /job/{name}/config.xml | 
*AbstractRemoteAccessApi* | **postJobDelete** | **POST** /job/{name}/doDelete | 
*AbstractRemoteAccessApi* | **postJobDisable** | **POST** /job/{name}/disable | 
*AbstractRemoteAccessApi* | **postJobEnable** | **POST** /job/{name}/enable | 
*AbstractRemoteAccessApi* | **postJobLastBuildStop** | **POST** /job/{name}/lastBuild/stop | 
*AbstractRemoteAccessApi* | **postViewConfig** | **POST** /view/{name}/config.xml | 


## Models

* OpenAPIServer\Model\AllView
* OpenAPIServer\Model\BranchImpl
* OpenAPIServer\Model\BranchImpllinks
* OpenAPIServer\Model\BranchImplpermissions
* OpenAPIServer\Model\CauseAction
* OpenAPIServer\Model\CauseUserIdCause
* OpenAPIServer\Model\ClassesByClass
* OpenAPIServer\Model\ClockDifference
* OpenAPIServer\Model\ComputerSet
* OpenAPIServer\Model\DefaultCrumbIssuer
* OpenAPIServer\Model\DiskSpaceMonitorDescriptorDiskSpace
* OpenAPIServer\Model\EmptyChangeLogSet
* OpenAPIServer\Model\ExtensionClassContainerImpl1
* OpenAPIServer\Model\ExtensionClassContainerImpl1links
* OpenAPIServer\Model\ExtensionClassContainerImpl1map
* OpenAPIServer\Model\ExtensionClassImpl
* OpenAPIServer\Model\ExtensionClassImpllinks
* OpenAPIServer\Model\FavoriteImpl
* OpenAPIServer\Model\FavoriteImpllinks
* OpenAPIServer\Model\FreeStyleBuild
* OpenAPIServer\Model\FreeStyleProject
* OpenAPIServer\Model\FreeStyleProjectactions
* OpenAPIServer\Model\FreeStyleProjecthealthReport
* OpenAPIServer\Model\GenericResource
* OpenAPIServer\Model\GithubContent
* OpenAPIServer\Model\GithubFile
* OpenAPIServer\Model\GithubOrganization
* OpenAPIServer\Model\GithubOrganizationlinks
* OpenAPIServer\Model\GithubRepositories
* OpenAPIServer\Model\GithubRepositorieslinks
* OpenAPIServer\Model\GithubRepository
* OpenAPIServer\Model\GithubRepositorylinks
* OpenAPIServer\Model\GithubRepositorypermissions
* OpenAPIServer\Model\GithubRespositoryContainer
* OpenAPIServer\Model\GithubRespositoryContainerlinks
* OpenAPIServer\Model\GithubScm
* OpenAPIServer\Model\GithubScmlinks
* OpenAPIServer\Model\Hudson
* OpenAPIServer\Model\HudsonMasterComputer
* OpenAPIServer\Model\HudsonMasterComputerexecutors
* OpenAPIServer\Model\HudsonMasterComputermonitorData
* OpenAPIServer\Model\HudsonassignedLabels
* OpenAPIServer\Model\InputStepImpl
* OpenAPIServer\Model\InputStepImpllinks
* OpenAPIServer\Model\Label1
* OpenAPIServer\Model\Link
* OpenAPIServer\Model\ListView
* OpenAPIServer\Model\MultibranchPipeline
* OpenAPIServer\Model\NullSCM
* OpenAPIServer\Model\Organisation
* OpenAPIServer\Model\Pipeline
* OpenAPIServer\Model\PipelineActivity
* OpenAPIServer\Model\PipelineActivityartifacts
* OpenAPIServer\Model\PipelineBranchesitem
* OpenAPIServer\Model\PipelineBranchesitemlatestRun
* OpenAPIServer\Model\PipelineBranchesitempullRequest
* OpenAPIServer\Model\PipelineBranchesitempullRequestlinks
* OpenAPIServer\Model\PipelineFolderImpl
* OpenAPIServer\Model\PipelineImpl
* OpenAPIServer\Model\PipelineImpllinks
* OpenAPIServer\Model\PipelineRun
* OpenAPIServer\Model\PipelineRunImpl
* OpenAPIServer\Model\PipelineRunImpllinks
* OpenAPIServer\Model\PipelineRunNode
* OpenAPIServer\Model\PipelineRunNodeedges
* OpenAPIServer\Model\PipelineRunartifacts
* OpenAPIServer\Model\PipelineStepImpl
* OpenAPIServer\Model\PipelineStepImpllinks
* OpenAPIServer\Model\PipelinelatestRun
* OpenAPIServer\Model\PipelinelatestRunartifacts
* OpenAPIServer\Model\Queue
* OpenAPIServer\Model\QueueBlockedItem
* OpenAPIServer\Model\QueueItemImpl
* OpenAPIServer\Model\QueueLeftItem
* OpenAPIServer\Model\ResponseTimeMonitorData
* OpenAPIServer\Model\StringParameterDefinition
* OpenAPIServer\Model\StringParameterValue
* OpenAPIServer\Model\SwapSpaceMonitorMemoryUsage2
* OpenAPIServer\Model\UnlabeledLoadStatistics
* OpenAPIServer\Model\User


## Authentication

### Security schema `jenkins_auth`
> Important! To make Basic authentication work you need to extend [\OpenAPIServer\Auth\AbstractAuthenticator](./lib/Auth/AbstractAuthenticator.php) class by [\OpenAPIServer\Auth\BasicAuthenticator](./src/Auth/BasicAuthenticator.php) class.

### Security schema `jwt_auth`
> Important! To make ApiKey authentication work you need to extend [\OpenAPIServer\Auth\AbstractAuthenticator](./lib/Auth/AbstractAuthenticator.php) class by [\OpenAPIServer\Auth\ApiKeyAuthenticator](./src/Auth/ApiKeyAuthenticator.php) class.

### Advanced middleware configuration
Ref to used Slim Token Middleware [dyorg/slim-token-authentication](https://github.com/dyorg/slim-token-authentication/tree/1.x#readme)
