@isTest
private class OASBlueOceanApiTest {
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'q' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        String response;
        String expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);
        api.callSearch(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'queue' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASUser response;
        OASUser expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASUser.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUser.getExample();
        response = (OASUser) api.getAuthenticatedUser(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'propertyClass' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        String response;
        String expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);
        api.getClasses(params);
    }

    /**
     * 
     *
     * Retrieve JSON Web Key
     */
    @isTest
    private static void getJsonWebKeyTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'key' => Integer.getExample()
        };

        OASClient client;
        OASBlueOceanApi api;
        String response;
        String expectedResponse;
        String js = '';

        api = new OASBlueOceanApi(new OASClient());

        api.getJsonWebKey(params);
    }

    /**
     * 
     *
     * Retrieve JSON Web Token
     */
    @isTest
    private static void getJsonWebTokenTest() {
        HttpResponse res = new HttpResponse();
        res.setStatusCode(200);
        res.setStatus('OK');
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'expiryTimeInMins' => Integer.getExample(),
            'maxExpiryTimeInMins' => Integer.getExample()
        };

        OASClient client;
        OASBlueOceanApi api;
        String response;
        String expectedResponse;
        String js = '';

        api = new OASBlueOceanApi(new OASClient());

        api.getJsonWebToken(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASOrganisation response;
        OASOrganisation expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASOrganisation.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrganisation.getExample();
        response = (OASOrganisation) api.getOrganisation(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASBlueOceanApi api;
        OASOrganisations response;
        OASOrganisations expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASOrganisations.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASOrganisations.getExample();
        response = (OASOrganisations) api.getOrganisations();
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipeline response;
        OASPipeline expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipeline.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipeline.getExample();
        response = (OASPipeline) api.getPipeline(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineActivities response;
        OASPipelineActivities expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineActivities.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineActivities.getExample();
        response = (OASPipelineActivities) api.getPipelineActivities(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'branch' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASBranchImpl response;
        OASBranchImpl expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASBranchImpl.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASBranchImpl.getExample();
        response = (OASBranchImpl) api.getPipelineBranch(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'branch' => 'null',
            'run' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineRun response;
        OASPipelineRun expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineRun.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineRun.getExample();
        response = (OASPipelineRun) api.getPipelineBranchRun(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASMultibranchPipeline response;
        OASMultibranchPipeline expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASMultibranchPipeline.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASMultibranchPipeline.getExample();
        response = (OASMultibranchPipeline) api.getPipelineBranches(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'folder' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineFolderImpl response;
        OASPipelineFolderImpl expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineFolderImpl.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineFolderImpl.getExample();
        response = (OASPipelineFolderImpl) api.getPipelineFolder(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'folder' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineImpl response;
        OASPipelineImpl expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineImpl.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineImpl.getExample();
        response = (OASPipelineImpl) api.getPipelineFolderPipeline(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineQueue response;
        OASPipelineQueue expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineQueue.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineQueue.getExample();
        response = (OASPipelineQueue) api.getPipelineQueue(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'run' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineRun response;
        OASPipelineRun expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineRun.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineRun.getExample();
        response = (OASPipelineRun) api.getPipelineRun(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'run' => 'null',
            'start' => Integer.getExample(),
            'download' => Boolean.getExample()
        };

        OASClient client;
        OASBlueOceanApi api;
        String response;
        String expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);
        api.getPipelineRunLog(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'run' => 'null',
            'node' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineRunNode response;
        OASPipelineRunNode expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineRunNode.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineRunNode.getExample();
        response = (OASPipelineRunNode) api.getPipelineRunNode(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'run' => 'null',
            'node' => 'null',
            'step' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineStepImpl response;
        OASPipelineStepImpl expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineStepImpl.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineStepImpl.getExample();
        response = (OASPipelineStepImpl) api.getPipelineRunNodeStep(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'run' => 'null',
            'node' => 'null',
            'step' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        String response;
        String expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);
        api.getPipelineRunNodeStepLog(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'run' => 'null',
            'node' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineRunNodeSteps response;
        OASPipelineRunNodeSteps expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineRunNodeSteps.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineRunNodeSteps.getExample();
        response = (OASPipelineRunNodeSteps) api.getPipelineRunNodeSteps(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'run' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineRunNodes response;
        OASPipelineRunNodes expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineRunNodes.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineRunNodes.getExample();
        response = (OASPipelineRunNodes) api.getPipelineRunNodes(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineRuns response;
        OASPipelineRuns expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineRuns.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineRuns.getExample();
        response = (OASPipelineRuns) api.getPipelineRuns(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelines response;
        OASPipelines expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelines.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelines.getExample();
        response = (OASPipelines) api.getPipelines(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'scm' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASGithubScm response;
        OASGithubScm expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASGithubScm.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASGithubScm.getExample();
        response = (OASGithubScm) api.getSCM(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'scm' => 'null',
            'scmOrganisation' => 'null',
            'credentialId' => 'null',
            'pageSize' => Integer.getExample(),
            'pageNumber' => Integer.getExample()
        };

        OASClient client;
        OASBlueOceanApi api;
        OASScmOrganisations response;
        OASScmOrganisations expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASScmOrganisations.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASScmOrganisations.getExample();
        response = (OASScmOrganisations) api.getSCMOrganisationRepositories(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'scm' => 'null',
            'scmOrganisation' => 'null',
            'repository' => 'null',
            'credentialId' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASScmOrganisations response;
        OASScmOrganisations expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASScmOrganisations.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASScmOrganisations.getExample();
        response = (OASScmOrganisations) api.getSCMOrganisationRepository(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'scm' => 'null',
            'credentialId' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASScmOrganisations response;
        OASScmOrganisations expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASScmOrganisations.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASScmOrganisations.getExample();
        response = (OASScmOrganisations) api.getSCMOrganisations(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'user' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASUser response;
        OASUser expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASUser.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUser.getExample();
        response = (OASUser) api.getUser(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'user' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASUserFavorites response;
        OASUserFavorites expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASUserFavorites.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUserFavorites.getExample();
        response = (OASUserFavorites) api.getUserFavorites(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASUser response;
        OASUser expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASUser.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASUser.getExample();
        response = (OASUser) api.getUsers(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'run' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASQueueItemImpl response;
        OASQueueItemImpl expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASQueueItemImpl.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueueItemImpl.getExample();
        response = (OASQueueItemImpl) api.postPipelineRun(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        OASQueueItemImpl response;
        OASQueueItemImpl expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASQueueItemImpl.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueueItemImpl.getExample();
        response = (OASQueueItemImpl) api.postPipelineRuns(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'oaSBody' => OASBody.getExample()
        };

        OASClient client;
        OASBlueOceanApi api;
        OASFavoriteImpl response;
        OASFavoriteImpl expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASFavoriteImpl.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFavoriteImpl.getExample();
        response = (OASFavoriteImpl) api.putPipelineFavorite(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'organization' => 'null',
            'pipeline' => 'null',
            'run' => 'null',
            'blocking' => 'null',
            'timeOutInSecs' => Integer.getExample()
        };

        OASClient client;
        OASBlueOceanApi api;
        OASPipelineRun response;
        OASPipelineRun expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);

        js = JSON.serialize(OASPipelineRun.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASPipelineRun.getExample();
        response = (OASPipelineRun) api.putPipelineRun(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'q' => 'null'
        };

        OASClient client;
        OASBlueOceanApi api;
        String response;
        String expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBlueOceanApi(client);
        api.searchClasses(params);
    }
}