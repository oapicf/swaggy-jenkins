package org.openapitools.api;

import org.openapitools.api.*;
import org.openapitools.model.*;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;


import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2022-02-09T13:04:29.818508Z[Etc/UTC]")
public abstract class JwtAuthApiService {
    public abstract Response getJsonWebKey(Integer key
 ) throws NotFoundException;
    public abstract Response getJsonWebToken(Integer expiryTimeInMins
 ,Integer maxExpiryTimeInMins
 ) throws NotFoundException;
}
