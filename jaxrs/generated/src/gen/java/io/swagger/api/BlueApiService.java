package io.swagger.api;

import io.swagger.api.*;
import io.swagger.model.*;

import org.glassfish.jersey.media.multipart.FormDataContentDisposition;

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
import io.swagger.api.NotFoundException;

import java.io.InputStream;

import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaJerseyServerCodegen", date = "2017-07-25T10:45:00.143+10:00")
public abstract class BlueApiService {
    public abstract Response getAuthenticatedUser(String organisation,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getClasses(String propertyClass,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getOrganisation(String organisation,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getOrganisations(SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineBranchByOrg(String organisation,String pipeline,String branch,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineBranchesByOrg(String organisation,String pipeline,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineByOrg(String organisation,String pipeline,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineFolderByOrg(String organisation,String folder,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelineFolderByOrg_1(String organisation,String pipeline,String folder,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getPipelinesByOrg(String organisation,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getUser(String organisation,String user,SecurityContext securityContext) throws NotFoundException;
    public abstract Response getUsers(String organisation,SecurityContext securityContext) throws NotFoundException;
    public abstract Response search( @NotNull String q,SecurityContext securityContext) throws NotFoundException;
    public abstract Response search_2( @NotNull String q,SecurityContext securityContext) throws NotFoundException;
}
