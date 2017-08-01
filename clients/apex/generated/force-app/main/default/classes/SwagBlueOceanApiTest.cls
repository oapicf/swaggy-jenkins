@isTest
private class SwagBlueOceanApiTest {
    /**
     * 
     *
     * Get classes details
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

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"aeiou"');
        expectedResponse = 'aeiou';
        response = (String) api.callSearch(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Search for any resource details
     */
    @isTest
    private static void callSearch_0Test() {
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

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"aeiou"');
        expectedResponse = 'aeiou';
        response = (String) api.callSearch_0(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve authenticated user details for an organisation
     */
    @isTest
    private static void getAuthenticatedUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organisation' => 'organisation_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagSwaggyjenkinsUser response;
        SwagSwaggyjenkinsUser expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "name" : "aeiou",\n  "fullName" : "aeiou",\n  "_class" : "aeiou",\n  "id" : "aeiou",\n  "email" : "aeiou"\n}');
        expectedResponse = SwagSwaggyjenkinsUser.getExample();
        response = (SwagSwaggyjenkinsUser) api.getAuthenticatedUser(params);
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

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('"aeiou"');
        expectedResponse = 'aeiou';
        response = (String) api.getClasses(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve organisation details
     */
    @isTest
    private static void getOrganisationTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organisation' => 'organisation_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagSwaggyjenkinsOrganisation response;
        SwagSwaggyjenkinsOrganisation expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "name" : "aeiou",\n  "_class" : "aeiou"\n}');
        expectedResponse = SwagSwaggyjenkinsOrganisation.getExample();
        response = (SwagSwaggyjenkinsOrganisation) api.getOrganisation(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve all organisations details
     */
    @isTest
    private static void getOrganisationsTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        SwagClient client;
        SwagBlueOceanApi api;
        SwagGetOrganisations response;
        SwagGetOrganisations expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagGetOrganisations.getExample();
        response = (SwagGetOrganisations) api.getOrganisations();
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve branch details for an organisation pipeline
     */
    @isTest
    private static void getPipelineBranchByOrgTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organisation' => 'organisation_example',
            'pipeline' => 'pipeline_example',
            'branch' => 'branch_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagIojenkinsblueoceanrestimplpipeli response;
        SwagIojenkinsblueoceanrestimplpipeli expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "weatherScore" : 6,\n  "displayName" : "aeiou",\n  "permissions" : {\n    "read" : true,\n    "stop" : true,\n    "start" : true,\n    "create" : true,\n    "_class" : "aeiou"\n  },\n  "organization" : "aeiou",\n  "estimatedDurationInMillis" : 0,\n  "name" : "aeiou",\n  "fullDisplayName" : "aeiou",\n  "fullName" : "aeiou",\n  "_class" : "aeiou",\n  "parameters" : [ {\n    "name" : "aeiou",\n    "description" : "aeiou",\n    "_class" : "aeiou",\n    "type" : "aeiou",\n    "defaultParameterValue" : {\n      "name" : "aeiou",\n      "_class" : "aeiou",\n      "value" : "aeiou"\n    }\n  } ],\n  "pullRequest" : "aeiou"\n}');
        expectedResponse = SwagIojenkinsblueoceanrestimplpipeli.getExample();
        response = (SwagIojenkinsblueoceanrestimplpipeli) api.getPipelineBranchByOrg(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve all branches details for an organisation pipeline
     */
    @isTest
    private static void getPipelineBranchesByOrgTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organisation' => 'organisation_example',
            'pipeline' => 'pipeline_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagGetMultibranchPipeline response;
        SwagGetMultibranchPipeline expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "weatherScore" : 6,\n  "latestRun" : "aeiou",\n  "displayName" : "aeiou",\n  "totalNumberOfPullRequests" : 9,\n  "numberOfFailingPullRequests" : 5,\n  "branchNames" : [ "aeiou" ],\n  "organization" : "aeiou",\n  "totalNumberOfBranches" : 7,\n  "estimatedDurationInMillis" : 0,\n  "name" : "aeiou",\n  "numberOfSuccessfulPullRequests" : 2,\n  "numberOfSuccessfulBranches" : 5,\n  "numberOfFailingBranches" : 1,\n  "_class" : "aeiou"\n}');
        expectedResponse = SwagGetMultibranchPipeline.getExample();
        response = (SwagGetMultibranchPipeline) api.getPipelineBranchesByOrg(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve pipeline details for an organisation
     */
    @isTest
    private static void getPipelineByOrgTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organisation' => 'organisation_example',
            'pipeline' => 'pipeline_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagSwaggyjenkinsPipeline response;
        SwagSwaggyjenkinsPipeline expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "weatherScore" : 0,\n  "latestRun" : {\n    "runSummary" : "aeiou",\n    "durationInMillis" : 5,\n    "commitId" : "aeiou",\n    "type" : "aeiou",\n    "pipeline" : "aeiou",\n    "result" : "aeiou",\n    "organization" : "aeiou",\n    "estimatedDurationInMillis" : 5,\n    "enQueueTime" : "aeiou",\n    "startTime" : "aeiou",\n    "endTime" : "aeiou",\n    "id" : "aeiou",\n    "state" : "aeiou",\n    "_class" : "aeiou",\n    "artifacts" : [ {\n      "size" : 1,\n      "name" : "aeiou",\n      "_class" : "aeiou",\n      "url" : "aeiou"\n    } ]\n  },\n  "displayName" : "aeiou",\n  "organization" : "aeiou",\n  "name" : "aeiou",\n  "estimatedDurationInMillis" : 6,\n  "fullName" : "aeiou",\n  "_class" : "aeiou"\n}');
        expectedResponse = SwagSwaggyjenkinsPipeline.getExample();
        response = (SwagSwaggyjenkinsPipeline) api.getPipelineByOrg(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve pipeline folder for an organisation
     */
    @isTest
    private static void getPipelineFolderByOrgTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organisation' => 'organisation_example',
            'folder' => 'folder_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagIojenkinsblueoceanserviceembedde response;
        SwagIojenkinsblueoceanserviceembedde expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "numberOfPipelines" : 6,\n  "displayName" : "aeiou",\n  "numberOfFolders" : 0,\n  "organization" : "aeiou",\n  "name" : "aeiou",\n  "fullName" : "aeiou",\n  "_class" : "aeiou"\n}');
        expectedResponse = SwagIojenkinsblueoceanserviceembedde.getExample();
        response = (SwagIojenkinsblueoceanserviceembedde) api.getPipelineFolderByOrg(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve pipeline details for an organisation folder
     */
    @isTest
    private static void getPipelineFolderByOrg_0Test() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organisation' => 'organisation_example',
            'pipeline' => 'pipeline_example',
            'folder' => 'folder_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagIojenkinsblueoceanserviceembedde response;
        SwagIojenkinsblueoceanserviceembedde expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "weatherScore" : 6,\n  "latestRun" : "aeiou",\n  "displayName" : "aeiou",\n  "organization" : "aeiou",\n  "estimatedDurationInMillis" : 0,\n  "name" : "aeiou",\n  "fullName" : "aeiou",\n  "_class" : "aeiou"\n}');
        expectedResponse = SwagIojenkinsblueoceanserviceembedde.getExample();
        response = (SwagIojenkinsblueoceanserviceembedde) api.getPipelineFolderByOrg_0(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve all pipelines details for an organisation
     */
    @isTest
    private static void getPipelinesByOrgTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organisation' => 'organisation_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagGetPipelines response;
        SwagGetPipelines expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('""');
        expectedResponse = SwagGetPipelines.getExample();
        response = (SwagGetPipelines) api.getPipelinesByOrg(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve user details for an organisation
     */
    @isTest
    private static void getUserTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organisation' => 'organisation_example',
            'user' => 'user_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagSwaggyjenkinsUser response;
        SwagSwaggyjenkinsUser expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "name" : "aeiou",\n  "fullName" : "aeiou",\n  "_class" : "aeiou",\n  "id" : "aeiou",\n  "email" : "aeiou"\n}');
        expectedResponse = SwagSwaggyjenkinsUser.getExample();
        response = (SwagSwaggyjenkinsUser) api.getUser(params);
        System.assertEquals(expectedResponse, response);
    }

    /**
     * 
     *
     * Retrieve users details for an organisation
     */
    @isTest
    private static void getUsersTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new SwaggerResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organisation' => 'organisation_example'
        };

        SwagClient client;
        SwagBlueOceanApi api;
        SwagSwaggyjenkinsUser response;
        SwagSwaggyjenkinsUser expectedResponse;

        api = new SwagBlueOceanApi(new SwagClient());

        res.setHeader('Content-Type', 'application/json');
        res.setBody('{\n  "name" : "aeiou",\n  "fullName" : "aeiou",\n  "_class" : "aeiou",\n  "id" : "aeiou",\n  "email" : "aeiou"\n}');
        expectedResponse = SwagSwaggyjenkinsUser.getExample();
        response = (SwagSwaggyjenkinsUser) api.getUsers(params);
        System.assertEquals(expectedResponse, response);
    }
}