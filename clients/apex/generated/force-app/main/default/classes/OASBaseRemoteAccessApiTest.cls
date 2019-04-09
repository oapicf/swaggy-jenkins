@isTest
private class OASBaseRemoteAccessApiTest {
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
        OASBaseRemoteAccessApi api;
        OASDefaultCrumbIssuer response;
        OASDefaultCrumbIssuer expectedResponse;
        String js = '';

        client = new OASClient();
        api = new OASBaseRemoteAccessApi(client);

        js = JSON.serialize(OASDefaultCrumbIssuer.getExample());
        res.setHeader('Content-Type', 'application/json');
        res.setBody(js);
        expectedResponse = OASDefaultCrumbIssuer.getExample();
        response = (OASDefaultCrumbIssuer) api.getCrumb();
        System.assertEquals(expectedResponse, response);
    }
}