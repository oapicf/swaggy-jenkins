package org.openapitools.api.impl;

import org.openapitools.api.*;
import org.openapitools.model.*;


import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import org.glassfish.jersey.media.multipart.FormDataBodyPart;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-02-02T10:45:25.136812Z[Etc/UTC]")
public class CreateViewApiServiceImpl extends CreateViewApiService {
    @Override
    public Response postCreateView( @NotNull String name, String jenkinsCrumb, String contentType, String body, SecurityContext securityContext) throws NotFoundException {
        // do some magic!
        return Response.ok().entity(new ApiResponseMessage(ApiResponseMessage.OK, "magic!")).build();
    }
}
