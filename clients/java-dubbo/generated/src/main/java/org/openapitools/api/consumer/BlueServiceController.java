package org.openapitools.api.consumer;

import org.openapitools.model.BranchImpl;
import org.openapitools.model.FavoriteImpl;
import org.openapitools.model.GithubOrganization;
import org.openapitools.model.GithubScm;
import org.openapitools.model.MultibranchPipeline;
import org.openapitools.model.Organisation;
import org.openapitools.model.Pipeline;
import org.openapitools.model.PipelineActivity;
import org.openapitools.model.PipelineFolderImpl;
import org.openapitools.model.PipelineImpl;
import org.openapitools.model.PipelineRun;
import org.openapitools.model.PipelineRunNode;
import org.openapitools.model.PipelineStepImpl;
import org.openapitools.model.QueueItemImpl;
import org.openapitools.model.User;
import org.openapitools.model.*;
import org.openapitools.api.interfaces.BlueService;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

@RestController
@RequestMapping("/blue")
public class BlueServiceController {

    @DubboReference
    private BlueService blueService;

    @RequestMapping(method = RequestMethod.DELETE, value = "/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}")
    public void deletePipelineQueueItem(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "queue") String queue
    ) {
        blueService.deletePipelineQueueItem(organization, pipeline, queue);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/user/")
    public User getAuthenticatedUser(
        @RequestParam(name = "organization") String organization
    ) {
        return blueService.getAuthenticatedUser(organization);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/classes/{class}")
    public String getClasses(
        @RequestParam(name = "propertyClass") String propertyClass
    ) {
        return blueService.getClasses(propertyClass);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}")
    public Organisation getOrganisation(
        @RequestParam(name = "organization") String organization
    ) {
        return blueService.getOrganisation(organization);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/")
    public List<Organisation> getOrganisations(
    ) {
        return blueService.getOrganisations();
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}")
    public Pipeline getPipeline(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline
    ) {
        return blueService.getPipeline(organization, pipeline);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/activities")
    public List<PipelineActivity> getPipelineActivities(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline
    ) {
        return blueService.getPipelineActivities(organization, pipeline);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/")
    public BranchImpl getPipelineBranch(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "branch") String branch
    ) {
        return blueService.getPipelineBranch(organization, pipeline, branch);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}")
    public PipelineRun getPipelineBranchRun(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "branch") String branch,
        @RequestParam(name = "run") String run
    ) {
        return blueService.getPipelineBranchRun(organization, pipeline, branch, run);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/branches")
    public MultibranchPipeline getPipelineBranches(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline
    ) {
        return blueService.getPipelineBranches(organization, pipeline);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{folder}/")
    public PipelineFolderImpl getPipelineFolder(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "folder") String folder
    ) {
        return blueService.getPipelineFolder(organization, folder);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}")
    public PipelineImpl getPipelineFolderPipeline(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "folder") String folder
    ) {
        return blueService.getPipelineFolderPipeline(organization, pipeline, folder);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/queue")
    public List<QueueItemImpl> getPipelineQueue(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline
    ) {
        return blueService.getPipelineQueue(organization, pipeline);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}")
    public PipelineRun getPipelineRun(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "run") String run
    ) {
        return blueService.getPipelineRun(organization, pipeline, run);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log")
    public String getPipelineRunLog(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "run") String run,
        @RequestParam(name = "start") Integer start,
        @RequestParam(name = "download") Boolean download
    ) {
        return blueService.getPipelineRunLog(organization, pipeline, run, start, download);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}")
    public PipelineRunNode getPipelineRunNode(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "run") String run,
        @RequestParam(name = "node") String node
    ) {
        return blueService.getPipelineRunNode(organization, pipeline, run, node);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}")
    public PipelineStepImpl getPipelineRunNodeStep(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "run") String run,
        @RequestParam(name = "node") String node,
        @RequestParam(name = "step") String step
    ) {
        return blueService.getPipelineRunNodeStep(organization, pipeline, run, node, step);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log")
    public String getPipelineRunNodeStepLog(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "run") String run,
        @RequestParam(name = "node") String node,
        @RequestParam(name = "step") String step
    ) {
        return blueService.getPipelineRunNodeStepLog(organization, pipeline, run, node, step);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps")
    public List<PipelineStepImpl> getPipelineRunNodeSteps(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "run") String run,
        @RequestParam(name = "node") String node
    ) {
        return blueService.getPipelineRunNodeSteps(organization, pipeline, run, node);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes")
    public List<PipelineRunNode> getPipelineRunNodes(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "run") String run
    ) {
        return blueService.getPipelineRunNodes(organization, pipeline, run);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    public List<PipelineRun> getPipelineRuns(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline
    ) {
        return blueService.getPipelineRuns(organization, pipeline);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/pipelines/")
    public List<Pipeline> getPipelines(
        @RequestParam(name = "organization") String organization
    ) {
        return blueService.getPipelines(organization);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/scm/{scm}")
    public GithubScm getSCM(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "scm") String scm
    ) {
        return blueService.getSCM(organization, scm);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories")
    public List<GithubOrganization> getSCMOrganisationRepositories(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "scm") String scm,
        @RequestParam(name = "scmOrganisation") String scmOrganisation,
        @RequestParam(name = "credentialId") String credentialId,
        @RequestParam(name = "pageSize") Integer pageSize,
        @RequestParam(name = "pageNumber") Integer pageNumber
    ) {
        return blueService.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}")
    public List<GithubOrganization> getSCMOrganisationRepository(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "scm") String scm,
        @RequestParam(name = "scmOrganisation") String scmOrganisation,
        @RequestParam(name = "repository") String repository,
        @RequestParam(name = "credentialId") String credentialId
    ) {
        return blueService.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/scm/{scm}/organizations")
    public List<GithubOrganization> getSCMOrganisations(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "scm") String scm,
        @RequestParam(name = "credentialId") String credentialId
    ) {
        return blueService.getSCMOrganisations(organization, scm, credentialId);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/users/{user}")
    public User getUser(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "user") String user
    ) {
        return blueService.getUser(organization, user);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/users/{user}/favorites")
    public List<FavoriteImpl> getUserFavorites(
        @RequestParam(name = "user") String user
    ) {
        return blueService.getUserFavorites(user);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/organizations/{organization}/users/")
    public User getUsers(
        @RequestParam(name = "organization") String organization
    ) {
        return blueService.getUsers(organization);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay")
    public QueueItemImpl postPipelineRun(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "run") String run
    ) {
        return blueService.postPipelineRun(organization, pipeline, run);
    }

    @RequestMapping(method = RequestMethod.POST, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs")
    public QueueItemImpl postPipelineRuns(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline
    ) {
        return blueService.postPipelineRuns(organization, pipeline);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/rest/organizations/{organization}/pipelines/{pipeline}/favorite")
    public FavoriteImpl putPipelineFavorite(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "body") Boolean body
    ) {
        return blueService.putPipelineFavorite(organization, pipeline, body);
    }

    @RequestMapping(method = RequestMethod.PUT, value = "/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop")
    public PipelineRun putPipelineRun(
        @RequestParam(name = "organization") String organization,
        @RequestParam(name = "pipeline") String pipeline,
        @RequestParam(name = "run") String run,
        @RequestParam(name = "blocking") String blocking,
        @RequestParam(name = "timeOutInSecs") Integer timeOutInSecs
    ) {
        return blueService.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/search/")
    public String search(
        @RequestParam(name = "q") String q
    ) {
        return blueService.search(q);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/rest/classes/")
    public String searchClasses(
        @RequestParam(name = "q") String q
    ) {
        return blueService.searchClasses(q);
    }
}
