package controllers;

import apimodels.BranchImpl;
import apimodels.FavoriteImpl;
import apimodels.GithubOrganization;
import apimodels.GithubScm;
import apimodels.MultibranchPipeline;
import apimodels.Organisation;
import apimodels.Pipeline;
import apimodels.PipelineActivity;
import apimodels.PipelineFolderImpl;
import apimodels.PipelineImpl;
import apimodels.PipelineRun;
import apimodels.PipelineRunNode;
import apimodels.PipelineStepImpl;
import apimodels.QueueItemImpl;
import apimodels.User;

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.io.FileInputStream;
import play.libs.Files.TemporaryFile;
import javax.validation.constraints.*;
import javax.validation.Valid;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2025-05-10T02:40:11.853719842Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class BlueOceanApiControllerImp extends BlueOceanApiControllerImpInterface {
    @Override
    public void deletePipelineQueueItem(Http.Request request, String organization, String pipeline, String queue) throws Exception {
        //Do your magic!!!
    }

    @Override
    public User getAuthenticatedUser(Http.Request request, String organization) throws Exception {
        //Do your magic!!!
        return new User();
    }

    @Override
    public String getClasses(Http.Request request, String propertyClass) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public String getJsonWebKey(Http.Request request, Integer key) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public String getJsonWebToken(Http.Request request, Integer expiryTimeInMins, Integer maxExpiryTimeInMins) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public Organisation getOrganisation(Http.Request request, String organization) throws Exception {
        //Do your magic!!!
        return new Organisation();
    }

    @Override
    public List<Organisation> getOrganisations(Http.Request request) throws Exception {
        //Do your magic!!!
        return new ArrayList<Organisation>();
    }

    @Override
    public Pipeline getPipeline(Http.Request request, String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new Pipeline();
    }

    @Override
    public List<PipelineActivity> getPipelineActivities(Http.Request request, String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new ArrayList<PipelineActivity>();
    }

    @Override
    public BranchImpl getPipelineBranch(Http.Request request, String organization, String pipeline, String branch) throws Exception {
        //Do your magic!!!
        return new BranchImpl();
    }

    @Override
    public PipelineRun getPipelineBranchRun(Http.Request request, String organization, String pipeline, String branch, String run) throws Exception {
        //Do your magic!!!
        return new PipelineRun();
    }

    @Override
    public MultibranchPipeline getPipelineBranches(Http.Request request, String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new MultibranchPipeline();
    }

    @Override
    public PipelineFolderImpl getPipelineFolder(Http.Request request, String organization, String folder) throws Exception {
        //Do your magic!!!
        return new PipelineFolderImpl();
    }

    @Override
    public PipelineImpl getPipelineFolderPipeline(Http.Request request, String organization, String pipeline, String folder) throws Exception {
        //Do your magic!!!
        return new PipelineImpl();
    }

    @Override
    public List<QueueItemImpl> getPipelineQueue(Http.Request request, String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new ArrayList<QueueItemImpl>();
    }

    @Override
    public PipelineRun getPipelineRun(Http.Request request, String organization, String pipeline, String run) throws Exception {
        //Do your magic!!!
        return new PipelineRun();
    }

    @Override
    public String getPipelineRunLog(Http.Request request, String organization, String pipeline, String run, Integer start, Boolean download) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public PipelineRunNode getPipelineRunNode(Http.Request request, String organization, String pipeline, String run, String node) throws Exception {
        //Do your magic!!!
        return new PipelineRunNode();
    }

    @Override
    public PipelineStepImpl getPipelineRunNodeStep(Http.Request request, String organization, String pipeline, String run, String node, String step) throws Exception {
        //Do your magic!!!
        return new PipelineStepImpl();
    }

    @Override
    public String getPipelineRunNodeStepLog(Http.Request request, String organization, String pipeline, String run, String node, String step) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public List<PipelineStepImpl> getPipelineRunNodeSteps(Http.Request request, String organization, String pipeline, String run, String node) throws Exception {
        //Do your magic!!!
        return new ArrayList<PipelineStepImpl>();
    }

    @Override
    public List<PipelineRunNode> getPipelineRunNodes(Http.Request request, String organization, String pipeline, String run) throws Exception {
        //Do your magic!!!
        return new ArrayList<PipelineRunNode>();
    }

    @Override
    public List<PipelineRun> getPipelineRuns(Http.Request request, String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new ArrayList<PipelineRun>();
    }

    @Override
    public List<Pipeline> getPipelines(Http.Request request, String organization) throws Exception {
        //Do your magic!!!
        return new ArrayList<Pipeline>();
    }

    @Override
    public GithubScm getSCM(Http.Request request, String organization, String scm) throws Exception {
        //Do your magic!!!
        return new GithubScm();
    }

    @Override
    public List<GithubOrganization> getSCMOrganisationRepositories(Http.Request request, String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber) throws Exception {
        //Do your magic!!!
        return new ArrayList<GithubOrganization>();
    }

    @Override
    public List<GithubOrganization> getSCMOrganisationRepository(Http.Request request, String organization, String scm, String scmOrganisation, String repository, String credentialId) throws Exception {
        //Do your magic!!!
        return new ArrayList<GithubOrganization>();
    }

    @Override
    public List<GithubOrganization> getSCMOrganisations(Http.Request request, String organization, String scm, String credentialId) throws Exception {
        //Do your magic!!!
        return new ArrayList<GithubOrganization>();
    }

    @Override
    public User getUser(Http.Request request, String organization, String user) throws Exception {
        //Do your magic!!!
        return new User();
    }

    @Override
    public List<FavoriteImpl> getUserFavorites(Http.Request request, String user) throws Exception {
        //Do your magic!!!
        return new ArrayList<FavoriteImpl>();
    }

    @Override
    public User getUsers(Http.Request request, String organization) throws Exception {
        //Do your magic!!!
        return new User();
    }

    @Override
    public QueueItemImpl postPipelineRun(Http.Request request, String organization, String pipeline, String run) throws Exception {
        //Do your magic!!!
        return new QueueItemImpl();
    }

    @Override
    public QueueItemImpl postPipelineRuns(Http.Request request, String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new QueueItemImpl();
    }

    @Override
    public FavoriteImpl putPipelineFavorite(Http.Request request, String organization, String pipeline, Boolean body) throws Exception {
        //Do your magic!!!
        return new FavoriteImpl();
    }

    @Override
    public PipelineRun putPipelineRun(Http.Request request, String organization, String pipeline, String run, String blocking, Integer timeOutInSecs) throws Exception {
        //Do your magic!!!
        return new PipelineRun();
    }

    @Override
    public String search(Http.Request request, @NotNull String q) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public String searchClasses(Http.Request request, @NotNull String q) throws Exception {
        //Do your magic!!!
        return new String();
    }

}
