package org.openapitools.api;

import org.openapitools.api.ApiUtils
import org.openapitools.model.ComputerSet
import org.openapitools.model.FreeStyleBuild
import org.openapitools.model.FreeStyleProject
import org.openapitools.model.Hudson
import org.openapitools.model.ListView
import org.openapitools.model.Queue

class RemoteAccessApi {
    String basePath = "http://localhost"
    String versionPath = ""
    ApiUtils apiUtils = new ApiUtils();

    def getComputer ( Integer depth, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/computer/api/json"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (depth == null) {
            throw new RuntimeException("missing required params depth")
        }

        if (depth != null) {
            queryParams.put("depth", depth)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ComputerSet.class )

    }

    def getJenkins ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/json"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Hudson.class )

    }

    def getJob ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/job/${name}/api/json"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    FreeStyleProject.class )

    }

    def getJobConfig ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/job/${name}/config.xml"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

    def getJobLastBuild ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/job/${name}/lastBuild/api/json"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    FreeStyleBuild.class )

    }

    def getJobProgressiveText ( String name, String number, String start, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/job/${name}/${number}/logText/progressiveText"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (number == null) {
            throw new RuntimeException("missing required params number")
        }
        // verify required params are set
        if (start == null) {
            throw new RuntimeException("missing required params start")
        }

        if (start != null) {
            queryParams.put("start", start)
        }




        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    null )

    }

    def getQueue ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/queue/api/json"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Queue.class )

    }

    def getQueueItem ( String number, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/queue/item/${number}/api/json"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (number == null) {
            throw new RuntimeException("missing required params number")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    Queue.class )

    }

    def getView ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/view/${name}/api/json"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    ListView.class )

    }

    def getViewConfig ( String name, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/view/${name}/config.xml"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }





        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "GET", "",
                    String.class )

    }

    def headJenkins ( Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/api/json"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType






        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "HEAD", "",
                    null )

    }

    def postCreateItem ( String name, String from, String mode, String jenkinsCrumb, String contentType, String body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/createItem"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        if (name != null) {
            queryParams.put("name", name)
        }
        if (from != null) {
            queryParams.put("from", from)
        }
        if (mode != null) {
            queryParams.put("mode", mode)
        }

        if (jenkinsCrumb != null) {
            headerParams.put("Jenkins-Crumb", jenkinsCrumb)
        }
        if (contentType != null) {
            headerParams.put("Content-Type", contentType)
        }

        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def postCreateView ( String name, String jenkinsCrumb, String contentType, String body, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/createView"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }

        if (name != null) {
            queryParams.put("name", name)
        }

        if (jenkinsCrumb != null) {
            headerParams.put("Jenkins-Crumb", jenkinsCrumb)
        }
        if (contentType != null) {
            headerParams.put("Content-Type", contentType)
        }

        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def postJobBuild ( String name, String json, String token, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/job/${name}/build"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (json == null) {
            throw new RuntimeException("missing required params json")
        }

        if (json != null) {
            queryParams.put("json", json)
        }
        if (token != null) {
            queryParams.put("token", token)
        }

        if (jenkinsCrumb != null) {
            headerParams.put("Jenkins-Crumb", jenkinsCrumb)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def postJobConfig ( String name, String body, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/job/${name}/config.xml"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }


        if (jenkinsCrumb != null) {
            headerParams.put("Jenkins-Crumb", jenkinsCrumb)
        }

        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def postJobDelete ( String name, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/job/${name}/doDelete"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }


        if (jenkinsCrumb != null) {
            headerParams.put("Jenkins-Crumb", jenkinsCrumb)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def postJobDisable ( String name, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/job/${name}/disable"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }


        if (jenkinsCrumb != null) {
            headerParams.put("Jenkins-Crumb", jenkinsCrumb)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def postJobEnable ( String name, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/job/${name}/enable"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }


        if (jenkinsCrumb != null) {
            headerParams.put("Jenkins-Crumb", jenkinsCrumb)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def postJobLastBuildStop ( String name, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/job/${name}/lastBuild/stop"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }


        if (jenkinsCrumb != null) {
            headerParams.put("Jenkins-Crumb", jenkinsCrumb)
        }



        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

    def postViewConfig ( String name, String body, String jenkinsCrumb, Closure onSuccess, Closure onFailure)  {
        String resourcePath = "/view/${name}/config.xml"

        // params
        def queryParams = [:]
        def headerParams = [:]
        def bodyParams
        def contentType

        // verify required params are set
        if (name == null) {
            throw new RuntimeException("missing required params name")
        }
        // verify required params are set
        if (body == null) {
            throw new RuntimeException("missing required params body")
        }


        if (jenkinsCrumb != null) {
            headerParams.put("Jenkins-Crumb", jenkinsCrumb)
        }

        contentType = 'application/json';
        bodyParams = body


        apiUtils.invokeApi(onSuccess, onFailure, basePath, versionPath, resourcePath, queryParams, headerParams, bodyParams, contentType,
                    "POST", "",
                    null )

    }

}
