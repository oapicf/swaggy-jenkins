package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;


import io.swagger.model.HudsonmodelHudson;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-07-25T10:45:08.057+10:00")
public abstract class ApiApiService {
      public abstract Response getJenkins(SecurityContext securityContext)
      throws NotFoundException;
      public abstract Response headJenkins(SecurityContext securityContext)
      throws NotFoundException;
}
