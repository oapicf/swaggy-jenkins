package org.openapitools.api;

import org.openapitools.api.*;

import org.glassfish.jersey.media.multipart.FormDataBodyPart;


import java.util.List;
import org.openapitools.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2025-04-27T08:09:40.083437374Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public abstract class JwtAuthApiService {
    public abstract Response getJsonWebKey(Integer key,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getJsonWebToken(Integer expiryTimeInMins,Integer maxExpiryTimeInMins,SecurityContext securityContext) throws NotFoundException;
}
