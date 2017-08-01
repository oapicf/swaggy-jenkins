@isTest
private class SwagRemoteAccessApiTest {
    /**
     * 
     *
     * Retrieve computer details
     */
    @isTest
    private static void getComputerTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        SwagClient client;
        SwagRemoteAccessApi api;
        SwagHudsonmodelComputerSet response;
        SwagHudsonmodelComputerSet expectedResponse;

        api = new SwagRemoteAccessApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "busyExecutors" : 0,\n  "totalExecutors" : 4,\n  "computer" : [ {\n    "idle" : true,\n    "displayName" : "aeiou",\n    "jnlpAgent" : true,\n    "launchSupported" : true,\n    "icon" : "aeiou",\n    "iconClassName" : "aeiou",\n    "offlineCause" : "aeiou",\n    "temporarilyOffline" : true,\n    "numExecutors" : 1,\n    "offline" : true,\n    "executors" : [ {\n      "currentExecutable" : {\n        "queueId" : 5,\n        "displayName" : "aeiou",\n        "keepLog" : true,\n        "description" : "aeiou",\n        "fullDisplayName" : "aeiou",\n        "estimatedDuration" : 5,\n        "url" : "aeiou",\n        "building" : true,\n        "changeSet" : {\n          "kind" : "aeiou",\n          "_class" : "aeiou"\n        },\n        "duration" : 1,\n        "result" : "aeiou",\n        "number" : 6,\n        "executor" : "aeiou",\n        "builtOn" : "aeiou",\n        "_class" : "aeiou",\n        "id" : "aeiou",\n        "actions" : [ {\n          "causes" : [ {\n            "_class" : "aeiou",\n            "shortDescription" : "aeiou",\n            "userName" : "aeiou",\n            "userId" : "aeiou"\n          } ],\n          "_class" : "aeiou"\n        } ],\n        "timestamp" : 2\n      },\n      "number" : 7,\n      "idle" : true,\n      "likelyStuck" : true,\n      "progress" : 9,\n      "_class" : "aeiou"\n    } ],\n    "monitorData" : {\n      "hudson.node_monitors.SwapSpaceMonitor" : {\n        "totalSwapSpace" : 7,\n        "availableSwapSpace" : 2,\n        "_class" : "aeiou",\n        "availablePhysicalMemory" : 3,\n        "totalPhysicalMemory" : 4\n      },\n      "hudson.node_monitors.TemporarySpaceMonitor" : {\n        "path" : "aeiou",\n        "size" : 1,\n        "_class" : "aeiou",\n        "timestamp" : 1\n      },\n      "hudson.node_monitors.DiskSpaceMonitor" : "",\n      "hudson.node_monitors.ArchitectureMonitor" : "aeiou",\n      "_class" : "aeiou",\n      "hudson.node_monitors.ResponseTimeMonitor" : {\n        "average" : 6,\n        "_class" : "aeiou",\n        "timestamp" : 1\n      },\n      "hudson.node_monitors.ClockMonitor" : {\n        "diff" : 7,\n        "_class" : "aeiou"\n      }\n    },\n    "_class" : "aeiou",\n    "loadStatistics" : {\n      "_class" : "aeiou"\n    },\n    "manualLaunchAllowed" : true,\n    "offlineCauseReason" : "aeiou"\n  } ],\n  "displayName" : "aeiou",\n  "_class" : "aeiou"\n}');
        expectedResponse = SwagHudsonmodelComputerSet.getExample();
        response = (SwagHudsonmodelComputerSet) api.getComputer();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve CSRF protection token
     */
    @isTest
    private static void getCrumbTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        SwagClient client;
        SwagRemoteAccessApi api;
        SwagHudsonsecuritycsrfDefaultCrumbIs response;
        SwagHudsonsecuritycsrfDefaultCrumbIs expectedResponse;

        api = new SwagRemoteAccessApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "crumb" : "aeiou",\n  "_class" : "aeiou",\n  "crumbRequestField" : "aeiou"\n}');
        expectedResponse = SwagHudsonsecuritycsrfDefaultCrumbIs.getExample();
        response = (SwagHudsonsecuritycsrfDefaultCrumbIs) api.getCrumb();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve Jenkins details
     */
    @isTest
    private static void getJenkinsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        SwagClient client;
        SwagRemoteAccessApi api;
        SwagHudsonmodelHudson response;
        SwagHudsonmodelHudson expectedResponse;

        api = new SwagRemoteAccessApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "nodeName" : "aeiou",\n  "assignedLabels" : [ {\n    "_class" : "aeiou"\n  } ],\n  "jobs" : [ {\n    "color" : "aeiou",\n    "displayName" : "aeiou",\n    "lastSuccessfulBuild" : "",\n    "description" : "aeiou",\n    "fullDisplayName" : "aeiou",\n    "lastUnstableBuild" : "aeiou",\n    "queueItem" : "aeiou",\n    "buildable" : true,\n    "firstBuild" : "",\n    "lastFailedBuild" : "aeiou",\n    "lastBuild" : "",\n    "nextBuildNumber" : 9,\n    "builds" : [ {\n      "queueId" : 5,\n      "displayName" : "aeiou",\n      "keepLog" : true,\n      "description" : "aeiou",\n      "fullDisplayName" : "aeiou",\n      "estimatedDuration" : 5,\n      "url" : "aeiou",\n      "building" : true,\n      "changeSet" : {\n        "kind" : "aeiou",\n        "_class" : "aeiou"\n      },\n      "duration" : 1,\n      "result" : "aeiou",\n      "number" : 6,\n      "executor" : "aeiou",\n      "builtOn" : "aeiou",\n      "_class" : "aeiou",\n      "id" : "aeiou",\n      "actions" : [ {\n        "causes" : [ {\n          "_class" : "aeiou",\n          "shortDescription" : "aeiou",\n          "userName" : "aeiou",\n          "userId" : "aeiou"\n        } ],\n        "_class" : "aeiou"\n      } ],\n      "timestamp" : 2\n    } ],\n    "scm" : {\n      "_class" : "aeiou"\n    },\n    "keepDependencies" : true,\n    "displayNameOrNull" : "aeiou",\n    "inQueue" : true,\n    "lastCompletedBuild" : "",\n    "fullName" : "aeiou",\n    "healthReport" : [ {\n      "score" : 7,\n      "description" : "aeiou",\n      "iconClassName" : "aeiou",\n      "iconUrl" : "aeiou",\n      "_class" : "aeiou"\n    } ],\n    "lastStableBuild" : "",\n    "lastUnsuccessfulBuild" : "aeiou",\n    "url" : "aeiou",\n    "concurrentBuild" : true,\n    "name" : "aeiou",\n    "_class" : "aeiou",\n    "actions" : [ {\n      "_class" : "aeiou"\n    } ]\n  } ],\n  "slaveAgentPort" : 3,\n  "description" : "aeiou",\n  "useCrumbs" : true,\n  "nodeDescription" : "aeiou",\n  "primaryView" : {\n    "name" : "aeiou",\n    "_class" : "aeiou",\n    "url" : "aeiou"\n  },\n  "unlabeledLoad" : {\n    "_class" : "aeiou"\n  },\n  "mode" : "aeiou",\n  "numExecutors" : 0,\n  "quietingDown" : true,\n  "useSecurity" : true,\n  "_class" : "aeiou",\n  "views" : [ "" ]\n}');
        expectedResponse = SwagHudsonmodelHudson.getExample();
        response = (SwagHudsonmodelHudson) api.getJenkins();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve job details
     */
    @isTest
    private static void getJobTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;
        SwagHudsonmodelFreeStyleProject response;
        SwagHudsonmodelFreeStyleProject expectedResponse;

        api = new SwagRemoteAccessApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "color" : "aeiou",\n  "displayName" : "aeiou",\n  "lastSuccessfulBuild" : "",\n  "description" : "aeiou",\n  "fullDisplayName" : "aeiou",\n  "lastUnstableBuild" : "aeiou",\n  "queueItem" : "aeiou",\n  "buildable" : true,\n  "firstBuild" : "",\n  "lastFailedBuild" : "aeiou",\n  "lastBuild" : "",\n  "nextBuildNumber" : 7,\n  "builds" : [ {\n    "queueId" : 5,\n    "displayName" : "aeiou",\n    "keepLog" : true,\n    "description" : "aeiou",\n    "fullDisplayName" : "aeiou",\n    "estimatedDuration" : 1,\n    "url" : "aeiou",\n    "building" : true,\n    "changeSet" : {\n      "kind" : "aeiou",\n      "_class" : "aeiou"\n    },\n    "duration" : 6,\n    "result" : "aeiou",\n    "number" : 0,\n    "executor" : "aeiou",\n    "builtOn" : "aeiou",\n    "_class" : "aeiou",\n    "id" : "aeiou",\n    "actions" : [ {\n      "causes" : [ {\n        "_class" : "aeiou",\n        "shortDescription" : "aeiou",\n        "userName" : "aeiou",\n        "userId" : "aeiou"\n      } ],\n      "_class" : "aeiou"\n    } ],\n    "timestamp" : 5\n  } ],\n  "scm" : {\n    "_class" : "aeiou"\n  },\n  "keepDependencies" : true,\n  "displayNameOrNull" : "aeiou",\n  "inQueue" : true,\n  "lastCompletedBuild" : "",\n  "fullName" : "aeiou",\n  "healthReport" : [ {\n    "score" : 2,\n    "description" : "aeiou",\n    "iconClassName" : "aeiou",\n    "iconUrl" : "aeiou",\n    "_class" : "aeiou"\n  } ],\n  "lastStableBuild" : "",\n  "lastUnsuccessfulBuild" : "aeiou",\n  "url" : "aeiou",\n  "concurrentBuild" : true,\n  "name" : "aeiou",\n  "_class" : "aeiou",\n  "actions" : [ {\n    "_class" : "aeiou"\n  } ]\n}');
        expectedResponse = SwagHudsonmodelFreeStyleProject.getExample();
        response = (SwagHudsonmodelFreeStyleProject) api.getJob(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve job configuration
     */
    @isTest
    private static void getJobConfigTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;
        String response;
        String expectedResponse;

        api = new SwagRemoteAccessApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"aeiou"');
        expectedResponse = 'aeiou';
        response = (String) api.getJobConfig(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve job\&#39;s last build details
     */
    @isTest
    private static void getJobLastBuildTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;
        SwagHudsonmodelFreeStyleBuild response;
        SwagHudsonmodelFreeStyleBuild expectedResponse;

        api = new SwagRemoteAccessApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "queueId" : 5,\n  "displayName" : "aeiou",\n  "keepLog" : true,\n  "description" : "aeiou",\n  "fullDisplayName" : "aeiou",\n  "estimatedDuration" : 1,\n  "url" : "aeiou",\n  "building" : true,\n  "changeSet" : {\n    "kind" : "aeiou",\n    "_class" : "aeiou"\n  },\n  "duration" : 6,\n  "result" : "aeiou",\n  "number" : 0,\n  "executor" : "aeiou",\n  "builtOn" : "aeiou",\n  "_class" : "aeiou",\n  "id" : "aeiou",\n  "actions" : [ {\n    "causes" : [ {\n      "_class" : "aeiou",\n      "shortDescription" : "aeiou",\n      "userName" : "aeiou",\n      "userId" : "aeiou"\n    } ],\n    "_class" : "aeiou"\n  } ],\n  "timestamp" : 5\n}');
        expectedResponse = SwagHudsonmodelFreeStyleBuild.getExample();
        response = (SwagHudsonmodelFreeStyleBuild) api.getJobLastBuild(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve job\&#39;s build progressive text output
     */
    @isTest
    private static void getJobProgressiveTextTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example',
            'r_number' => 'r_number_example',
            'start' => 'start_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.getJobProgressiveText(params);
    }

    /**
     * 
     *
     * Retrieve queue details
     */
    @isTest
    private static void getQueueTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        SwagClient client;
        SwagRemoteAccessApi api;
        SwagHudsonmodelQueue response;
        SwagHudsonmodelQueue expectedResponse;

        api = new SwagRemoteAccessApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "_class" : "aeiou",\n  "items" : [ {\n    "task" : {\n      "color" : "aeiou",\n      "displayName" : "aeiou",\n      "lastSuccessfulBuild" : "",\n      "description" : "aeiou",\n      "fullDisplayName" : "aeiou",\n      "lastUnstableBuild" : "aeiou",\n      "queueItem" : "aeiou",\n      "buildable" : true,\n      "firstBuild" : "",\n      "lastFailedBuild" : "aeiou",\n      "lastBuild" : "",\n      "nextBuildNumber" : 3,\n      "builds" : [ {\n        "queueId" : 2,\n        "displayName" : "aeiou",\n        "keepLog" : true,\n        "description" : "aeiou",\n        "fullDisplayName" : "aeiou",\n        "estimatedDuration" : 5,\n        "url" : "aeiou",\n        "building" : true,\n        "changeSet" : {\n          "kind" : "aeiou",\n          "_class" : "aeiou"\n        },\n        "duration" : 5,\n        "result" : "aeiou",\n        "number" : 1,\n        "executor" : "aeiou",\n        "builtOn" : "aeiou",\n        "_class" : "aeiou",\n        "id" : "aeiou",\n        "actions" : [ "" ],\n        "timestamp" : 7\n      } ],\n      "scm" : {\n        "_class" : "aeiou"\n      },\n      "keepDependencies" : true,\n      "displayNameOrNull" : "aeiou",\n      "inQueue" : true,\n      "lastCompletedBuild" : "",\n      "fullName" : "aeiou",\n      "healthReport" : [ {\n        "score" : 9,\n        "description" : "aeiou",\n        "iconClassName" : "aeiou",\n        "iconUrl" : "aeiou",\n        "_class" : "aeiou"\n      } ],\n      "lastStableBuild" : "",\n      "lastUnsuccessfulBuild" : "aeiou",\n      "url" : "aeiou",\n      "concurrentBuild" : true,\n      "name" : "aeiou",\n      "_class" : "aeiou",\n      "actions" : [ {\n        "_class" : "aeiou"\n      } ]\n    },\n    "blocked" : true,\n    "stuck" : true,\n    "buildableStartMilliseconds" : 2,\n    "why" : "aeiou",\n    "_class" : "aeiou",\n    "id" : 0,\n    "buildable" : true,\n    "params" : "aeiou",\n    "actions" : [ {\n      "causes" : [ {\n        "_class" : "aeiou",\n        "shortDescription" : "aeiou",\n        "userName" : "aeiou",\n        "userId" : "aeiou"\n      } ],\n      "_class" : "aeiou"\n    } ],\n    "url" : "aeiou",\n    "inQueueSince" : 6\n  } ]\n}');
        expectedResponse = SwagHudsonmodelQueue.getExample();
        response = (SwagHudsonmodelQueue) api.getQueue();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve queued item details
     */
    @isTest
    private static void getQueueItemTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'r_number' => 'r_number_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;
        SwagHudsonmodelQueue response;
        SwagHudsonmodelQueue expectedResponse;

        api = new SwagRemoteAccessApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "_class" : "aeiou",\n  "items" : [ {\n    "task" : {\n      "color" : "aeiou",\n      "displayName" : "aeiou",\n      "lastSuccessfulBuild" : "",\n      "description" : "aeiou",\n      "fullDisplayName" : "aeiou",\n      "lastUnstableBuild" : "aeiou",\n      "queueItem" : "aeiou",\n      "buildable" : true,\n      "firstBuild" : "",\n      "lastFailedBuild" : "aeiou",\n      "lastBuild" : "",\n      "nextBuildNumber" : 3,\n      "builds" : [ {\n        "queueId" : 2,\n        "displayName" : "aeiou",\n        "keepLog" : true,\n        "description" : "aeiou",\n        "fullDisplayName" : "aeiou",\n        "estimatedDuration" : 5,\n        "url" : "aeiou",\n        "building" : true,\n        "changeSet" : {\n          "kind" : "aeiou",\n          "_class" : "aeiou"\n        },\n        "duration" : 5,\n        "result" : "aeiou",\n        "number" : 1,\n        "executor" : "aeiou",\n        "builtOn" : "aeiou",\n        "_class" : "aeiou",\n        "id" : "aeiou",\n        "actions" : [ "" ],\n        "timestamp" : 7\n      } ],\n      "scm" : {\n        "_class" : "aeiou"\n      },\n      "keepDependencies" : true,\n      "displayNameOrNull" : "aeiou",\n      "inQueue" : true,\n      "lastCompletedBuild" : "",\n      "fullName" : "aeiou",\n      "healthReport" : [ {\n        "score" : 9,\n        "description" : "aeiou",\n        "iconClassName" : "aeiou",\n        "iconUrl" : "aeiou",\n        "_class" : "aeiou"\n      } ],\n      "lastStableBuild" : "",\n      "lastUnsuccessfulBuild" : "aeiou",\n      "url" : "aeiou",\n      "concurrentBuild" : true,\n      "name" : "aeiou",\n      "_class" : "aeiou",\n      "actions" : [ {\n        "_class" : "aeiou"\n      } ]\n    },\n    "blocked" : true,\n    "stuck" : true,\n    "buildableStartMilliseconds" : 2,\n    "why" : "aeiou",\n    "_class" : "aeiou",\n    "id" : 0,\n    "buildable" : true,\n    "params" : "aeiou",\n    "actions" : [ {\n      "causes" : [ {\n        "_class" : "aeiou",\n        "shortDescription" : "aeiou",\n        "userName" : "aeiou",\n        "userId" : "aeiou"\n      } ],\n      "_class" : "aeiou"\n    } ],\n    "url" : "aeiou",\n    "inQueueSince" : 6\n  } ]\n}');
        expectedResponse = SwagHudsonmodelQueue.getExample();
        response = (SwagHudsonmodelQueue) api.getQueueItem(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve view details
     */
    @isTest
    private static void getViewTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;
        SwagHudsonmodelListView response;
        SwagHudsonmodelListView expectedResponse;

        api = new SwagRemoteAccessApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "jobs" : [ {\n    "color" : "aeiou",\n    "displayName" : "aeiou",\n    "lastSuccessfulBuild" : "",\n    "description" : "aeiou",\n    "fullDisplayName" : "aeiou",\n    "lastUnstableBuild" : "aeiou",\n    "queueItem" : "aeiou",\n    "buildable" : true,\n    "firstBuild" : "",\n    "lastFailedBuild" : "aeiou",\n    "lastBuild" : "",\n    "nextBuildNumber" : 7,\n    "builds" : [ {\n      "queueId" : 5,\n      "displayName" : "aeiou",\n      "keepLog" : true,\n      "description" : "aeiou",\n      "fullDisplayName" : "aeiou",\n      "estimatedDuration" : 1,\n      "url" : "aeiou",\n      "building" : true,\n      "changeSet" : {\n        "kind" : "aeiou",\n        "_class" : "aeiou"\n      },\n      "duration" : 6,\n      "result" : "aeiou",\n      "number" : 0,\n      "executor" : "aeiou",\n      "builtOn" : "aeiou",\n      "_class" : "aeiou",\n      "id" : "aeiou",\n      "actions" : [ {\n        "causes" : [ {\n          "_class" : "aeiou",\n          "shortDescription" : "aeiou",\n          "userName" : "aeiou",\n          "userId" : "aeiou"\n        } ],\n        "_class" : "aeiou"\n      } ],\n      "timestamp" : 5\n    } ],\n    "scm" : {\n      "_class" : "aeiou"\n    },\n    "keepDependencies" : true,\n    "displayNameOrNull" : "aeiou",\n    "inQueue" : true,\n    "lastCompletedBuild" : "",\n    "fullName" : "aeiou",\n    "healthReport" : [ {\n      "score" : 2,\n      "description" : "aeiou",\n      "iconClassName" : "aeiou",\n      "iconUrl" : "aeiou",\n      "_class" : "aeiou"\n    } ],\n    "lastStableBuild" : "",\n    "lastUnsuccessfulBuild" : "aeiou",\n    "url" : "aeiou",\n    "concurrentBuild" : true,\n    "name" : "aeiou",\n    "_class" : "aeiou",\n    "actions" : [ {\n      "_class" : "aeiou"\n    } ]\n  } ],\n  "name" : "aeiou",\n  "description" : "aeiou",\n  "_class" : "aeiou",\n  "url" : "aeiou"\n}');
        expectedResponse = SwagHudsonmodelListView.getExample();
        response = (SwagHudsonmodelListView) api.getView(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve view configuration
     */
    @isTest
    private static void getViewConfigTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;
        String response;
        String expectedResponse;

        api = new SwagRemoteAccessApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"aeiou"');
        expectedResponse = 'aeiou';
        response = (String) api.getViewConfig(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve Jenkins headers
     */
    @isTest
    private static void headJenkinsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.headJenkins();
    }

    /**
     * 
     *
     * Create a new job using job configuration, or copied from an existing job
     */
    @isTest
    private static void postCreateItemTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example',
            'r_from' => 'r_from_example',
            'mode' => 'mode_example',
            'body' => 'body_example',
            'jenkinsCrumb' => 'jenkinsCrumb_example',
            'contentType' => 'contentType_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.postCreateItem(params);
    }

    /**
     * 
     *
     * Create a new view using view configuration
     */
    @isTest
    private static void postCreateViewTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example',
            'body' => 'body_example',
            'jenkinsCrumb' => 'jenkinsCrumb_example',
            'contentType' => 'contentType_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.postCreateView(params);
    }

    /**
     * 
     *
     * Build a job
     */
    @isTest
    private static void postJobBuildTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example',
            'json' => 'json_example',
            'token' => 'token_example',
            'jenkinsCrumb' => 'jenkinsCrumb_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.postJobBuild(params);
    }

    /**
     * 
     *
     * Update job configuration
     */
    @isTest
    private static void postJobConfigTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example',
            'body' => 'body_example',
            'jenkinsCrumb' => 'jenkinsCrumb_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.postJobConfig(params);
    }

    /**
     * 
     *
     * Delete a job
     */
    @isTest
    private static void postJobDeleteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example',
            'jenkinsCrumb' => 'jenkinsCrumb_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.postJobDelete(params);
    }

    /**
     * 
     *
     * Disable a job
     */
    @isTest
    private static void postJobDisableTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example',
            'jenkinsCrumb' => 'jenkinsCrumb_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.postJobDisable(params);
    }

    /**
     * 
     *
     * Enable a job
     */
    @isTest
    private static void postJobEnableTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example',
            'jenkinsCrumb' => 'jenkinsCrumb_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.postJobEnable(params);
    }

    /**
     * 
     *
     * Stop a job
     */
    @isTest
    private static void postJobLastBuildStopTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example',
            'jenkinsCrumb' => 'jenkinsCrumb_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.postJobLastBuildStop(params);
    }

    /**
     * 
     *
     * Update view configuration
     */
    @isTest
    private static void postViewConfigTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'name_example',
            'body' => 'body_example',
            'jenkinsCrumb' => 'jenkinsCrumb_example'
        };

        SwagClient client;
        SwagRemoteAccessApi api;

        api = new SwagRemoteAccessApi(new SwagClient());

        api.postViewConfig(params);
    }
}