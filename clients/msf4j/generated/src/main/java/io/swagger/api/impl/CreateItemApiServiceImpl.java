package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;


import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import org.wso2.msf4j.formparam.FormDataParam;
import org.wso2.msf4j.formparam.FileInfo;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaMSF4JServerCodegen", date = "2017-08-03T23:35:16.576Z")
public class CreateItemApiServiceImpl extends CreateItemApiService {
    @Override
    public Response postCreateItem(String name
, String from
, String mode
, String body
, String jenkinsCrumb
, String contentType
 ) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }
}
