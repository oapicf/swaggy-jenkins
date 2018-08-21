@isTest
private class OASRemoteAccessApiTest {
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'depth' => Integer.getExample()
        };

        OASClient client;
        OASRemoteAccessApi api;
        OASComputerSet response;
        OASComputerSet expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);

        js = JSON.serialize(OASComputerSet.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASComputerSet.getExample();
        response = (OASComputerSet) api.getComputer(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASRemoteAccessApi api;
        OASDefaultCrumbIssuer response;
        OASDefaultCrumbIssuer expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);

        js = JSON.serialize(OASDefaultCrumbIssuer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultCrumbIssuer.getExample();
        response = (OASDefaultCrumbIssuer) api.getCrumb();
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASRemoteAccessApi api;
        OASHudson response;
        OASHudson expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);

        js = JSON.serialize(OASHudson.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASHudson.getExample();
        response = (OASHudson) api.getJenkins();
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        OASFreeStyleProject response;
        OASFreeStyleProject expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);

        js = JSON.serialize(OASFreeStyleProject.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFreeStyleProject.getExample();
        response = (OASFreeStyleProject) api.getJob(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String response;
        String expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
        api.getJobConfig(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        OASFreeStyleBuild response;
        OASFreeStyleBuild expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);

        js = JSON.serialize(OASFreeStyleBuild.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASFreeStyleBuild.getExample();
        response = (OASFreeStyleBuild) api.getJobLastBuild(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'r_number' => 'null',
            'start' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASRemoteAccessApi api;
        OASQueue response;
        OASQueue expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);

        js = JSON.serialize(OASQueue.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueue.getExample();
        response = (OASQueue) api.getQueue();
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'r_number' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        OASQueue response;
        OASQueue expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);

        js = JSON.serialize(OASQueue.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASQueue.getExample();
        response = (OASQueue) api.getQueueItem(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        OASListView response;
        OASListView expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);

        js = JSON.serialize(OASListView.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASListView.getExample();
        response = (OASListView) api.getView(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String response;
        String expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
        api.getViewConfig(params);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'r_from' => 'null',
            'mode' => 'null',
            'jenkinsCrumb' => 'null',
            'contentType' => 'null',
            'body' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'jenkinsCrumb' => 'null',
            'contentType' => 'null',
            'body' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'json' => 'null',
            'token' => 'null',
            'jenkinsCrumb' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'body' => 'null',
            'jenkinsCrumb' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'jenkinsCrumb' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'jenkinsCrumb' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'jenkinsCrumb' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'jenkinsCrumb' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
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
        Test.setMock(HttpCalloutMock.class, new OASResponseMock(res));

        Map<String, Object> params = new Map<String, Object>{
            'name' => 'null',
            'body' => 'null',
            'jenkinsCrumb' => 'null'
        };

        OASClient client;
        OASRemoteAccessApi api;
        String js = '';

        client = new OASClient();
        api = new OASRemoteAccessApi(client);
        api.postViewConfig(params);
    }
}