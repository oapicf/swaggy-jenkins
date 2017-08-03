package io.swagger.api;

import io.swagger.model.BranchImpl;
import io.swagger.model.FavoriteImpl;
import io.swagger.model.GithubScm;
import io.swagger.model.MultibranchPipeline;
import io.swagger.model.Organisation;
import io.swagger.model.Organisations;
import io.swagger.model.Pipeline;
import io.swagger.model.PipelineActivities;
import io.swagger.model.PipelineFolderImpl;
import io.swagger.model.PipelineImpl;
import io.swagger.model.PipelineQueue;
import io.swagger.model.PipelineRun;
import io.swagger.model.PipelineRunNode;
import io.swagger.model.PipelineRunNodeSteps;
import io.swagger.model.PipelineRunNodes;
import io.swagger.model.PipelineRuns;
import io.swagger.model.PipelineStepImpl;
import io.swagger.model.Pipelines;
import io.swagger.model.QueueItemImpl;
import io.swagger.model.ScmOrganisations;
import io.swagger.model.User;
import io.swagger.model.UserFavorites;

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
public interface BlueOceanApi  {

    @DELETE
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully deleted queue item", response = .class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public void deletePipelineQueueItem(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("queue") String queue);

    @GET
    @Path("/blue/rest/organizations/{organization}/user/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved authenticated user details", response = User.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public User getAuthenticatedUser(@PathParam("organization") String organization);

    @GET
    @Path("/blue/rest/classes/{class}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved class names", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public String getClasses(@PathParam("class") String propertyClass);

    @GET
    @Path("/blue/rest/organizations/{organization}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = Organisation.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = .class) })
    public Organisation getOrganisation(@PathParam("organization") String organization);

    @GET
    @Path("/blue/rest/organizations/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = Organisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public Organisations getOrganisations();

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = Pipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class),
        @ApiResponse(code = 404, message = "Pipeline cannot be found on Jenkins instance", response = .class) })
    public Pipeline getPipeline(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved all activities details", response = PipelineActivities.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineActivities getPipelineActivities(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved branch details", response = BranchImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public BranchImpl getPipelineBranch(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("branch") String branch);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run details", response = PipelineRun.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineRun getPipelineBranchRun(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("branch") String branch, @PathParam("run") String run);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved all branches details", response = MultibranchPipeline.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public MultibranchPipeline getPipelineBranches(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{folder}/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved folder details", response = PipelineFolderImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineFolderImpl getPipelineFolder(@PathParam("organization") String organization, @PathParam("folder") String folder);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline details", response = PipelineImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineImpl getPipelineFolderPipeline(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("folder") String folder);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved queue details", response = PipelineQueue.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineQueue getPipelineQueue(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run details", response = PipelineRun.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineRun getPipelineRun(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline run log", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public String getPipelineRunLog(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @QueryParam("start")Integer start, @QueryParam("download")Boolean download);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run node details", response = PipelineRunNode.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineRunNode getPipelineRunNode(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @PathParam("node") String node);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run node step details", response = PipelineStepImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineStepImpl getPipelineRunNodeStep(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @PathParam("node") String node, @PathParam("step") String step);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipeline run node step log", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public String getPipelineRunNodeStepLog(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @PathParam("node") String node, @PathParam("step") String step);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run node steps details", response = PipelineRunNodeSteps.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineRunNodeSteps getPipelineRunNodeSteps(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @PathParam("node") String node);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved run nodes details", response = PipelineRunNodes.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineRunNodes getPipelineRunNodes(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved runs details", response = PipelineRuns.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineRuns getPipelineRuns(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline);

    @GET
    @Path("/blue/rest/organizations/{organization}/pipelines/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved pipelines details", response = Pipelines.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public Pipelines getPipelines(@PathParam("organization") String organization);

    @GET
    @Path("/blue/rest/organizations/{organization}/scm/{scm}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM details", response = GithubScm.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public GithubScm getSCM(@PathParam("organization") String organization, @PathParam("scm") String scm);

    @GET
    @Path("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM organization repositories details", response = ScmOrganisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public ScmOrganisations getSCMOrganisationRepositories(@PathParam("organization") String organization, @PathParam("scm") String scm, @PathParam("scmOrganisation") String scmOrganisation, @QueryParam("credentialId")String credentialId, @QueryParam("pageSize")Integer pageSize, @QueryParam("pageNumber")Integer pageNumber);

    @GET
    @Path("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM organizations details", response = ScmOrganisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public ScmOrganisations getSCMOrganisationRepository(@PathParam("organization") String organization, @PathParam("scm") String scm, @PathParam("scmOrganisation") String scmOrganisation, @PathParam("repository") String repository, @QueryParam("credentialId")String credentialId);

    @GET
    @Path("/blue/rest/organizations/{organization}/scm/{scm}/organizations")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved SCM organizations details", response = ScmOrganisations.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public ScmOrganisations getSCMOrganisations(@PathParam("organization") String organization, @PathParam("scm") String scm, @QueryParam("credentialId")String credentialId);

    @GET
    @Path("/blue/rest/organizations/{organization}/users/{user}")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = User.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public User getUser(@PathParam("organization") String organization, @PathParam("user") String user);

    @GET
    @Path("/blue/rest/users/{user}/favorites")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users favorites details", response = UserFavorites.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public UserFavorites getUserFavorites(@PathParam("user") String user);

    @GET
    @Path("/blue/rest/organizations/{organization}/users/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved users details", response = User.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public User getUsers(@PathParam("organization") String organization);

    @POST
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully replayed a pipeline run", response = QueueItemImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public QueueItemImpl postPipelineRun(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run);

    @POST
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully started a build", response = QueueItemImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public QueueItemImpl postPipelineRuns(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline);

    @PUT
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully favorited/unfavorited a pipeline", response = FavoriteImpl.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public FavoriteImpl putPipelineFavorite(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, String body);

    @PUT
    @Path("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully stopped a build", response = PipelineRun.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public PipelineRun putPipelineRun(@PathParam("organization") String organization, @PathParam("pipeline") String pipeline, @PathParam("run") String run, @QueryParam("blocking")String blocking, @QueryParam("timeOutInSecs")Integer timeOutInSecs);

    @GET
    @Path("/blue/rest/search/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public String search(@QueryParam("q")String q);

    @GET
    @Path("/blue/rest/classes/")
    @Produces({ "application/json" })
    @ApiOperation(value = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(code = 200, message = "Successfully retrieved search result", response = String.class),
        @ApiResponse(code = 401, message = "Authentication failed - incorrect username and/or password", response = .class),
        @ApiResponse(code = 403, message = "Jenkins requires authentication - please set username and password", response = .class) })
    public String searchClasses(@QueryParam("q")String q);
}

