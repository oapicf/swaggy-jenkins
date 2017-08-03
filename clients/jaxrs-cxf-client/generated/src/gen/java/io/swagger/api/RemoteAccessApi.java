package io.swagger.api;

import io.swagger.model.ComputerSet;
import io.swagger.model.DefaultCrumbIssuer;
import io.swagger.model.FreeStyleBuild;
import io.swagger.model.FreeStyleProject;
import io.swagger.model.Hudson;
import io.swagger.model.ListView;
import io.swagger.model.Queue;

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

@Path("/")
@Api(value = "/", description = "")
public interface RemoteAccessApi  {

    @GET
    @Path("/computer/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved computer details", response = ComputerSet.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public ComputerSet getComputer(@QueryParam("depth")Integer depth);

    @GET
    @Path("/crumbIssuer/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved CSRF protection token", response = DefaultCrumbIssuer.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public DefaultCrumbIssuer getCrumb();

    @GET
    @Path("/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins details", response = Hudson.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public Hudson getJenkins();

    @GET
    @Path("/job/{name}/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job details", response = FreeStyleProject.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = .class) })
    public FreeStyleProject getJob(@PathParam("name") String name);

    @GET
    @Path("/job/{name}/config.xml")
    @Produces({ "text/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = .class) })
    public String getJobConfig(@PathParam("name") String name);

    @GET
    @Path("/job/{name}/lastBuild/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's last build details", response = FreeStyleBuild.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = .class) })
    public FreeStyleBuild getJobLastBuild(@PathParam("name") String name);

    @GET
    @Path("/job/{name}/{number}/logText/progressiveText")
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job's build progressive text output", response = .class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = .class) })
    public void getJobProgressiveText(@PathParam("name") String name, @PathParam("number") String number, @QueryParam("start")String start);

    @GET
    @Path("/queue/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queue details", response = Queue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public Queue getQueue();

    @GET
    @Path("/queue/item/{number}/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queued item details", response = Queue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public Queue getQueueItem(@PathParam("number") String number);

    @GET
    @Path("/view/{name}/api/json")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view details", response = ListView.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = .class) })
    public ListView getView(@PathParam("name") String name);

    @GET
    @Path("/view/{name}/config.xml")
    @Produces({ "text/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved view configuration in config.xml format", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = .class) })
    public String getViewConfig(@PathParam("name") String name);

    @HEAD
    @Path("/api/json")
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved Jenkins headers", response = .class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public void headJenkins();

    @POST
    @Path("/createItem")
    @Produces({ "text/html" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created a new job", response = .class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public void postCreateItem(@QueryParam("name")String name, @QueryParam("from")String from, @QueryParam("mode")String mode, String body, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb, @HeaderParam("Content-Type") String contentType);

    @POST
    @Path("/createView")
    @Produces({ "text/html" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully created the view", response = .class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public void postCreateView(@QueryParam("name")String name, String body, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb, @HeaderParam("Content-Type") String contentType);

    @POST
    @Path("/job/{name}/build")
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully built the job (backward compatibility for older versions of Jenkins)", response = .class),
        @ApiResponse(code = 201, message = "Successfully built the job", response = .class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = .class) })
    public void postJobBuild(@PathParam("name") String name, @QueryParam("json")String json, @QueryParam("token")String token, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/job/{name}/config.xml")
    @Produces({ "text/xml" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved job configuration in config.xml format", response = .class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = .class) })
    public void postJobConfig(@PathParam("name") String name, String body, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/job/{name}/doDelete")
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully deleted the job", response = .class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = .class) })
    public void postJobDelete(@PathParam("name") String name, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/job/{name}/disable")
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully disabled the job", response = .class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = .class) })
    public void postJobDisable(@PathParam("name") String name, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/job/{name}/enable")
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully enabled the job", response = .class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = .class) })
    public void postJobEnable(@PathParam("name") String name, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/job/{name}/lastBuild/stop")
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully stopped the job", response = .class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Job cannot be found on Jenkins instance", response = .class) })
    public void postJobLastBuildStop(@PathParam("name") String name, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);

    @POST
    @Path("/view/{name}/config.xml")
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully updated view configuration", response = .class),
        @ApiResponse(code = 400, message = "An error has occurred - error message is embedded inside the HTML response", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "View cannot be found on Jenkins instance", response = .class) })
    public void postViewConfig(@PathParam("name") String name, String body, @HeaderParam("Jenkins-Crumb") String jenkinsCrumb);
}

