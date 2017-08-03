# Swagger\Server\Api\BlueOceanApiInterface

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](BlueOceanApiInterface.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](BlueOceanApiInterface.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](BlueOceanApiInterface.md#getClasses) | **GET** /blue/rest/classes/{class} | 
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
            - { name: "swagger_server.api", api: "blueOcean" }
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

use Swagger\Server\Api\BlueOceanApiInterface;

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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getAuthenticatedUser**
> Swagger\Server\Model\User getAuthenticatedUser($organization)



Retrieve authenticated user details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\User**](../Model/User.md)

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

use Swagger\Server\Api\BlueOceanApiInterface;

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

## **getOrganisation**
> Swagger\Server\Model\Organisation getOrganisation($organization)



Retrieve organization details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\Organisation**](../Model/Organisation.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getOrganisations**
> Swagger\Server\Model\Organisations getOrganisations()



Retrieve all organizations details

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\Organisations**](../Model/Organisations.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipeline**
> Swagger\Server\Model\Pipeline getPipeline($organization, $pipeline)



Retrieve pipeline details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\Pipeline**](../Model/Pipeline.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineActivities**
> Swagger\Server\Model\PipelineActivities getPipelineActivities($organization, $pipeline)



Retrieve all activities details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineActivities**](../Model/PipelineActivities.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineBranch**
> Swagger\Server\Model\BranchImpl getPipelineBranch($organization, $pipeline, $branch)



Retrieve branch details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\BranchImpl**](../Model/BranchImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineBranchRun**
> Swagger\Server\Model\PipelineRun getPipelineBranchRun($organization, $pipeline, $branch, $run)



Retrieve branch run details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineRun**](../Model/PipelineRun.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineBranches**
> Swagger\Server\Model\MultibranchPipeline getPipelineBranches($organization, $pipeline)



Retrieve all branches details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\MultibranchPipeline**](../Model/MultibranchPipeline.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineFolder**
> Swagger\Server\Model\PipelineFolderImpl getPipelineFolder($organization, $folder)



Retrieve pipeline folder for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineFolderImpl**](../Model/PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineFolderPipeline**
> Swagger\Server\Model\PipelineImpl getPipelineFolderPipeline($organization, $pipeline, $folder)



Retrieve pipeline details for an organization folder

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineImpl**](../Model/PipelineImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineQueue**
> Swagger\Server\Model\PipelineQueue getPipelineQueue($organization, $pipeline)



Retrieve queue details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineQueue**](../Model/PipelineQueue.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRun**
> Swagger\Server\Model\PipelineRun getPipelineRun($organization, $pipeline, $run)



Retrieve run details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineRun**](../Model/PipelineRun.md)

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

use Swagger\Server\Api\BlueOceanApiInterface;

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
> Swagger\Server\Model\PipelineRunNode getPipelineRunNode($organization, $pipeline, $run, $node)



Retrieve run node details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineRunNode**](../Model/PipelineRunNode.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRunNodeStep**
> Swagger\Server\Model\PipelineStepImpl getPipelineRunNodeStep($organization, $pipeline, $run, $node, $step)



Retrieve run node details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineStepImpl**](../Model/PipelineStepImpl.md)

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

use Swagger\Server\Api\BlueOceanApiInterface;

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
> Swagger\Server\Model\PipelineRunNodeSteps getPipelineRunNodeSteps($organization, $pipeline, $run, $node)



Retrieve run node steps details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineRunNodeSteps**](../Model/PipelineRunNodeSteps.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRunNodes**
> Swagger\Server\Model\PipelineRunNodes getPipelineRunNodes($organization, $pipeline, $run)



Retrieve run nodes details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineRunNodes**](../Model/PipelineRunNodes.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelineRuns**
> Swagger\Server\Model\PipelineRuns getPipelineRuns($organization, $pipeline)



Retrieve all runs details for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\PipelineRuns**](../Model/PipelineRuns.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getPipelines**
> Swagger\Server\Model\Pipelines getPipelines($organization)



Retrieve all pipelines details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\Pipelines**](../Model/Pipelines.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getSCM**
> Swagger\Server\Model\GithubScm getSCM($organization, $scm)



Retrieve SCM details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\GithubScm**](../Model/GithubScm.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getSCMOrganisationRepositories**
> Swagger\Server\Model\ScmOrganisations getSCMOrganisationRepositories($organization, $scm, $scm_organisation, $credential_id, $page_size, $page_number)



Retrieve SCM organization repositories details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getSCMOrganisationRepositories
     */
    public function getSCMOrganisationRepositories($organization, $scm, $scm_organisation, $credential_id = null, $page_size = null, $page_number = null)
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
 **scm_organisation** | **string**| Name of the SCM organization |
 **credential_id** | **string**| Credential ID | [optional]
 **page_size** | **int**| Number of items in a page | [optional]
 **page_number** | **int**| Page number | [optional]

### Return type

[**Swagger\Server\Model\ScmOrganisations**](../Model/ScmOrganisations.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getSCMOrganisationRepository**
> Swagger\Server\Model\ScmOrganisations getSCMOrganisationRepository($organization, $scm, $scm_organisation, $repository, $credential_id)



Retrieve SCM organization repository details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getSCMOrganisationRepository
     */
    public function getSCMOrganisationRepository($organization, $scm, $scm_organisation, $repository, $credential_id = null)
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
 **scm_organisation** | **string**| Name of the SCM organization |
 **repository** | **string**| Name of the SCM repository |
 **credential_id** | **string**| Credential ID | [optional]

### Return type

[**Swagger\Server\Model\ScmOrganisations**](../Model/ScmOrganisations.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getSCMOrganisations**
> Swagger\Server\Model\ScmOrganisations getSCMOrganisations($organization, $scm, $credential_id)



Retrieve SCM organizations details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#getSCMOrganisations
     */
    public function getSCMOrganisations($organization, $scm, $credential_id = null)
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
 **credential_id** | **string**| Credential ID | [optional]

### Return type

[**Swagger\Server\Model\ScmOrganisations**](../Model/ScmOrganisations.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getUser**
> Swagger\Server\Model\User getUser($organization, $user)



Retrieve user details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getUserFavorites**
> Swagger\Server\Model\UserFavorites getUserFavorites($user)



Retrieve user favorites details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\UserFavorites**](../Model/UserFavorites.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **getUsers**
> Swagger\Server\Model\User getUsers($organization)



Retrieve users details for an organization

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\User**](../Model/User.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postPipelineRun**
> Swagger\Server\Model\QueueItemImpl postPipelineRun($organization, $pipeline, $run)



Replay an organization pipeline run

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\QueueItemImpl**](../Model/QueueItemImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **postPipelineRuns**
> Swagger\Server\Model\QueueItemImpl postPipelineRuns($organization, $pipeline)



Start a build for an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

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

[**Swagger\Server\Model\QueueItemImpl**](../Model/QueueItemImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **putPipelineFavorite**
> Swagger\Server\Model\FavoriteImpl putPipelineFavorite($organization, $pipeline, $body)



Favorite/unfavorite a pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#putPipelineFavorite
     */
    public function putPipelineFavorite($organization, $pipeline, Body $body)
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
 **body** | [**Swagger\Server\Model\Body**](../Model/Body.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

### Return type

[**Swagger\Server\Model\FavoriteImpl**](../Model/FavoriteImpl.md)

### Authorization

[jenkins_auth](../../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

## **putPipelineRun**
> Swagger\Server\Model\PipelineRun putPipelineRun($organization, $pipeline, $run, $blocking, $time_out_in_secs)



Stop a build of an organization pipeline

### Example Implementation
```php
<?php
// src/Acme/MyBundle/Api/BlueOceanApiInterface.php

namespace Acme\MyBundle\Api;

use Swagger\Server\Api\BlueOceanApiInterface;

class BlueOceanApi implements BlueOceanApiInterface
{

    // ...

    /**
     * Implementation of BlueOceanApiInterface#putPipelineRun
     */
    public function putPipelineRun($organization, $pipeline, $run, $blocking = null, $time_out_in_secs = null)
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
 **time_out_in_secs** | **int**| Timeout in seconds, default: 10 seconds | [optional]

### Return type

[**Swagger\Server\Model\PipelineRun**](../Model/PipelineRun.md)

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

use Swagger\Server\Api\BlueOceanApiInterface;

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

use Swagger\Server\Api\BlueOceanApiInterface;

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

