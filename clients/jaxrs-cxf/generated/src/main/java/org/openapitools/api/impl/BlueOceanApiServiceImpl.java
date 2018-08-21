package org.openapitools.api.impl;

import org.openapitools.api.*;
import org.openapitools.model.Body;
import org.openapitools.model.BranchImpl;
import org.openapitools.model.FavoriteImpl;
import org.openapitools.model.GithubScm;
import org.openapitools.model.MultibranchPipeline;
import org.openapitools.model.Organisation;
import org.openapitools.model.Organisations;
import org.openapitools.model.Pipeline;
import org.openapitools.model.PipelineActivities;
import org.openapitools.model.PipelineFolderImpl;
import org.openapitools.model.PipelineImpl;
import org.openapitools.model.PipelineQueue;
import org.openapitools.model.PipelineRun;
import org.openapitools.model.PipelineRunNode;
import org.openapitools.model.PipelineRunNodeSteps;
import org.openapitools.model.PipelineRunNodes;
import org.openapitools.model.PipelineRuns;
import org.openapitools.model.PipelineStepImpl;
import org.openapitools.model.Pipelines;
import org.openapitools.model.QueueItemImpl;
import org.openapitools.model.ScmOrganisations;
import org.openapitools.model.User;
import org.openapitools.model.UserFavorites;

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
    public void deletePipelineQueueItem(String organization, String pipeline, String queue) {
        // TODO: Implement...
        
        
    }
    
    public User getAuthenticatedUser(String organization) {
        // TODO: Implement...
        
        return null;
    }
    
    public String getClasses(String propertyClass) {
        // TODO: Implement...
        
        return null;
    }
    
    public String getJsonWebKey(Integer key) {
        // TODO: Implement...
        
        return null;
    }
    
    public String getJsonWebToken(Integer expiryTimeInMins, Integer maxExpiryTimeInMins) {
        // TODO: Implement...
        
        return null;
    }
    
    public Organisation getOrganisation(String organization) {
        // TODO: Implement...
        
        return null;
    }
    
    public Organisations getOrganisations() {
        // TODO: Implement...
        
        return null;
    }
    
    public Pipeline getPipeline(String organization, String pipeline) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineActivities getPipelineActivities(String organization, String pipeline) {
        // TODO: Implement...
        
        return null;
    }
    
    public BranchImpl getPipelineBranch(String organization, String pipeline, String branch) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineRun getPipelineBranchRun(String organization, String pipeline, String branch, String run) {
        // TODO: Implement...
        
        return null;
    }
    
    public MultibranchPipeline getPipelineBranches(String organization, String pipeline) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineFolderImpl getPipelineFolder(String organization, String folder) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineImpl getPipelineFolderPipeline(String organization, String pipeline, String folder) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineQueue getPipelineQueue(String organization, String pipeline) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineRun getPipelineRun(String organization, String pipeline, String run) {
        // TODO: Implement...
        
        return null;
    }
    
    public String getPipelineRunLog(String organization, String pipeline, String run, Integer start, Boolean download) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineRunNode getPipelineRunNode(String organization, String pipeline, String run, String node) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineStepImpl getPipelineRunNodeStep(String organization, String pipeline, String run, String node, String step) {
        // TODO: Implement...
        
        return null;
    }
    
    public String getPipelineRunNodeStepLog(String organization, String pipeline, String run, String node, String step) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineRunNodeSteps getPipelineRunNodeSteps(String organization, String pipeline, String run, String node) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineRunNodes getPipelineRunNodes(String organization, String pipeline, String run) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineRuns getPipelineRuns(String organization, String pipeline) {
        // TODO: Implement...
        
        return null;
    }
    
    public Pipelines getPipelines(String organization) {
        // TODO: Implement...
        
        return null;
    }
    
    public GithubScm getSCM(String organization, String scm) {
        // TODO: Implement...
        
        return null;
    }
    
    public ScmOrganisations getSCMOrganisationRepositories(String organization, String scm, String scmOrganisation, String credentialId, Integer pageSize, Integer pageNumber) {
        // TODO: Implement...
        
        return null;
    }
    
    public ScmOrganisations getSCMOrganisationRepository(String organization, String scm, String scmOrganisation, String repository, String credentialId) {
        // TODO: Implement...
        
        return null;
    }
    
    public ScmOrganisations getSCMOrganisations(String organization, String scm, String credentialId) {
        // TODO: Implement...
        
        return null;
    }
    
    public User getUser(String organization, String user) {
        // TODO: Implement...
        
        return null;
    }
    
    public UserFavorites getUserFavorites(String user) {
        // TODO: Implement...
        
        return null;
    }
    
    public User getUsers(String organization) {
        // TODO: Implement...
        
        return null;
    }
    
    public QueueItemImpl postPipelineRun(String organization, String pipeline, String run) {
        // TODO: Implement...
        
        return null;
    }
    
    public QueueItemImpl postPipelineRuns(String organization, String pipeline) {
        // TODO: Implement...
        
        return null;
    }
    
    public FavoriteImpl putPipelineFavorite(String organization, String pipeline, Body body) {
        // TODO: Implement...
        
        return null;
    }
    
    public PipelineRun putPipelineRun(String organization, String pipeline, String run, String blocking, Integer timeOutInSecs) {
        // TODO: Implement...
        
        return null;
    }
    
    public String search(String q) {
        // TODO: Implement...
        
        return null;
    }
    
    public String searchClasses(String q) {
        // TODO: Implement...
        
        return null;
    }
    
}

