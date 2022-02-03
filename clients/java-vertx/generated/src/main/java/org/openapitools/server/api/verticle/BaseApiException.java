package org.openapitools.server.api.verticle;

import org.openapitools.server.api.model.DefaultCrumbIssuer;
import org.openapitools.server.api.MainApiException;

public final class BaseApiException extends MainApiException {
    public BaseApiException(int statusCode, String statusMessage) {
        super(statusCode, statusMessage);
    }

    public static final BaseApiException Base_getCrumb_200_Exception = new BaseApiException(200, "Successfully retrieved CSRF protection token");
    public static final BaseApiException Base_getCrumb_401_Exception = new BaseApiException(401, "Authentication failed - incorrect username and/or password");
    public static final BaseApiException Base_getCrumb_403_Exception = new BaseApiException(403, "Jenkins requires authentication - please set username and password");
    

}