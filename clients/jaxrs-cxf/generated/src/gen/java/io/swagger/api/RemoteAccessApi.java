package io.swagger.api;

import io.swagger.model.HudsonmodelComputerSet;
import io.swagger.model.HudsonmodelFreeStyleBuild;
import io.swagger.model.HudsonmodelFreeStyleProject;
import io.swagger.model.HudsonmodelHudson;
import io.swagger.model.HudsonmodelListView;
import io.swagger.model.HudsonmodelQueue;
import io.swagger.model.HudsonsecuritycsrfDefaultCrumbIssuer;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.MediaType;
import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponses;
import io.swagger.annotations.ApiResponse;
import io.swagger.jaxrs.PATCH;
import javax.validation.constraints.*;
import javax.validation.Valid;

@Path("/")
@Api(value = "/", description = "")
public interface RemoteAccessApi  {

    @GET
    @Path("/computer/api/json?depth=1")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved computer details", response = HudsonmodelComputerSet.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public HudsonmodelComputerSet getComputer();

    @GET
    @Path("/crumbIssuer/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = HudsonsecuritycsrfDefaultCrumbIssuer.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public HudsonsecuritycsrfDefaultCrumbIssuer getCrumb();

    @GET
    @Path("/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins details", response = HudsonmodelHudson.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public HudsonmodelHudson getJenkins();

    @GET
    @Path("/job/{name}/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job details", response = HudsonmodelFreeStyleProject.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    public HudsonmodelFreeStyleProject getJob(@PathParam("name") String name);

    @GET
    @Path("/job/{name}/config.xml")
    @Produces({ "text/xml" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    public String getJobConfig(@PathParam("name") String name);

    @GET
    @Path("/job/{name}/lastBuild/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's last build details", response = HudsonmodelFreeStyleBuild.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    public HudsonmodelFreeStyleBuild getJobLastBuild(@PathParam("name") String name);

    @GET
    @Path("/job/{name}/{number}/logText/progressiveText")
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's build progressive text output"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    public void getJobProgressiveText(@PathParam("name") String name, @PathParam("number") String number, @QueryParam("start") @NotNull String start);

    @GET
    @Path("/queue/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queue details", response = HudsonmodelQueue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public HudsonmodelQueue getQueue();

    @GET
    @Path("/queue/item/{number}/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queued item details", response = HudsonmodelQueue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public HudsonmodelQueue getQueueItem(@PathParam("number") String number);

    @GET
    @Path("/view/{name}/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view details", response = HudsonmodelListView.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance") })
    public HudsonmodelListView getView(@PathParam("name") String name);

    @GET
    @Path("/view/{name}/config.xml")
    @Produces({ "text/xml" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance") })
    public String getViewConfig(@PathParam("name") String name);

    @HEAD
    @Path("/api/json")
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins headers"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public void headJenkins();

    @POST
    @Path("/createItem")
    @Produces({ "text/html" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created a new job"),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public void postCreateItem(@QueryParam("name") @NotNull String name, @QueryParam("from") String from, @QueryParam("mode") String mode, @Valid String body, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb, @HeaderParam("Content-Type") String contentType);

    @POST
    @Path("/createView")
    @Produces({ "text/html" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created the view"),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password") })
    public void postCreateView(@QueryParam("name") @NotNull String name, @Valid String body, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb, @HeaderParam("Content-Type") String contentType);

    @POST
    @Path("/job/{name}/build")
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully built the job (backward compatibility for older versions of Jenkins)"),
        @ApiResponse(code = 201, message = "Successfully built the job"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    public void postJobBuild(@PathParam("name") String name, @QueryParam("json") @NotNull String json, @QueryParam("token") String token, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/job/{name}/config.xml")
    @Produces({ "text/xml" })
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format"),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    public void postJobConfig(@PathParam("name") String name, @Valid String body, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/job/{name}/doDelete")
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully deleted the job"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    public void postJobDelete(@PathParam("name") String name, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/job/{name}/disable")
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully disabled the job"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    public void postJobDisable(@PathParam("name") String name, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/job/{name}/enable")
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully enabled the job"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    public void postJobEnable(@PathParam("name") String name, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/job/{name}/lastBuild/stop")
    @ApiOperation(value = "", tags={ "remoteAccess",  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully stopped the job"),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance") })
    public void postJobLastBuildStop(@PathParam("name") String name, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/view/{name}/config.xml")
    @ApiOperation(value = "", tags={ "remoteAccess" })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully updated view configuration"),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password"),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password"),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance") })
    public void postViewConfig(@PathParam("name") String name, @Valid String body, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);
}

