@isTest
private class SwagBlueOceanApiTest {
    /**
     * 
     *
     * Search for any resource details
     */
    @isTest
    private static void callSearchTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'q' => 'q_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        String response;
        String expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = 'aeiou';
        response = (String) api.callSearch(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Delete queue item from an organization pipeline queue
     */
    @isTest
    private static void deletePipelineQueueItemTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'queue' => 'queue_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        api.deletePipelineQueueItem(params);
    }

    /**
     * 
     *
     * Retrieve authenticated user details for an organization
     */
    @isTest
    private static void getAuthenticatedUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagUser response;
        SwagUser expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "name" : "name",\n  "fullName" : "fullName",\n  "_class" : "_class",\n  "id" : "id",\n  "email" : "email"\n}');
        expectedResponse = SwagUser.getExample();
        response = (SwagUser) api.getAuthenticatedUser(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get a list of class names supported by a given class
     */
    @isTest
    private static void getClassesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'propertyClass' => 'propertyClass_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        String response;
        String expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = 'aeiou';
        response = (String) api.getClasses(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve organization details
     */
    @isTest
    private static void getOrganisationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagOrganisation response;
        SwagOrganisation expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "name" : "name",\n  "_class" : "_class"\n}');
        expectedResponse = SwagOrganisation.getExample();
        response = (SwagOrganisation) api.getOrganisation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve all organizations details
     */
    @isTest
    private static void getOrganisationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        SwagClient client;
        SwagBlueOceanApi api;
        SwagOrganisations response;
        SwagOrganisations expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagOrganisations.getExample();
        response = (SwagOrganisations) api.getOrganisations();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve pipeline details for an organization
     */
    @isTest
    private static void getPipelineTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipeline response;
        SwagPipeline expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "weatherScore" : 0,\n  "latestRun" : {\n    "runSummary" : "runSummary",\n    "durationInMillis" : 5,\n    "commitId" : "commitId",\n    "type" : "type",\n    "pipeline" : "pipeline",\n    "result" : "result",\n    "organization" : "organization",\n    "estimatedDurationInMillis" : 5,\n    "enQueueTime" : "enQueueTime",\n    "startTime" : "startTime",\n    "endTime" : "endTime",\n    "id" : "id",\n    "state" : "state",\n    "_class" : "_class",\n    "artifacts" : [ {\n      "size" : 1,\n      "name" : "name",\n      "_class" : "_class",\n      "url" : "url"\n    }, {\n      "size" : 1,\n      "name" : "name",\n      "_class" : "_class",\n      "url" : "url"\n    } ]\n  },\n  "displayName" : "displayName",\n  "organization" : "organization",\n  "name" : "name",\n  "estimatedDurationInMillis" : 6,\n  "fullName" : "fullName",\n  "_class" : "_class"\n}');
        expectedResponse = SwagPipeline.getExample();
        response = (SwagPipeline) api.getPipeline(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve all activities details for an organization pipeline
     */
    @isTest
    private static void getPipelineActivitiesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineActivities response;
        SwagPipelineActivities expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagPipelineActivities.getExample();
        response = (SwagPipelineActivities) api.getPipelineActivities(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve branch details for an organization pipeline
     */
    @isTest
    private static void getPipelineBranchTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'branch' => 'branch_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagBranchImpl response;
        SwagBranchImpl expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "weatherScore" : 6,\n  "latestRun" : {\n    "runSummary" : "runSummary",\n    "_links" : {\n      "nodes" : {\n        "_class" : "_class",\n        "href" : "href"\n      },\n      "log" : {\n        "_class" : "_class",\n        "href" : "href"\n      },\n      "self" : {\n        "_class" : "_class",\n        "href" : "href"\n      },\n      "_class" : "_class",\n      "actions" : {\n        "_class" : "_class",\n        "href" : "href"\n      },\n      "steps" : {\n        "_class" : "_class",\n        "href" : "href"\n      }\n    },\n    "durationInMillis" : 1,\n    "commitId" : "commitId",\n    "type" : "type",\n    "pipeline" : "pipeline",\n    "result" : "result",\n    "organization" : "organization",\n    "enQueueTime" : "enQueueTime",\n    "estimatedDurationInMillis" : 5,\n    "startTime" : "startTime",\n    "_class" : "_class",\n    "endTime" : "endTime",\n    "id" : "id",\n    "state" : "state"\n  },\n  "_links" : {\n    "self" : {\n      "_class" : "_class",\n      "href" : "href"\n    },\n    "_class" : "_class",\n    "actions" : {\n      "_class" : "_class",\n      "href" : "href"\n    },\n    "runs" : {\n      "_class" : "_class",\n      "href" : "href"\n    },\n    "queue" : {\n      "_class" : "_class",\n      "href" : "href"\n    }\n  },\n  "displayName" : "displayName",\n  "fullDisplayName" : "fullDisplayName",\n  "fullName" : "fullName",\n  "pullRequest" : "pullRequest",\n  "permissions" : {\n    "read" : true,\n    "stop" : true,\n    "start" : true,\n    "create" : true,\n    "_class" : "_class"\n  },\n  "organization" : "organization",\n  "estimatedDurationInMillis" : 0,\n  "name" : "name",\n  "_class" : "_class",\n  "parameters" : [ {\n    "name" : "name",\n    "description" : "description",\n    "_class" : "_class",\n    "type" : "type",\n    "defaultParameterValue" : {\n      "name" : "name",\n      "_class" : "_class",\n      "value" : "value"\n    }\n  }, {\n    "name" : "name",\n    "description" : "description",\n    "_class" : "_class",\n    "type" : "type",\n    "defaultParameterValue" : {\n      "name" : "name",\n      "_class" : "_class",\n      "value" : "value"\n    }\n  } ]\n}');
        expectedResponse = SwagBranchImpl.getExample();
        response = (SwagBranchImpl) api.getPipelineBranch(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve branch run details for an organization pipeline
     */
    @isTest
    private static void getPipelineBranchRunTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'branch' => 'branch_example',
            'run' => 'run_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineRun response;
        SwagPipelineRun expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "runSummary" : "runSummary",\n  "durationInMillis" : 6,\n  "commitId" : "commitId",\n  "type" : "type",\n  "pipeline" : "pipeline",\n  "result" : "result",\n  "organization" : "organization",\n  "estimatedDurationInMillis" : 1,\n  "enQueueTime" : "enQueueTime",\n  "startTime" : "startTime",\n  "_class" : "_class",\n  "endTime" : "endTime",\n  "id" : "id",\n  "state" : "state",\n  "artifacts" : [ {\n    "size" : 0,\n    "name" : "name",\n    "_class" : "_class",\n    "url" : "url"\n  }, {\n    "size" : 0,\n    "name" : "name",\n    "_class" : "_class",\n    "url" : "url"\n  } ]\n}');
        expectedResponse = SwagPipelineRun.getExample();
        response = (SwagPipelineRun) api.getPipelineBranchRun(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve all branches details for an organization pipeline
     */
    @isTest
    private static void getPipelineBranchesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagMultibranchPipeline response;
        SwagMultibranchPipeline expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "weatherScore" : 6,\n  "latestRun" : "latestRun",\n  "displayName" : "displayName",\n  "totalNumberOfPullRequests" : 9,\n  "numberOfFailingPullRequests" : 5,\n  "branchNames" : [ "branchNames", "branchNames" ],\n  "organization" : "organization",\n  "totalNumberOfBranches" : 7,\n  "estimatedDurationInMillis" : 0,\n  "name" : "name",\n  "numberOfSuccessfulPullRequests" : 2,\n  "numberOfSuccessfulBranches" : 5,\n  "numberOfFailingBranches" : 1,\n  "_class" : "_class"\n}');
        expectedResponse = SwagMultibranchPipeline.getExample();
        response = (SwagMultibranchPipeline) api.getPipelineBranches(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve pipeline folder for an organization
     */
    @isTest
    private static void getPipelineFolderTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'folder' => 'folder_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineFolderImpl response;
        SwagPipelineFolderImpl expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "numberOfPipelines" : 6,\n  "displayName" : "displayName",\n  "numberOfFolders" : 0,\n  "organization" : "organization",\n  "name" : "name",\n  "fullName" : "fullName",\n  "_class" : "_class"\n}');
        expectedResponse = SwagPipelineFolderImpl.getExample();
        response = (SwagPipelineFolderImpl) api.getPipelineFolder(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve pipeline details for an organization folder
     */
    @isTest
    private static void getPipelineFolderPipelineTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'folder' => 'folder_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineImpl response;
        SwagPipelineImpl expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "weatherScore" : 6,\n  "latestRun" : "latestRun",\n  "_links" : {\n    "self" : {\n      "_class" : "_class",\n      "href" : "href"\n    },\n    "_class" : "_class",\n    "runs" : {\n      "_class" : "_class",\n      "href" : "href"\n    },\n    "actions" : {\n      "_class" : "_class",\n      "href" : "href"\n    },\n    "queue" : {\n      "_class" : "_class",\n      "href" : "href"\n    }\n  },\n  "displayName" : "displayName",\n  "organization" : "organization",\n  "estimatedDurationInMillis" : 0,\n  "name" : "name",\n  "fullName" : "fullName",\n  "_class" : "_class"\n}');
        expectedResponse = SwagPipelineImpl.getExample();
        response = (SwagPipelineImpl) api.getPipelineFolderPipeline(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve queue details for an organization pipeline
     */
    @isTest
    private static void getPipelineQueueTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineQueue response;
        SwagPipelineQueue expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagPipelineQueue.getExample();
        response = (SwagPipelineQueue) api.getPipelineQueue(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve run details for an organization pipeline
     */
    @isTest
    private static void getPipelineRunTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'run' => 'run_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineRun response;
        SwagPipelineRun expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "runSummary" : "runSummary",\n  "durationInMillis" : 6,\n  "commitId" : "commitId",\n  "type" : "type",\n  "pipeline" : "pipeline",\n  "result" : "result",\n  "organization" : "organization",\n  "estimatedDurationInMillis" : 1,\n  "enQueueTime" : "enQueueTime",\n  "startTime" : "startTime",\n  "_class" : "_class",\n  "endTime" : "endTime",\n  "id" : "id",\n  "state" : "state",\n  "artifacts" : [ {\n    "size" : 0,\n    "name" : "name",\n    "_class" : "_class",\n    "url" : "url"\n  }, {\n    "size" : 0,\n    "name" : "name",\n    "_class" : "_class",\n    "url" : "url"\n  } ]\n}');
        expectedResponse = SwagPipelineRun.getExample();
        response = (SwagPipelineRun) api.getPipelineRun(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get log for a pipeline run
     */
    @isTest
    private static void getPipelineRunLogTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'run' => 'run_example',
            'start' => 56,
            'download' => true
        };

        SwagClient client;
        SwagBlueOceanApi api;
        String response;
        String expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = 'aeiou';
        response = (String) api.getPipelineRunLog(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve run node details for an organization pipeline
     */
    @isTest
    private static void getPipelineRunNodeTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'run' => 'run_example',
            'node' => 'node_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineRunNode response;
        SwagPipelineRunNode expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "result" : "result",\n  "durationInMillis" : 0,\n  "displayName" : "displayName",\n  "edges" : [ {\n    "id" : "id",\n    "_class" : "_class"\n  }, {\n    "id" : "id",\n    "_class" : "_class"\n  } ],\n  "startTime" : "startTime",\n  "_class" : "_class",\n  "id" : "id",\n  "state" : "state"\n}');
        expectedResponse = SwagPipelineRunNode.getExample();
        response = (SwagPipelineRunNode) api.getPipelineRunNode(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve run node details for an organization pipeline
     */
    @isTest
    private static void getPipelineRunNodeStepTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'run' => 'run_example',
            'node' => 'node_example',
            'step' => 'step_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineStepImpl response;
        SwagPipelineStepImpl expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "result" : "result",\n  "input" : {\n    "submitter" : "submitter",\n    "_links" : {\n      "self" : {\n        "_class" : "_class",\n        "href" : "href"\n      },\n      "_class" : "_class"\n    },\n    "_class" : "_class",\n    "id" : "id",\n    "message" : "message",\n    "ok" : "ok",\n    "parameters" : [ {\n      "name" : "name",\n      "description" : "description",\n      "_class" : "_class",\n      "type" : "type",\n      "defaultParameterValue" : {\n        "name" : "name",\n        "_class" : "_class",\n        "value" : "value"\n      }\n    }, {\n      "name" : "name",\n      "description" : "description",\n      "_class" : "_class",\n      "type" : "type",\n      "defaultParameterValue" : {\n        "name" : "name",\n        "_class" : "_class",\n        "value" : "value"\n      }\n    } ]\n  },\n  "_links" : {\n    "self" : {\n      "_class" : "_class",\n      "href" : "href"\n    },\n    "_class" : "_class",\n    "actions" : {\n      "_class" : "_class",\n      "href" : "href"\n    }\n  },\n  "durationInMillis" : 0,\n  "displayName" : "displayName",\n  "startTime" : "startTime",\n  "_class" : "_class",\n  "id" : "id",\n  "state" : "state"\n}');
        expectedResponse = SwagPipelineStepImpl.getExample();
        response = (SwagPipelineStepImpl) api.getPipelineRunNodeStep(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get log for a pipeline run node step
     */
    @isTest
    private static void getPipelineRunNodeStepLogTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'run' => 'run_example',
            'node' => 'node_example',
            'step' => 'step_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        String response;
        String expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = 'aeiou';
        response = (String) api.getPipelineRunNodeStepLog(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve run node steps details for an organization pipeline
     */
    @isTest
    private static void getPipelineRunNodeStepsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'run' => 'run_example',
            'node' => 'node_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineRunNodeSteps response;
        SwagPipelineRunNodeSteps expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagPipelineRunNodeSteps.getExample();
        response = (SwagPipelineRunNodeSteps) api.getPipelineRunNodeSteps(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve run nodes details for an organization pipeline
     */
    @isTest
    private static void getPipelineRunNodesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'run' => 'run_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineRunNodes response;
        SwagPipelineRunNodes expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagPipelineRunNodes.getExample();
        response = (SwagPipelineRunNodes) api.getPipelineRunNodes(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve all runs details for an organization pipeline
     */
    @isTest
    private static void getPipelineRunsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineRuns response;
        SwagPipelineRuns expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagPipelineRuns.getExample();
        response = (SwagPipelineRuns) api.getPipelineRuns(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve all pipelines details for an organization
     */
    @isTest
    private static void getPipelinesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelines response;
        SwagPipelines expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagPipelines.getExample();
        response = (SwagPipelines) api.getPipelines(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve SCM details for an organization
     */
    @isTest
    private static void getSCMTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'scm' => 'scm_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagGithubScm response;
        SwagGithubScm expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "_links" : {\n    "self" : {\n      "_class" : "_class",\n      "href" : "href"\n    },\n    "_class" : "_class"\n  },\n  "credentialId" : "credentialId",\n  "_class" : "_class",\n  "id" : "id",\n  "uri" : "uri"\n}');
        expectedResponse = SwagGithubScm.getExample();
        response = (SwagGithubScm) api.getSCM(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve SCM organization repositories details for an organization
     */
    @isTest
    private static void getSCMOrganisationRepositoriesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'scm' => 'scm_example',
            'scmOrganisation' => 'scmOrganisation_example',
            'credentialId' => 'credentialId_example',
            'pageSize' => 56,
            'pageNumber' => 56
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagScmOrganisations response;
        SwagScmOrganisations expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagScmOrganisations.getExample();
        response = (SwagScmOrganisations) api.getSCMOrganisationRepositories(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve SCM organization repository details for an organization
     */
    @isTest
    private static void getSCMOrganisationRepositoryTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'scm' => 'scm_example',
            'scmOrganisation' => 'scmOrganisation_example',
            'repository' => 'repository_example',
            'credentialId' => 'credentialId_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagScmOrganisations response;
        SwagScmOrganisations expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagScmOrganisations.getExample();
        response = (SwagScmOrganisations) api.getSCMOrganisationRepository(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve SCM organizations details for an organization
     */
    @isTest
    private static void getSCMOrganisationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'scm' => 'scm_example',
            'credentialId' => 'credentialId_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagScmOrganisations response;
        SwagScmOrganisations expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagScmOrganisations.getExample();
        response = (SwagScmOrganisations) api.getSCMOrganisations(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve user details for an organization
     */
    @isTest
    private static void getUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'user' => 'user_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagUser response;
        SwagUser expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "name" : "name",\n  "fullName" : "fullName",\n  "_class" : "_class",\n  "id" : "id",\n  "email" : "email"\n}');
        expectedResponse = SwagUser.getExample();
        response = (SwagUser) api.getUser(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve user favorites details for an organization
     */
    @isTest
    private static void getUserFavoritesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'user' => 'user_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagUserFavorites response;
        SwagUserFavorites expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagUserFavorites.getExample();
        response = (SwagUserFavorites) api.getUserFavorites(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve users details for an organization
     */
    @isTest
    private static void getUsersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagUser response;
        SwagUser expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "name" : "name",\n  "fullName" : "fullName",\n  "_class" : "_class",\n  "id" : "id",\n  "email" : "email"\n}');
        expectedResponse = SwagUser.getExample();
        response = (SwagUser) api.getUsers(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Replay an organization pipeline run
     */
    @isTest
    private static void postPipelineRunTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'run' => 'run_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagQueueItemImpl response;
        SwagQueueItemImpl expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "pipeline" : "pipeline",\n  "expectedBuildNumber" : 0,\n  "queuedTime" : 6,\n  "_class" : "_class",\n  "id" : "id"\n}');
        expectedResponse = SwagQueueItemImpl.getExample();
        response = (SwagQueueItemImpl) api.postPipelineRun(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Start a build for an organization pipeline
     */
    @isTest
    private static void postPipelineRunsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagQueueItemImpl response;
        SwagQueueItemImpl expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "pipeline" : "pipeline",\n  "expectedBuildNumber" : 0,\n  "queuedTime" : 6,\n  "_class" : "_class",\n  "id" : "id"\n}');
        expectedResponse = SwagQueueItemImpl.getExample();
        response = (SwagQueueItemImpl) api.postPipelineRuns(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Favorite/unfavorite a pipeline
     */
    @isTest
    private static void putPipelineFavoriteTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'body' => String.getExample()
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagFavoriteImpl response;
        SwagFavoriteImpl expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "item" : {\n    "weatherScore" : 6,\n    "latestRun" : "latestRun",\n    "_links" : {\n      "self" : {\n        "_class" : "_class",\n        "href" : "href"\n      },\n      "_class" : "_class",\n      "runs" : {\n        "_class" : "_class",\n        "href" : "href"\n      },\n      "actions" : {\n        "_class" : "_class",\n        "href" : "href"\n      },\n      "queue" : {\n        "_class" : "_class",\n        "href" : "href"\n      }\n    },\n    "displayName" : "displayName",\n    "organization" : "organization",\n    "estimatedDurationInMillis" : 0,\n    "name" : "name",\n    "fullName" : "fullName",\n    "_class" : "_class"\n  },\n  "_links" : {\n    "self" : {\n      "_class" : "_class",\n      "href" : "href"\n    },\n    "_class" : "_class"\n  },\n  "_class" : "_class"\n}');
        expectedResponse = SwagFavoriteImpl.getExample();
        response = (SwagFavoriteImpl) api.putPipelineFavorite(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Stop a build of an organization pipeline
     */
    @isTest
    private static void putPipelineRunTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'organization_example',
            'pipeline' => 'pipeline_example',
            'run' => 'run_example',
            'blocking' => 'blocking_example',
            'timeOutInSecs' => 56
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagPipelineRun response;
        SwagPipelineRun expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "runSummary" : "runSummary",\n  "durationInMillis" : 6,\n  "commitId" : "commitId",\n  "type" : "type",\n  "pipeline" : "pipeline",\n  "result" : "result",\n  "organization" : "organization",\n  "estimatedDurationInMillis" : 1,\n  "enQueueTime" : "enQueueTime",\n  "startTime" : "startTime",\n  "_class" : "_class",\n  "endTime" : "endTime",\n  "id" : "id",\n  "state" : "state",\n  "artifacts" : [ {\n    "size" : 0,\n    "name" : "name",\n    "_class" : "_class",\n    "url" : "url"\n  }, {\n    "size" : 0,\n    "name" : "name",\n    "_class" : "_class",\n    "url" : "url"\n  } ]\n}');
        expectedResponse = SwagPipelineRun.getExample();
        response = (SwagPipelineRun) api.putPipelineRun(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Get classes details
     */
    @isTest
    private static void searchClassesTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'q' => 'q_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        String response;
        String expectedResponse;

        client = new SwagClient();
        api = new SwagBlueOceanApi(client); client.getAuthentication('jenkins_auth');

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = 'aeiou';
        response = (String) api.searchClasses(params);
        System.assertEquals(expectedResponse, response);
    }
}