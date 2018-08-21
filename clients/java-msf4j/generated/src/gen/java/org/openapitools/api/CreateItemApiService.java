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

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2018-08-21T02:11:56.740Z[GMT]")
public abstract class CreateItemApiService {
    public abstract Response postCreateItem(String name
 ,String from
 ,String mode
 ,String jenkinsCrumb
 ,String contentType
 ,String body
 ) throws NotFoundException;
}
