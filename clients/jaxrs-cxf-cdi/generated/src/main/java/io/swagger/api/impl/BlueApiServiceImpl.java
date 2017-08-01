package io.swagger.api.impl;

import io.swagger.api.*;
import io.swagger.model.*;

import org.apache.cxf.jaxrs.ext.multipart.Attachment;

import io.swagger.model.GetMultibranchPipeline;
import io.swagger.model.GetOrganisations;
import io.swagger.model.GetPipelines;
import io.swagger.model.IojenkinsblueoceanrestimplpipelineBranchImpl;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl;
import io.swagger.model.IojenkinsblueoceanserviceembeddedrestPipelineImpl;
import io.swagger.model.SwaggyjenkinsOrganisation;
import io.swagger.model.SwaggyjenkinsPipeline;
import io.swagger.model.SwaggyjenkinsUser;

import java.util.List;

import java.io.InputStream;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;

@RequestScoped
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJAXRSCXFCDIServerCodegen", date = "2017-07-25T10:45:05.448+10:00")
public class BlueApiServiceImpl implements BlueApiService {
      @Override
      public Response getAuthenticatedUser(String organisation, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getClasses(String propertyClass, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getOrganisation(String organisation, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getOrganisations(SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getPipelineBranchByOrg(String organisation, String pipeline, String branch, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getPipelineBranchesByOrg(String organisation, String pipeline, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getPipelineByOrg(String organisation, String pipeline, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getPipelineFolderByOrg(String organisation, String folder, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getPipelineFolderByOrg_1(String organisation, String pipeline, String folder, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getPipelinesByOrg(String organisation, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getUser(String organisation, String user, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response getUsers(String organisation, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response search(String q, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
      @Override
      public Response search_2(String q, SecurityContext securityContext) {
      // do some magic!
      return Response.ok().entity("magic!").build();
  }
}
