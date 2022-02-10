package org.openapitools.api;

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
import org.openapitools.model.UNKNOWN_BASE_TYPE;
import org.openapitools.model.User;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import jakarta.inject.Inject;
import reactor.core.publisher.Mono;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * API tests for BlueOceanApi
 */
@MicronautTest
public class BlueOceanApiTest {

    @Inject
    BlueOceanApi api;

    
    /**
     * 
     *
     * Delete queue item from an organization pipeline queue
     */
    @Test
    public void deletePipelineQueueItemTest() {
        String organization = null;
        String pipeline = null;
        String queue = null;
        // api.deletePipelineQueueItem(organization, pipeline, queue).block();
        // Mono<Object> asyncResponse = api.deletePipelineQueueItem(organization, pipeline, queue);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve authenticated user details for an organization
     */
    @Test
    public void getAuthenticatedUserTest() {
        String organization = null;
        // User response = api.getAuthenticatedUser(organization).block();
        // Mono<User> asyncResponse = api.getAuthenticatedUser(organization);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Get a list of class names supported by a given class
     */
    @Test
    public void getClassesTest() {
        String propertyClass = null;
        // String response = api.getClasses(propertyClass).block();
        // Mono<String> asyncResponse = api.getClasses(propertyClass);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve JSON Web Key
     */
    @Test
    public void getJsonWebKeyTest() {
        Integer key = null;
        // String response = api.getJsonWebKey(key).block();
        // Mono<String> asyncResponse = api.getJsonWebKey(key);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve JSON Web Token
     */
    @Test
    public void getJsonWebTokenTest() {
        Integer expiryTimeInMins = null;
        Integer maxExpiryTimeInMins = null;
        // String response = api.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins).block();
        // Mono<String> asyncResponse = api.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve organization details
     */
    @Test
    public void getOrganisationTest() {
        String organization = null;
        // Organisation response = api.getOrganisation(organization).block();
        // Mono<Organisation> asyncResponse = api.getOrganisation(organization);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve all organizations details
     */
    @Test
    public void getOrganisationsTest() {
        // List<Organisation> response = api.getOrganisations().block();
        // Mono<List<Organisation>> asyncResponse = api.getOrganisations();
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve pipeline details for an organization
     */
    @Test
    public void getPipelineTest() {
        String organization = null;
        String pipeline = null;
        // Pipeline response = api.getPipeline(organization, pipeline).block();
        // Mono<Pipeline> asyncResponse = api.getPipeline(organization, pipeline);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve all activities details for an organization pipeline
     */
    @Test
    public void getPipelineActivitiesTest() {
        String organization = null;
        String pipeline = null;
        // List<PipelineActivity> response = api.getPipelineActivities(organization, pipeline).block();
        // Mono<List<PipelineActivity>> asyncResponse = api.getPipelineActivities(organization, pipeline);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve branch details for an organization pipeline
     */
    @Test
    public void getPipelineBranchTest() {
        String organization = null;
        String pipeline = null;
        String branch = null;
        // BranchImpl response = api.getPipelineBranch(organization, pipeline, branch).block();
        // Mono<BranchImpl> asyncResponse = api.getPipelineBranch(organization, pipeline, branch);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve branch run details for an organization pipeline
     */
    @Test
    public void getPipelineBranchRunTest() {
        String organization = null;
        String pipeline = null;
        String branch = null;
        String run = null;
        // PipelineRun response = api.getPipelineBranchRun(organization, pipeline, branch, run).block();
        // Mono<PipelineRun> asyncResponse = api.getPipelineBranchRun(organization, pipeline, branch, run);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve all branches details for an organization pipeline
     */
    @Test
    public void getPipelineBranchesTest() {
        String organization = null;
        String pipeline = null;
        // MultibranchPipeline response = api.getPipelineBranches(organization, pipeline).block();
        // Mono<MultibranchPipeline> asyncResponse = api.getPipelineBranches(organization, pipeline);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve pipeline folder for an organization
     */
    @Test
    public void getPipelineFolderTest() {
        String organization = null;
        String folder = null;
        // PipelineFolderImpl response = api.getPipelineFolder(organization, folder).block();
        // Mono<PipelineFolderImpl> asyncResponse = api.getPipelineFolder(organization, folder);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve pipeline details for an organization folder
     */
    @Test
    public void getPipelineFolderPipelineTest() {
        String organization = null;
        String pipeline = null;
        String folder = null;
        // PipelineImpl response = api.getPipelineFolderPipeline(organization, pipeline, folder).block();
        // Mono<PipelineImpl> asyncResponse = api.getPipelineFolderPipeline(organization, pipeline, folder);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve queue details for an organization pipeline
     */
    @Test
    public void getPipelineQueueTest() {
        String organization = null;
        String pipeline = null;
        // List<QueueItemImpl> response = api.getPipelineQueue(organization, pipeline).block();
        // Mono<List<QueueItemImpl>> asyncResponse = api.getPipelineQueue(organization, pipeline);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve run details for an organization pipeline
     */
    @Test
    public void getPipelineRunTest() {
        String organization = null;
        String pipeline = null;
        String run = null;
        // PipelineRun response = api.getPipelineRun(organization, pipeline, run).block();
        // Mono<PipelineRun> asyncResponse = api.getPipelineRun(organization, pipeline, run);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Get log for a pipeline run
     */
    @Test
    public void getPipelineRunLogTest() {
        String organization = null;
        String pipeline = null;
        String run = null;
        Integer start = null;
        Boolean download = null;
        // String response = api.getPipelineRunLog(organization, pipeline, run, start, download).block();
        // Mono<String> asyncResponse = api.getPipelineRunLog(organization, pipeline, run, start, download);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve run node details for an organization pipeline
     */
    @Test
    public void getPipelineRunNodeTest() {
        String organization = null;
        String pipeline = null;
        String run = null;
        String node = null;
        // PipelineRunNode response = api.getPipelineRunNode(organization, pipeline, run, node).block();
        // Mono<PipelineRunNode> asyncResponse = api.getPipelineRunNode(organization, pipeline, run, node);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve run node details for an organization pipeline
     */
    @Test
    public void getPipelineRunNodeStepTest() {
        String organization = null;
        String pipeline = null;
        String run = null;
        String node = null;
        String step = null;
        // PipelineStepImpl response = api.getPipelineRunNodeStep(organization, pipeline, run, node, step).block();
        // Mono<PipelineStepImpl> asyncResponse = api.getPipelineRunNodeStep(organization, pipeline, run, node, step);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Get log for a pipeline run node step
     */
    @Test
    public void getPipelineRunNodeStepLogTest() {
        String organization = null;
        String pipeline = null;
        String run = null;
        String node = null;
        String step = null;
        // String response = api.getPipelineRunNodeStepLog(organization, pipeline, run, node, step).block();
        // Mono<String> asyncResponse = api.getPipelineRunNodeStepLog(organization, pipeline, run, node, step);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve run node steps details for an organization pipeline
     */
    @Test
    public void getPipelineRunNodeStepsTest() {
        String organization = null;
        String pipeline = null;
        String run = null;
        String node = null;
        // List<PipelineStepImpl> response = api.getPipelineRunNodeSteps(organization, pipeline, run, node).block();
        // Mono<List<PipelineStepImpl>> asyncResponse = api.getPipelineRunNodeSteps(organization, pipeline, run, node);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve run nodes details for an organization pipeline
     */
    @Test
    public void getPipelineRunNodesTest() {
        String organization = null;
        String pipeline = null;
        String run = null;
        // List<PipelineRunNode> response = api.getPipelineRunNodes(organization, pipeline, run).block();
        // Mono<List<PipelineRunNode>> asyncResponse = api.getPipelineRunNodes(organization, pipeline, run);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve all runs details for an organization pipeline
     */
    @Test
    public void getPipelineRunsTest() {
        String organization = null;
        String pipeline = null;
        // List<PipelineRun> response = api.getPipelineRuns(organization, pipeline).block();
        // Mono<List<PipelineRun>> asyncResponse = api.getPipelineRuns(organization, pipeline);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve all pipelines details for an organization
     */
    @Test
    public void getPipelinesTest() {
        String organization = null;
        // List<Pipeline> response = api.getPipelines(organization).block();
        // Mono<List<Pipeline>> asyncResponse = api.getPipelines(organization);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve SCM details for an organization
     */
    @Test
    public void getSCMTest() {
        String organization = null;
        String scm = null;
        // GithubScm response = api.getSCM(organization, scm).block();
        // Mono<GithubScm> asyncResponse = api.getSCM(organization, scm);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve SCM organization repositories details for an organization
     */
    @Test
    public void getSCMOrganisationRepositoriesTest() {
        String organization = null;
        String scm = null;
        String scmOrganisation = null;
        String credentialId = null;
        Integer pageSize = null;
        Integer pageNumber = null;
        // List<GithubOrganization> response = api.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber).block();
        // Mono<List<GithubOrganization>> asyncResponse = api.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve SCM organization repository details for an organization
     */
    @Test
    public void getSCMOrganisationRepositoryTest() {
        String organization = null;
        String scm = null;
        String scmOrganisation = null;
        String repository = null;
        String credentialId = null;
        // List<GithubOrganization> response = api.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId).block();
        // Mono<List<GithubOrganization>> asyncResponse = api.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve SCM organizations details for an organization
     */
    @Test
    public void getSCMOrganisationsTest() {
        String organization = null;
        String scm = null;
        String credentialId = null;
        // List<GithubOrganization> response = api.getSCMOrganisations(organization, scm, credentialId).block();
        // Mono<List<GithubOrganization>> asyncResponse = api.getSCMOrganisations(organization, scm, credentialId);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve user details for an organization
     */
    @Test
    public void getUserTest() {
        String organization = null;
        String user = null;
        // User response = api.getUser(organization, user).block();
        // Mono<User> asyncResponse = api.getUser(organization, user);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve user favorites details for an organization
     */
    @Test
    public void getUserFavoritesTest() {
        String user = null;
        // List<FavoriteImpl> response = api.getUserFavorites(user).block();
        // Mono<List<FavoriteImpl>> asyncResponse = api.getUserFavorites(user);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve users details for an organization
     */
    @Test
    public void getUsersTest() {
        String organization = null;
        // User response = api.getUsers(organization).block();
        // Mono<User> asyncResponse = api.getUsers(organization);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Replay an organization pipeline run
     */
    @Test
    public void postPipelineRunTest() {
        String organization = null;
        String pipeline = null;
        String run = null;
        // QueueItemImpl response = api.postPipelineRun(organization, pipeline, run).block();
        // Mono<QueueItemImpl> asyncResponse = api.postPipelineRun(organization, pipeline, run);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Start a build for an organization pipeline
     */
    @Test
    public void postPipelineRunsTest() {
        String organization = null;
        String pipeline = null;
        // QueueItemImpl response = api.postPipelineRuns(organization, pipeline).block();
        // Mono<QueueItemImpl> asyncResponse = api.postPipelineRuns(organization, pipeline);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Favorite/unfavorite a pipeline
     */
    @Test
    public void putPipelineFavoriteTest() {
        String organization = null;
        String pipeline = null;
        UNKNOWN_BASE_TYPE UNKNOWN_BASE_TYPE = null;
        // FavoriteImpl response = api.putPipelineFavorite(organization, pipeline, UNKNOWN_BASE_TYPE).block();
        // Mono<FavoriteImpl> asyncResponse = api.putPipelineFavorite(organization, pipeline, UNKNOWN_BASE_TYPE);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Stop a build of an organization pipeline
     */
    @Test
    public void putPipelineRunTest() {
        String organization = null;
        String pipeline = null;
        String run = null;
        String blocking = null;
        Integer timeOutInSecs = null;
        // PipelineRun response = api.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs).block();
        // Mono<PipelineRun> asyncResponse = api.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Search for any resource details
     */
    @Test
    public void searchTest() {
        String q = null;
        // String response = api.search(q).block();
        // Mono<String> asyncResponse = api.search(q);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Get classes details
     */
    @Test
    public void searchClassesTest() {
        String q = null;
        // String response = api.searchClasses(q).block();
        // Mono<String> asyncResponse = api.searchClasses(q);
        // TODO: test validations
    }

    
}
