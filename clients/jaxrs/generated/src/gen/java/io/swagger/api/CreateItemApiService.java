package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;


import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-08-03T23:34:37.174Z")
public abstract class CreateItemApiService {
    public abstract Response postCreateItem( @NotNull String name, String from, String mode,String body,String jenkinsCrumb,String contentType,SecurityContext securityContext) throws NotFoundException;
}
