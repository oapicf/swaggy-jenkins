package org.openapitools.api.impl;

import org.openapitools.api.*;
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

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import org.apache.cxf.jaxrs.model.wadl.Description;
import org.apache.cxf.jaxrs.model.wadl.DocTarget;

import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;

/**
 * Swaggy Jenkins
 *
 * <p>Jenkins API clients generated from Swagger / Open API specification
 *
 */
public class BlueOceanApiServiceImpl implements BlueOceanApi {
    @Override
    public void deletePipelineQueueItem(String organization, String pipeline, String queue) {
        // TODO: Implement...

    }

    @Override
    public User getAuthenticatedUser(String organization) {
        // TODO: Implement...
        return null;
    }

    @Override
    public String getClasses(String propertyClass) {
        // TODO: Implement...
        return null;
    }

    @Override
    public String getJsonWebKey(Integer key) {
        // TODO: Implement...
        return null;
    }

    @Override
    public String getJsonWebToken(Integer expiryTimeInMins, Integer maxExpiryTimeInMins) {
        // TODO: Implement...
        return null;
    }

    @Override
    public Organisation getOrganisation(String organization) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<Organisation> getOrganisations() {
        // TODO: Implement...
        return null;
    }

    @Override
    public Pipeline getPipeline(String organization, String pipeline) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<PipelineActivity> getPipelineActivities(String organization, String pipeline) {
        // TODO: Implement...
        return null;
    }

    @Override
    public BranchImpl getPipelineBranch(String organization, String pipeline, String branch) {
        // TODO: Implement...
        return null;
    }

    @Override
    public PipelineRun getPipelineBranchRun(String organization, String pipeline, String branch, String run) {
        // TODO: Implement...
        return null;
    }

    @Override
    public MultibranchPipeline getPipelineBranches(String organization, String pipeline) {
        // TODO: Implement...
        return null;
    }

    @Override
    public PipelineFolderImpl getPipelineFolder(String organization, String folder) {
        // TODO: Implement...
        return null;
    }

    @Override
    public PipelineImpl getPipelineFolderPipeline(String organization, String pipeline, String folder) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<QueueItemImpl> getPipelineQueue(String organization, String pipeline) {
        // TODO: Implement...
        return null;
    }

    @Override
    public PipelineRun getPipelineRun(String organization, String pipeline, String run) {
        // TODO: Implement...
        return null;
    }

    @Override
    public String getPipelineRunLog(String organization, String pipeline, String run, Integer start, Boolean download) {
        // TODO: Implement...
        return null;
    }

    @Override
    public PipelineRunNode getPipelineRunNode(String organization, String pipeline, String run, String node) {
        // TODO: Implement...
        return null;
    }

    @Override
    public PipelineStepImpl getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step) {
        // TODO: Implement...
        return null;
    }

    @Override
    public String getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<PipelineStepImpl> getPipelineRunNodeSteps(String organization, String pipeline, String run, String node) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<PipelineRunNode> getPipelineRunNodes(String organization, String pipeline, String run) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<PipelineRun> getPipelineRuns(String organization, String pipeline) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<Pipeline> getPipelines(String organization) {
        // TODO: Implement...
        return null;
    }

    @Override
    public GithubScm getSCM(String organization, String scm) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<GithubOrganization> getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<GithubOrganization> getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, String credentialId) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<GithubOrganization> getSCMOrganisations(String organization, String scm, String credentialId) {
        // TODO: Implement...
        return null;
    }

    @Override
    public User getUser(String organization, String user) {
        // TODO: Implement...
        return null;
    }

    @Override
    public List<FavoriteImpl> getUserFavorites(String user) {
        // TODO: Implement...
        return null;
    }

    @Override
    public User getUsers(String organization) {
        // TODO: Implement...
        return null;
    }

    @Override
    public QueueItemImpl postPipelineRun(String organization, String pipeline, String run) {
        // TODO: Implement...
        return null;
    }

    @Override
    public QueueItemImpl postPipelineRuns(String organization, String pipeline) {
        // TODO: Implement...
        return null;
    }

    @Override
    public FavoriteImpl putPipelineFavorite(String organization, String pipeline, Boolean body) {
        // TODO: Implement...
        return null;
    }

    @Override
    public PipelineRun putPipelineRun(String organization, String pipeline, String run, String blocking, Integer timeOutInSecs) {
        // TODO: Implement...
        return null;
    }

    @Override
    public String search(String q) {
        // TODO: Implement...
        return null;
    }

    @Override
    public String searchClasses(String q) {
        // TODO: Implement...
        return null;
    }

}
