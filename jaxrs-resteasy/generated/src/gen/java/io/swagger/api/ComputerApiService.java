package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;


import io.swagger.model.HudsonmodelComputerSet;

import java.util.List;
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaResteasyServerCodegen", date = "2017-07-25T10:45:08.057+10:00")
public abstract class ComputerApiService {
      public abstract Response getComputer(SecurityContext securityContext)
      throws NotFoundException;
}
