package org.openapitools.api.impl;

import org.openapitools.api.*;
import org.openapitools.model.*;


import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2024-03-15T14:12:30.252284764Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class CreateViewApiServiceImpl extends CreateViewApiService {
    @Override
    public Response postCreateView(String name
, String jenkinsCrumb
, String contentType
, String body
 ) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }
}
