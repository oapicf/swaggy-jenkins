public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'http://localhost';
        calloutName = 'Swaggy_Jenkins';
        authentications.put('jwt_auth', new OAS.ApiKeyHeaderAuth('Authorization'));
    }
}
