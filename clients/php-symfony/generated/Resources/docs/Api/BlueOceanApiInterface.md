# OpenAPI\Server\Api\BlueOceanApiInterface

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](BlueOceanApiInterface.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](BlueOceanApiInterface.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](BlueOceanApiInterface.md#getClasses) | **GET** /blue/rest/classes/{class} | 
[**getJsonWebKey**](BlueOceanApiInterface.md#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
[**getJsonWebToken**](BlueOceanApiInterface.md#getJsonWebToken) | **GET** /jwt-auth/token | 
[**getOrganisation**](BlueOceanApiInterface.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](BlueOceanApiInterface.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](BlueOceanApiInterface.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](BlueOceanApiInterface.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](BlueOceanApiInterface.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](BlueOceanApiInterface.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](BlueOceanApiInterface.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](BlueOceanApiInterface.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](BlueOceanApiInterface.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](BlueOceanApiInterface.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](BlueOceanApiInterface.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](BlueOceanApiInterface.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](BlueOceanApiInterface.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](BlueOceanApiInterface.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](BlueOceanApiInterface.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](BlueOceanApiInterface.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](BlueOceanApiInterface.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](BlueOceanApiInterface.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](BlueOceanApiInterface.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](BlueOceanApiInterface.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](BlueOceanApiInterface.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](BlueOceanApiInterface.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](BlueOceanApiInterface.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](BlueOceanApiInterface.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](BlueOceanApiInterface.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](BlueOceanApiInterface.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](BlueOceanApiInterface.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](BlueOceanApiInterface.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](BlueOceanApiInterface.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](BlueOceanApiInterface.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApiInterface.md#search) | **GET** /blue/rest/search/ | 
[**searchClasses**](BlueOceanApiInterface.md#searchClasses) | **GET** /blue/rest/classes/ | 


## Service Declaration
```yaml
# src/Acme/MyBundle/Resources/services.yml
services:
    # ...
    acme.my_bundle.api.blueOcean:
        class: Acme\MyBundle\Api\BlueOceanApi
        tags:
            - { name: "open_api_server.api", api: "blueOcean" }
    # ...
```

## **deletePipelineQueueItem**
> deletePipelineQueueItem($organization, $pipeline, $queue)



Delete queue item from an organization pipeline queue

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#deletePipelineQueueItem
     */
    public function deletePipelineQueueItem($organization, $pipeline, $queue)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **queue** | **string**| Name of the queue item |

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getAuthenticatedUser**
> OpenAPI\Server\Model\User getAuthenticatedUser($organization)



Retrieve authenticated user details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getAuthenticatedUser
     */
    public function getAuthenticatedUser($organization)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |

### Return type

[**OpenAPI\Server\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getClasses**
> string getClasses($class)



Get a list of class names supported by a given class

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getClasses
     */
    public function getClasses($class)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **string**| Name of the class |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getJsonWebKey**
> string getJsonWebKey($key)



Retrieve JSON Web Key

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getJsonWebKey
     */
    public function getJsonWebKey($key)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **int**| Key ID received as part of JWT header field kid |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getJsonWebToken**
> string getJsonWebToken($expiryTimeInMins, $maxExpiryTimeInMins)



Retrieve JSON Web Token

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getJsonWebToken
     */
    public function getJsonWebToken($expiryTimeInMins = null, $maxExpiryTimeInMins = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | **int**| Token expiry time in minutes, default: 30 minutes | [optional]
 **maxExpiryTimeInMins** | **int**| Maximum token expiry time in minutes, default: 480 minutes | [optional]

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getOrganisation**
> OpenAPI\Server\Model\Organisation getOrganisation($organization)



Retrieve organization details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getOrganisation
     */
    public function getOrganisation($organization)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |

### Return type

[**OpenAPI\Server\Model\Organisation**](../Model/Organisation.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getOrganisations**
> OpenAPI\Server\Model\Organisation getOrganisations()



Retrieve all organizations details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getOrganisations
     */
    public function getOrganisations()
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OpenAPI\Server\Model\Organisation**](../Model/Organisation.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipeline**
> OpenAPI\Server\Model\Pipeline getPipeline($organization, $pipeline)



Retrieve pipeline details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipeline
     */
    public function getPipeline($organization, $pipeline)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**OpenAPI\Server\Model\Pipeline**](../Model/Pipeline.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineActivities**
> OpenAPI\Server\Model\PipelineActivity getPipelineActivities($organization, $pipeline)



Retrieve all activities details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineActivities
     */
    public function getPipelineActivities($organization, $pipeline)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**OpenAPI\Server\Model\PipelineActivity**](../Model/PipelineActivity.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineBranch**
> OpenAPI\Server\Model\BranchImpl getPipelineBranch($organization, $pipeline, $branch)



Retrieve branch details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineBranch
     */
    public function getPipelineBranch($organization, $pipeline, $branch)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **branch** | **string**| Name of the branch |

### Return type

[**OpenAPI\Server\Model\BranchImpl**](../Model/BranchImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineBranchRun**
> OpenAPI\Server\Model\PipelineRun getPipelineBranchRun($organization, $pipeline, $branch, $run)



Retrieve branch run details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineBranchRun
     */
    public function getPipelineBranchRun($organization, $pipeline, $branch, $run)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **branch** | **string**| Name of the branch |
 **run** | **string**| Name of the run |

### Return type

[**OpenAPI\Server\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineBranches**
> OpenAPI\Server\Model\MultibranchPipeline getPipelineBranches($organization, $pipeline)



Retrieve all branches details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineBranches
     */
    public function getPipelineBranches($organization, $pipeline)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**OpenAPI\Server\Model\MultibranchPipeline**](../Model/MultibranchPipeline.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineFolder**
> OpenAPI\Server\Model\PipelineFolderImpl getPipelineFolder($organization, $folder)



Retrieve pipeline folder for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineFolder
     */
    public function getPipelineFolder($organization, $folder)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **folder** | **string**| Name of the folder |

### Return type

[**OpenAPI\Server\Model\PipelineFolderImpl**](../Model/PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineFolderPipeline**
> OpenAPI\Server\Model\PipelineImpl getPipelineFolderPipeline($organization, $pipeline, $folder)



Retrieve pipeline details for an organization folder

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineFolderPipeline
     */
    public function getPipelineFolderPipeline($organization, $pipeline, $folder)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **folder** | **string**| Name of the folder |

### Return type

[**OpenAPI\Server\Model\PipelineImpl**](../Model/PipelineImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineQueue**
> OpenAPI\Server\Model\QueueItemImpl getPipelineQueue($organization, $pipeline)



Retrieve queue details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineQueue
     */
    public function getPipelineQueue($organization, $pipeline)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**OpenAPI\Server\Model\QueueItemImpl**](../Model/QueueItemImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRun**
> OpenAPI\Server\Model\PipelineRun getPipelineRun($organization, $pipeline, $run)



Retrieve run details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineRun
     */
    public function getPipelineRun($organization, $pipeline, $run)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |

### Return type

[**OpenAPI\Server\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRunLog**
> string getPipelineRunLog($organization, $pipeline, $run, $start, $download)



Get log for a pipeline run

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineRunLog
     */
    public function getPipelineRunLog($organization, $pipeline, $run, $start = null, $download = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **start** | **int**| Start position of the log | [optional]
 **download** | **bool**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional]

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRunNode**
> OpenAPI\Server\Model\PipelineRunNode getPipelineRunNode($organization, $pipeline, $run, $node)



Retrieve run node details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineRunNode
     */
    public function getPipelineRunNode($organization, $pipeline, $run, $node)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **node** | **string**| Name of the node |

### Return type

[**OpenAPI\Server\Model\PipelineRunNode**](../Model/PipelineRunNode.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRunNodeStep**
> OpenAPI\Server\Model\PipelineStepImpl getPipelineRunNodeStep($organization, $pipeline, $run, $node, $step)



Retrieve run node details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineRunNodeStep
     */
    public function getPipelineRunNodeStep($organization, $pipeline, $run, $node, $step)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **node** | **string**| Name of the node |
 **step** | **string**| Name of the step |

### Return type

[**OpenAPI\Server\Model\PipelineStepImpl**](../Model/PipelineStepImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRunNodeStepLog**
> string getPipelineRunNodeStepLog($organization, $pipeline, $run, $node, $step)



Get log for a pipeline run node step

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineRunNodeStepLog
     */
    public function getPipelineRunNodeStepLog($organization, $pipeline, $run, $node, $step)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **node** | **string**| Name of the node |
 **step** | **string**| Name of the step |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRunNodeSteps**
> OpenAPI\Server\Model\PipelineStepImpl getPipelineRunNodeSteps($organization, $pipeline, $run, $node)



Retrieve run node steps details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineRunNodeSteps
     */
    public function getPipelineRunNodeSteps($organization, $pipeline, $run, $node)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **node** | **string**| Name of the node |

### Return type

[**OpenAPI\Server\Model\PipelineStepImpl**](../Model/PipelineStepImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRunNodes**
> OpenAPI\Server\Model\PipelineRunNode getPipelineRunNodes($organization, $pipeline, $run)



Retrieve run nodes details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineRunNodes
     */
    public function getPipelineRunNodes($organization, $pipeline, $run)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |

### Return type

[**OpenAPI\Server\Model\PipelineRunNode**](../Model/PipelineRunNode.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRuns**
> OpenAPI\Server\Model\PipelineRun getPipelineRuns($organization, $pipeline)



Retrieve all runs details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelineRuns
     */
    public function getPipelineRuns($organization, $pipeline)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**OpenAPI\Server\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelines**
> OpenAPI\Server\Model\Pipeline getPipelines($organization)



Retrieve all pipelines details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getPipelines
     */
    public function getPipelines($organization)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |

### Return type

[**OpenAPI\Server\Model\Pipeline**](../Model/Pipeline.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getSCM**
> OpenAPI\Server\Model\GithubScm getSCM($organization, $scm)



Retrieve SCM details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getSCM
     */
    public function getSCM($organization, $scm)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **scm** | **string**| Name of SCM |

### Return type

[**OpenAPI\Server\Model\GithubScm**](../Model/GithubScm.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getSCMOrganisationRepositories**
> OpenAPI\Server\Model\GithubOrganization getSCMOrganisationRepositories($organization, $scm, $scmOrganisation, $credentialId, $pageSize, $pageNumber)



Retrieve SCM organization repositories details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getSCMOrganisationRepositories
     */
    public function getSCMOrganisationRepositories($organization, $scm, $scmOrganisation, $credentialId = null, $pageSize = null, $pageNumber = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **scm** | **string**| Name of SCM |
 **scmOrganisation** | **string**| Name of the SCM organization |
 **credentialId** | **string**| Credential ID | [optional]
 **pageSize** | **int**| Number of items in a page | [optional]
 **pageNumber** | **int**| Page number | [optional]

### Return type

[**OpenAPI\Server\Model\GithubOrganization**](../Model/GithubOrganization.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getSCMOrganisationRepository**
> OpenAPI\Server\Model\GithubOrganization getSCMOrganisationRepository($organization, $scm, $scmOrganisation, $repository, $credentialId)



Retrieve SCM organization repository details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getSCMOrganisationRepository
     */
    public function getSCMOrganisationRepository($organization, $scm, $scmOrganisation, $repository, $credentialId = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **scm** | **string**| Name of SCM |
 **scmOrganisation** | **string**| Name of the SCM organization |
 **repository** | **string**| Name of the SCM repository |
 **credentialId** | **string**| Credential ID | [optional]

### Return type

[**OpenAPI\Server\Model\GithubOrganization**](../Model/GithubOrganization.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getSCMOrganisations**
> OpenAPI\Server\Model\GithubOrganization getSCMOrganisations($organization, $scm, $credentialId)



Retrieve SCM organizations details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getSCMOrganisations
     */
    public function getSCMOrganisations($organization, $scm, $credentialId = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **scm** | **string**| Name of SCM |
 **credentialId** | **string**| Credential ID | [optional]

### Return type

[**OpenAPI\Server\Model\GithubOrganization**](../Model/GithubOrganization.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getUser**
> OpenAPI\Server\Model\User getUser($organization, $user)



Retrieve user details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getUser
     */
    public function getUser($organization, $user)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **user** | **string**| Name of the user |

### Return type

[**OpenAPI\Server\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getUserFavorites**
> OpenAPI\Server\Model\FavoriteImpl getUserFavorites($user)



Retrieve user favorites details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getUserFavorites
     */
    public function getUserFavorites($user)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **string**| Name of the user |

### Return type

[**OpenAPI\Server\Model\FavoriteImpl**](../Model/FavoriteImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getUsers**
> OpenAPI\Server\Model\User getUsers($organization)



Retrieve users details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getUsers
     */
    public function getUsers($organization)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |

### Return type

[**OpenAPI\Server\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postPipelineRun**
> OpenAPI\Server\Model\QueueItemImpl postPipelineRun($organization, $pipeline, $run)



Replay an organization pipeline run

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#postPipelineRun
     */
    public function postPipelineRun($organization, $pipeline, $run)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |

### Return type

[**OpenAPI\Server\Model\QueueItemImpl**](../Model/QueueItemImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postPipelineRuns**
> OpenAPI\Server\Model\QueueItemImpl postPipelineRuns($organization, $pipeline)



Start a build for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#postPipelineRuns
     */
    public function postPipelineRuns($organization, $pipeline)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |

### Return type

[**OpenAPI\Server\Model\QueueItemImpl**](../Model/QueueItemImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **putPipelineFavorite**
> OpenAPI\Server\Model\FavoriteImpl putPipelineFavorite($organization, $pipeline, $uNKNOWNBASETYPE)



Favorite/unfavorite a pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#putPipelineFavorite
     */
    public function putPipelineFavorite($organization, $pipeline, UNKNOWN_BASE_TYPE $uNKNOWNBASETYPE)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **uNKNOWNBASETYPE** | [**OpenAPI\Server\Model\UNKNOWN_BASE_TYPE**](../Model/UNKNOWN_BASE_TYPE.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

### Return type

[**OpenAPI\Server\Model\FavoriteImpl**](../Model/FavoriteImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **putPipelineRun**
> OpenAPI\Server\Model\PipelineRun putPipelineRun($organization, $pipeline, $run, $blocking, $timeOutInSecs)



Stop a build of an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#putPipelineRun
     */
    public function putPipelineRun($organization, $pipeline, $run, $blocking = null, $timeOutInSecs = null)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization |
 **pipeline** | **string**| Name of the pipeline |
 **run** | **string**| Name of the run |
 **blocking** | **string**| Set to true to make blocking stop, default: false | [optional]
 **timeOutInSecs** | **int**| Timeout in seconds, default: 10 seconds | [optional]

### Return type

[**OpenAPI\Server\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **search**
> string search($q)



Search for any resource details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#search
     */
    public function search($q)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **searchClasses**
> string searchClasses($q)



Get classes details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use OpenAPI\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#searchClasses
     */
    public function searchClasses($q)
    {
        // Implement the operation ...
    }

    // ...
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string**| Query string containing an array of class names |

### Return type

**string**

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

