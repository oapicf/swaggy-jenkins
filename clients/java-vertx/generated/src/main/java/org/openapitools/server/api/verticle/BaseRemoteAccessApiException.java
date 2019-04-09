package org.openapitools.server.api.verticle;

import org.openapitools.server.api.model.DefaultCrumbIssuer;
import org.openapitools.server.api.MainApiException;

public final class BaseRemoteAccessApiException extends MainApiException {
    public BaseRemoteAccessApiException(int statusCode, String statusMessage) {
        super(statusCode, statusMessage);
    }
    
    public static final BaseRemoteAccessApiException BaseRemoteAccess_getCrumb_401_Exception = new BaseRemoteAccessApiException(401, "Authentication failed - incorrect username and/or password");
    public static final BaseRemoteAccessApiException BaseRemoteAccess_getCrumb_403_Exception = new BaseRemoteAccessApiException(403, "Jenkins requires authentication - please set username and password");
    

}