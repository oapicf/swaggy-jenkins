package io.swagger.api.impl;

import io.swagger.api.*;
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
import org.apache.cxf.jaxrs.model.wadl.Description;
import org.apache.cxf.jaxrs.model.wadl.DocTarget;

import org.apache.cxf.jaxrs.ext.multipart.*;

import io.swagger.annotations.Api;

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
    
    public FavoriteImpl putPipelineFavorite(String organization, String pipeline, String body) {
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

