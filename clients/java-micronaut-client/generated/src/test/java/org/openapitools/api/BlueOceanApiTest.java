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
import org.openapitools.model.User;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import jakarta.inject.Inject;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.HashSet;


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
    @Disabled("Not Implemented")
    public void deletePipelineQueueItemTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String queue = "example";

        // when
        api.deletePipelineQueueItem(organization, pipeline, queue).block();

        // then
        // TODO implement the deletePipelineQueueItemTest()
    }

    
    /**
     * 
     *
     * Retrieve authenticated user details for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getAuthenticatedUserTest() {
        // given
        String organization = "example";

        // when
        User body = api.getAuthenticatedUser(organization).block();

        // then
        // TODO implement the getAuthenticatedUserTest()
    }

    
    /**
     * 
     *
     * Get a list of class names supported by a given class
     */
    @Test
    @Disabled("Not Implemented")
    public void getClassesTest() {
        // given
        String propertyClass = "example";

        // when
        String body = api.getClasses(propertyClass).block();

        // then
        // TODO implement the getClassesTest()
    }

    
    /**
     * 
     *
     * Retrieve JSON Web Key
     */
    @Test
    @Disabled("Not Implemented")
    public void getJsonWebKeyTest() {
        // given
        Integer key = 56;

        // when
        String body = api.getJsonWebKey(key).block();

        // then
        // TODO implement the getJsonWebKeyTest()
    }

    
    /**
     * 
     *
     * Retrieve JSON Web Token
     */
    @Test
    @Disabled("Not Implemented")
    public void getJsonWebTokenTest() {
        // given
        Integer expiryTimeInMins = 56;
        Integer maxExpiryTimeInMins = 56;

        // when
        String body = api.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins).block();

        // then
        // TODO implement the getJsonWebTokenTest()
    }

    
    /**
     * 
     *
     * Retrieve organization details
     */
    @Test
    @Disabled("Not Implemented")
    public void getOrganisationTest() {
        // given
        String organization = "example";

        // when
        Organisation body = api.getOrganisation(organization).block();

        // then
        // TODO implement the getOrganisationTest()
    }

    
    /**
     * 
     *
     * Retrieve all organizations details
     */
    @Test
    @Disabled("Not Implemented")
    public void getOrganisationsTest() {
        // given

        // when
        List<Organisation> body = api.getOrganisations().block();

        // then
        // TODO implement the getOrganisationsTest()
    }

    
    /**
     * 
     *
     * Retrieve pipeline details for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        Pipeline body = api.getPipeline(organization, pipeline).block();

        // then
        // TODO implement the getPipelineTest()
    }

    
    /**
     * 
     *
     * Retrieve all activities details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineActivitiesTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        List<PipelineActivity> body = api.getPipelineActivities(organization, pipeline).block();

        // then
        // TODO implement the getPipelineActivitiesTest()
    }

    
    /**
     * 
     *
     * Retrieve branch details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineBranchTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String branch = "example";

        // when
        BranchImpl body = api.getPipelineBranch(organization, pipeline, branch).block();

        // then
        // TODO implement the getPipelineBranchTest()
    }

    
    /**
     * 
     *
     * Retrieve branch run details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineBranchRunTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String branch = "example";
        String run = "example";

        // when
        PipelineRun body = api.getPipelineBranchRun(organization, pipeline, branch, run).block();

        // then
        // TODO implement the getPipelineBranchRunTest()
    }

    
    /**
     * 
     *
     * Retrieve all branches details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineBranchesTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        MultibranchPipeline body = api.getPipelineBranches(organization, pipeline).block();

        // then
        // TODO implement the getPipelineBranchesTest()
    }

    
    /**
     * 
     *
     * Retrieve pipeline folder for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineFolderTest() {
        // given
        String organization = "example";
        String folder = "example";

        // when
        PipelineFolderImpl body = api.getPipelineFolder(organization, folder).block();

        // then
        // TODO implement the getPipelineFolderTest()
    }

    
    /**
     * 
     *
     * Retrieve pipeline details for an organization folder
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineFolderPipelineTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String folder = "example";

        // when
        PipelineImpl body = api.getPipelineFolderPipeline(organization, pipeline, folder).block();

        // then
        // TODO implement the getPipelineFolderPipelineTest()
    }

    
    /**
     * 
     *
     * Retrieve queue details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineQueueTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        List<QueueItemImpl> body = api.getPipelineQueue(organization, pipeline).block();

        // then
        // TODO implement the getPipelineQueueTest()
    }

    
    /**
     * 
     *
     * Retrieve run details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineRunTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";

        // when
        PipelineRun body = api.getPipelineRun(organization, pipeline, run).block();

        // then
        // TODO implement the getPipelineRunTest()
    }

    
    /**
     * 
     *
     * Get log for a pipeline run
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineRunLogTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        Integer start = 56;
        Boolean download = false;

        // when
        String body = api.getPipelineRunLog(organization, pipeline, run, start, download).block();

        // then
        // TODO implement the getPipelineRunLogTest()
    }

    
    /**
     * 
     *
     * Retrieve run node details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineRunNodeTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        String node = "example";

        // when
        PipelineRunNode body = api.getPipelineRunNode(organization, pipeline, run, node).block();

        // then
        // TODO implement the getPipelineRunNodeTest()
    }

    
    /**
     * 
     *
     * Retrieve run node details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineRunNodeStepTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        String node = "example";
        String step = "example";

        // when
        PipelineStepImpl body = api.getPipelineRunNodeStep(organization, pipeline, run, node, step).block();

        // then
        // TODO implement the getPipelineRunNodeStepTest()
    }

    
    /**
     * 
     *
     * Get log for a pipeline run node step
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineRunNodeStepLogTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        String node = "example";
        String step = "example";

        // when
        String body = api.getPipelineRunNodeStepLog(organization, pipeline, run, node, step).block();

        // then
        // TODO implement the getPipelineRunNodeStepLogTest()
    }

    
    /**
     * 
     *
     * Retrieve run node steps details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineRunNodeStepsTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        String node = "example";

        // when
        List<PipelineStepImpl> body = api.getPipelineRunNodeSteps(organization, pipeline, run, node).block();

        // then
        // TODO implement the getPipelineRunNodeStepsTest()
    }

    
    /**
     * 
     *
     * Retrieve run nodes details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineRunNodesTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";

        // when
        List<PipelineRunNode> body = api.getPipelineRunNodes(organization, pipeline, run).block();

        // then
        // TODO implement the getPipelineRunNodesTest()
    }

    
    /**
     * 
     *
     * Retrieve all runs details for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelineRunsTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        List<PipelineRun> body = api.getPipelineRuns(organization, pipeline).block();

        // then
        // TODO implement the getPipelineRunsTest()
    }

    
    /**
     * 
     *
     * Retrieve all pipelines details for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getPipelinesTest() {
        // given
        String organization = "example";

        // when
        List<Pipeline> body = api.getPipelines(organization).block();

        // then
        // TODO implement the getPipelinesTest()
    }

    
    /**
     * 
     *
     * Retrieve SCM details for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getSCMTest() {
        // given
        String organization = "example";
        String scm = "example";

        // when
        GithubScm body = api.getSCM(organization, scm).block();

        // then
        // TODO implement the getSCMTest()
    }

    
    /**
     * 
     *
     * Retrieve SCM organization repositories details for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getSCMOrganisationRepositoriesTest() {
        // given
        String organization = "example";
        String scm = "example";
        String scmOrganisation = "example";
        String credentialId = "example";
        Integer pageSize = 56;
        Integer pageNumber = 56;

        // when
        List<GithubOrganization> body = api.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber).block();

        // then
        // TODO implement the getSCMOrganisationRepositoriesTest()
    }

    
    /**
     * 
     *
     * Retrieve SCM organization repository details for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getSCMOrganisationRepositoryTest() {
        // given
        String organization = "example";
        String scm = "example";
        String scmOrganisation = "example";
        String repository = "example";
        String credentialId = "example";

        // when
        List<GithubOrganization> body = api.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId).block();

        // then
        // TODO implement the getSCMOrganisationRepositoryTest()
    }

    
    /**
     * 
     *
     * Retrieve SCM organizations details for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getSCMOrganisationsTest() {
        // given
        String organization = "example";
        String scm = "example";
        String credentialId = "example";

        // when
        List<GithubOrganization> body = api.getSCMOrganisations(organization, scm, credentialId).block();

        // then
        // TODO implement the getSCMOrganisationsTest()
    }

    
    /**
     * 
     *
     * Retrieve user details for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getUserTest() {
        // given
        String organization = "example";
        String user = "example";

        // when
        User body = api.getUser(organization, user).block();

        // then
        // TODO implement the getUserTest()
    }

    
    /**
     * 
     *
     * Retrieve user favorites details for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getUserFavoritesTest() {
        // given
        String user = "example";

        // when
        List<FavoriteImpl> body = api.getUserFavorites(user).block();

        // then
        // TODO implement the getUserFavoritesTest()
    }

    
    /**
     * 
     *
     * Retrieve users details for an organization
     */
    @Test
    @Disabled("Not Implemented")
    public void getUsersTest() {
        // given
        String organization = "example";

        // when
        User body = api.getUsers(organization).block();

        // then
        // TODO implement the getUsersTest()
    }

    
    /**
     * 
     *
     * Replay an organization pipeline run
     */
    @Test
    @Disabled("Not Implemented")
    public void postPipelineRunTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";

        // when
        QueueItemImpl body = api.postPipelineRun(organization, pipeline, run).block();

        // then
        // TODO implement the postPipelineRunTest()
    }

    
    /**
     * 
     *
     * Start a build for an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void postPipelineRunsTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        QueueItemImpl body = api.postPipelineRuns(organization, pipeline).block();

        // then
        // TODO implement the postPipelineRunsTest()
    }

    
    /**
     * 
     *
     * Favorite/unfavorite a pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void putPipelineFavoriteTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        Boolean _body = false;

        // when
        FavoriteImpl body = api.putPipelineFavorite(organization, pipeline, _body).block();

        // then
        // TODO implement the putPipelineFavoriteTest()
    }

    
    /**
     * 
     *
     * Stop a build of an organization pipeline
     */
    @Test
    @Disabled("Not Implemented")
    public void putPipelineRunTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        String blocking = "example";
        Integer timeOutInSecs = 56;

        // when
        PipelineRun body = api.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs).block();

        // then
        // TODO implement the putPipelineRunTest()
    }

    
    /**
     * 
     *
     * Search for any resource details
     */
    @Test
    @Disabled("Not Implemented")
    public void searchTest() {
        // given
        String q = "example";

        // when
        String body = api.search(q).block();

        // then
        // TODO implement the searchTest()
    }

    
    /**
     * 
     *
     * Get classes details
     */
    @Test
    @Disabled("Not Implemented")
    public void searchClassesTest() {
        // given
        String q = "example";

        // when
        String body = api.searchClasses(q).block();

        // then
        // TODO implement the searchClassesTest()
    }

    
}
