package controllers;

import apimodels.Body;
import apimodels.BranchImpl;
import apimodels.FavoriteImpl;
import apimodels.GithubScm;
import apimodels.MultibranchPipeline;
import apimodels.Organisation;
import apimodels.Organisations;
import apimodels.Pipeline;
import apimodels.PipelineActivities;
import apimodels.PipelineFolderImpl;
import apimodels.PipelineImpl;
import apimodels.PipelineQueue;
import apimodels.PipelineRun;
import apimodels.PipelineRunNode;
import apimodels.PipelineRunNodeSteps;
import apimodels.PipelineRunNodes;
import apimodels.PipelineRuns;
import apimodels.PipelineStepImpl;
import apimodels.Pipelines;
import apimodels.QueueItemImpl;
import apimodels.ScmOrganisations;
import apimodels.User;
import apimodels.UserFavorites;

import play.mvc.Http;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.io.FileInputStream;
import javax.validation.constraints.*;
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-09T15:08:36.893Z[GMT]")

public class BlueOceanApiControllerImp implements BlueOceanApiControllerImpInterface {
    @Override
    public void deletePipelineQueueItem(String organization, String pipeline, String queue) throws Exception {
        //Do your magic!!!
    }

    @Override
    public User getAuthenticatedUser(String organization) throws Exception {
        //Do your magic!!!
        return new User();
    }

    @Override
    public String getClasses(String propertyClass) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public String getJsonWebKey(Integer key) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public String getJsonWebToken(Integer expiryTimeInMins, Integer maxExpiryTimeInMins) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public Organisation getOrganisation(String organization) throws Exception {
        //Do your magic!!!
        return new Organisation();
    }

    @Override
    public Organisations getOrganisations() throws Exception {
        //Do your magic!!!
        return new Organisations();
    }

    @Override
    public Pipeline getPipeline(String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new Pipeline();
    }

    @Override
    public PipelineActivities getPipelineActivities(String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new PipelineActivities();
    }

    @Override
    public BranchImpl getPipelineBranch(String organization, String pipeline, String branch) throws Exception {
        //Do your magic!!!
        return new BranchImpl();
    }

    @Override
    public PipelineRun getPipelineBranchRun(String organization, String pipeline, String branch, String run) throws Exception {
        //Do your magic!!!
        return new PipelineRun();
    }

    @Override
    public MultibranchPipeline getPipelineBranches(String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new MultibranchPipeline();
    }

    @Override
    public PipelineFolderImpl getPipelineFolder(String organization, String folder) throws Exception {
        //Do your magic!!!
        return new PipelineFolderImpl();
    }

    @Override
    public PipelineImpl getPipelineFolderPipeline(String organization, String pipeline, String folder) throws Exception {
        //Do your magic!!!
        return new PipelineImpl();
    }

    @Override
    public PipelineQueue getPipelineQueue(String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new PipelineQueue();
    }

    @Override
    public PipelineRun getPipelineRun(String organization, String pipeline, String run) throws Exception {
        //Do your magic!!!
        return new PipelineRun();
    }

    @Override
    public String getPipelineRunLog(String organization, String pipeline, String run, Integer start, Boolean download) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public PipelineRunNode getPipelineRunNode(String organization, String pipeline, String run, String node) throws Exception {
        //Do your magic!!!
        return new PipelineRunNode();
    }

    @Override
    public PipelineStepImpl getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step) throws Exception {
        //Do your magic!!!
        return new PipelineStepImpl();
    }

    @Override
    public String getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public PipelineRunNodeSteps getPipelineRunNodeSteps(String organization, String pipeline, String run, String node) throws Exception {
        //Do your magic!!!
        return new PipelineRunNodeSteps();
    }

    @Override
    public PipelineRunNodes getPipelineRunNodes(String organization, String pipeline, String run) throws Exception {
        //Do your magic!!!
        return new PipelineRunNodes();
    }

    @Override
    public PipelineRuns getPipelineRuns(String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new PipelineRuns();
    }

    @Override
    public Pipelines getPipelines(String organization) throws Exception {
        //Do your magic!!!
        return new Pipelines();
    }

    @Override
    public GithubScm getSCM(String organization, String scm) throws Exception {
        //Do your magic!!!
        return new GithubScm();
    }

    @Override
    public ScmOrganisations getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber) throws Exception {
        //Do your magic!!!
        return new ScmOrganisations();
    }

    @Override
    public ScmOrganisations getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, String credentialId) throws Exception {
        //Do your magic!!!
        return new ScmOrganisations();
    }

    @Override
    public ScmOrganisations getSCMOrganisations(String organization, String scm, String credentialId) throws Exception {
        //Do your magic!!!
        return new ScmOrganisations();
    }

    @Override
    public User getUser(String organization, String user) throws Exception {
        //Do your magic!!!
        return new User();
    }

    @Override
    public UserFavorites getUserFavorites(String user) throws Exception {
        //Do your magic!!!
        return new UserFavorites();
    }

    @Override
    public User getUsers(String organization) throws Exception {
        //Do your magic!!!
        return new User();
    }

    @Override
    public QueueItemImpl postPipelineRun(String organization, String pipeline, String run) throws Exception {
        //Do your magic!!!
        return new QueueItemImpl();
    }

    @Override
    public QueueItemImpl postPipelineRuns(String organization, String pipeline) throws Exception {
        //Do your magic!!!
        return new QueueItemImpl();
    }

    @Override
    public FavoriteImpl putPipelineFavorite(String organization, String pipeline, Body body) throws Exception {
        //Do your magic!!!
        return new FavoriteImpl();
    }

    @Override
    public PipelineRun putPipelineRun(String organization, String pipeline, String run, String blocking, Integer timeOutInSecs) throws Exception {
        //Do your magic!!!
        return new PipelineRun();
    }

    @Override
    public String search( @NotNull String q) throws Exception {
        //Do your magic!!!
        return new String();
    }

    @Override
    public String searchClasses( @NotNull String q) throws Exception {
        //Do your magic!!!
        return new String();
    }

}
