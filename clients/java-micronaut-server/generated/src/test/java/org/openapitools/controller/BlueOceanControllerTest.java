package org.openapitools.controller;

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
import io.micronaut.http.client.HttpClient;
import io.micronaut.http.client.annotation.Client;
import io.micronaut.runtime.server.EmbeddedServer;
import io.micronaut.http.HttpStatus;
import io.micronaut.http.MutableHttpRequest;
import io.micronaut.http.HttpRequest;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.MediaType;
import io.micronaut.http.uri.UriTemplate;
import io.micronaut.http.cookie.Cookie;
import io.micronaut.http.client.multipart.MultipartBody;
import io.micronaut.core.type.Argument;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Assertions;
import jakarta.inject.Inject;
import reactor.core.publisher.Mono;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.HashSet;


/**
 * API tests for BlueOceanController
 */
@MicronautTest
public class BlueOceanControllerTest {

    @Inject
    EmbeddedServer server;

    @Inject
    @Client
    HttpClient client;

    @Inject
    BlueOceanController controller;

    /**
     * This test is used to validate the implementation of deletePipelineQueueItem() method
     *
     * The method should: 
     *
     * Delete queue item from an organization pipeline queue
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void deletePipelineQueueItemMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String queue = "example";

        // when
        controller.deletePipelineQueueItem(organization, pipeline, queue).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}' to the features of deletePipelineQueueItem() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void deletePipelineQueueItemClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("queue", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.DELETE(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getAuthenticatedUser() method
     *
     * The method should: 
     *
     * Retrieve authenticated user details for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getAuthenticatedUserMethodTest() {
        // given
        String organization = "example";

        // when
        User result = controller.getAuthenticatedUser(organization).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/user/' to the features of getAuthenticatedUser() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getAuthenticatedUserClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/user/").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, User.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getClasses() method
     *
     * The method should: 
     *
     * Get a list of class names supported by a given class
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getClassesMethodTest() {
        // given
        String propertyClass = "example";

        // when
        String result = controller.getClasses(propertyClass).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/classes/{class}' to the features of getClasses() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getClassesClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/classes/{class}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("class", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, String.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getJsonWebKey() method
     *
     * The method should: 
     *
     * Retrieve JSON Web Key
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getJsonWebKeyMethodTest() {
        // given
        Integer key = 56;

        // when
        String result = controller.getJsonWebKey(key).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/jwt-auth/jwks/{key}' to the features of getJsonWebKey() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getJsonWebKeyClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/jwt-auth/jwks/{key}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("key", 56);
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, String.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getJsonWebToken() method
     *
     * The method should: 
     *
     * Retrieve JSON Web Token
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getJsonWebTokenMethodTest() {
        // given
        Integer expiryTimeInMins = 56;
        Integer maxExpiryTimeInMins = 56;

        // when
        String result = controller.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/jwt-auth/token' to the features of getJsonWebToken() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getJsonWebTokenClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/jwt-auth/token").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");
        request.getParameters()
            .add("expiryTimeInMins", String.valueOf(56)) // The query parameter format should be 
            .add("maxExpiryTimeInMins", String.valueOf(56)); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, String.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getOrganisation() method
     *
     * The method should: 
     *
     * Retrieve organization details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getOrganisationMethodTest() {
        // given
        String organization = "example";

        // when
        Organisation result = controller.getOrganisation(organization).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}' to the features of getOrganisation() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getOrganisationClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Organisation.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getOrganisations() method
     *
     * The method should: 
     *
     * Retrieve all organizations details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getOrganisationsMethodTest() {
        // given

        // when
        List<Organisation> result = controller.getOrganisations().block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/' to the features of getOrganisations() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getOrganisationsClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, Organisation.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipeline() method
     *
     * The method should: 
     *
     * Retrieve pipeline details for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        Pipeline result = controller.getPipeline(organization, pipeline).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}' to the features of getPipeline() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Pipeline.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineActivities() method
     *
     * The method should: 
     *
     * Retrieve all activities details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineActivitiesMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        List<PipelineActivity> result = controller.getPipelineActivities(organization, pipeline).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities' to the features of getPipelineActivities() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineActivitiesClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, PipelineActivity.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineBranch() method
     *
     * The method should: 
     *
     * Retrieve branch details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineBranchMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String branch = "example";

        // when
        BranchImpl result = controller.getPipelineBranch(organization, pipeline, branch).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/' to the features of getPipelineBranch() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineBranchClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("branch", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, BranchImpl.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineBranchRun() method
     *
     * The method should: 
     *
     * Retrieve branch run details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineBranchRunMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String branch = "example";
        String run = "example";

        // when
        PipelineRun result = controller.getPipelineBranchRun(organization, pipeline, branch, run).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}' to the features of getPipelineBranchRun() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineBranchRunClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("branch", "example");
            put("run", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, PipelineRun.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineBranches() method
     *
     * The method should: 
     *
     * Retrieve all branches details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineBranchesMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        MultibranchPipeline result = controller.getPipelineBranches(organization, pipeline).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches' to the features of getPipelineBranches() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineBranchesClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, MultibranchPipeline.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineFolder() method
     *
     * The method should: 
     *
     * Retrieve pipeline folder for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineFolderMethodTest() {
        // given
        String organization = "example";
        String folder = "example";

        // when
        PipelineFolderImpl result = controller.getPipelineFolder(organization, folder).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{folder}/' to the features of getPipelineFolder() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineFolderClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{folder}/").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("folder", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, PipelineFolderImpl.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineFolderPipeline() method
     *
     * The method should: 
     *
     * Retrieve pipeline details for an organization folder
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineFolderPipelineMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String folder = "example";

        // when
        PipelineImpl result = controller.getPipelineFolderPipeline(organization, pipeline, folder).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}' to the features of getPipelineFolderPipeline() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineFolderPipelineClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("folder", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, PipelineImpl.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineQueue() method
     *
     * The method should: 
     *
     * Retrieve queue details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineQueueMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        List<QueueItemImpl> result = controller.getPipelineQueue(organization, pipeline).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue' to the features of getPipelineQueue() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineQueueClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, QueueItemImpl.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineRun() method
     *
     * The method should: 
     *
     * Retrieve run details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";

        // when
        PipelineRun result = controller.getPipelineRun(organization, pipeline, run).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}' to the features of getPipelineRun() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("run", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, PipelineRun.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineRunLog() method
     *
     * The method should: 
     *
     * Get log for a pipeline run
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunLogMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        Integer start = 56;
        Boolean download = false;

        // when
        String result = controller.getPipelineRunLog(organization, pipeline, run, start, download).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log' to the features of getPipelineRunLog() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunLogClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("run", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");
        request.getParameters()
            .add("start", String.valueOf(56)) // The query parameter format should be 
            .add("download", String.valueOf(false)); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, String.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineRunNode() method
     *
     * The method should: 
     *
     * Retrieve run node details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunNodeMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        String node = "example";

        // when
        PipelineRunNode result = controller.getPipelineRunNode(organization, pipeline, run, node).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}' to the features of getPipelineRunNode() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunNodeClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("run", "example");
            put("node", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, PipelineRunNode.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineRunNodeStep() method
     *
     * The method should: 
     *
     * Retrieve run node details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunNodeStepMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        String node = "example";
        String step = "example";

        // when
        PipelineStepImpl result = controller.getPipelineRunNodeStep(organization, pipeline, run, node, step).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}' to the features of getPipelineRunNodeStep() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunNodeStepClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("run", "example");
            put("node", "example");
            put("step", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, PipelineStepImpl.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineRunNodeStepLog() method
     *
     * The method should: 
     *
     * Get log for a pipeline run node step
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunNodeStepLogMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        String node = "example";
        String step = "example";

        // when
        String result = controller.getPipelineRunNodeStepLog(organization, pipeline, run, node, step).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log' to the features of getPipelineRunNodeStepLog() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunNodeStepLogClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("run", "example");
            put("node", "example");
            put("step", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, String.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineRunNodeSteps() method
     *
     * The method should: 
     *
     * Retrieve run node steps details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunNodeStepsMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        String node = "example";

        // when
        List<PipelineStepImpl> result = controller.getPipelineRunNodeSteps(organization, pipeline, run, node).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps' to the features of getPipelineRunNodeSteps() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunNodeStepsClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("run", "example");
            put("node", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, PipelineStepImpl.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineRunNodes() method
     *
     * The method should: 
     *
     * Retrieve run nodes details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunNodesMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";

        // when
        List<PipelineRunNode> result = controller.getPipelineRunNodes(organization, pipeline, run).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes' to the features of getPipelineRunNodes() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunNodesClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("run", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, PipelineRunNode.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelineRuns() method
     *
     * The method should: 
     *
     * Retrieve all runs details for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunsMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        List<PipelineRun> result = controller.getPipelineRuns(organization, pipeline).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs' to the features of getPipelineRuns() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelineRunsClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, PipelineRun.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getPipelines() method
     *
     * The method should: 
     *
     * Retrieve all pipelines details for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelinesMethodTest() {
        // given
        String organization = "example";

        // when
        List<Pipeline> result = controller.getPipelines(organization).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/' to the features of getPipelines() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getPipelinesClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, Pipeline.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getSCM() method
     *
     * The method should: 
     *
     * Retrieve SCM details for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getSCMMethodTest() {
        // given
        String organization = "example";
        String scm = "example";

        // when
        GithubScm result = controller.getSCM(organization, scm).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/scm/{scm}' to the features of getSCM() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getSCMClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/scm/{scm}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("scm", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, GithubScm.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getSCMOrganisationRepositories() method
     *
     * The method should: 
     *
     * Retrieve SCM organization repositories details for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getSCMOrganisationRepositoriesMethodTest() {
        // given
        String organization = "example";
        String scm = "example";
        String scmOrganisation = "example";
        String credentialId = "example";
        Integer pageSize = 56;
        Integer pageNumber = 56;

        // when
        List<GithubOrganization> result = controller.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories' to the features of getSCMOrganisationRepositories() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getSCMOrganisationRepositoriesClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("scm", "example");
            put("scmOrganisation", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");
        request.getParameters()
            .add("credentialId", "example") // The query parameter format should be 
            .add("pageSize", String.valueOf(56)) // The query parameter format should be 
            .add("pageNumber", String.valueOf(56)); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, GithubOrganization.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getSCMOrganisationRepository() method
     *
     * The method should: 
     *
     * Retrieve SCM organization repository details for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getSCMOrganisationRepositoryMethodTest() {
        // given
        String organization = "example";
        String scm = "example";
        String scmOrganisation = "example";
        String repository = "example";
        String credentialId = "example";

        // when
        List<GithubOrganization> result = controller.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}' to the features of getSCMOrganisationRepository() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getSCMOrganisationRepositoryClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("scm", "example");
            put("scmOrganisation", "example");
            put("repository", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");
        request.getParameters()
            .add("credentialId", "example"); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, GithubOrganization.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getSCMOrganisations() method
     *
     * The method should: 
     *
     * Retrieve SCM organizations details for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getSCMOrganisationsMethodTest() {
        // given
        String organization = "example";
        String scm = "example";
        String credentialId = "example";

        // when
        List<GithubOrganization> result = controller.getSCMOrganisations(organization, scm, credentialId).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/scm/{scm}/organizations' to the features of getSCMOrganisations() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getSCMOrganisationsClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/scm/{scm}/organizations").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("scm", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");
        request.getParameters()
            .add("credentialId", "example"); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, GithubOrganization.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getUser() method
     *
     * The method should: 
     *
     * Retrieve user details for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getUserMethodTest() {
        // given
        String organization = "example";
        String user = "example";

        // when
        User result = controller.getUser(organization, user).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/users/{user}' to the features of getUser() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getUserClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/users/{user}").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("user", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, User.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getUserFavorites() method
     *
     * The method should: 
     *
     * Retrieve user favorites details for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getUserFavoritesMethodTest() {
        // given
        String user = "example";

        // when
        List<FavoriteImpl> result = controller.getUserFavorites(user).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/users/{user}/favorites' to the features of getUserFavorites() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getUserFavoritesClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/users/{user}/favorites").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("user", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Argument.of(List.class, FavoriteImpl.class));

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getUsers() method
     *
     * The method should: 
     *
     * Retrieve users details for an organization
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getUsersMethodTest() {
        // given
        String organization = "example";

        // when
        User result = controller.getUsers(organization).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/users/' to the features of getUsers() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getUsersClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/users/").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, User.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postPipelineRun() method
     *
     * The method should: 
     *
     * Replay an organization pipeline run
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postPipelineRunMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";

        // when
        QueueItemImpl result = controller.postPipelineRun(organization, pipeline, run).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay' to the features of postPipelineRun() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postPipelineRunClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("run", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.POST(uri, null)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, QueueItemImpl.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postPipelineRuns() method
     *
     * The method should: 
     *
     * Start a build for an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postPipelineRunsMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";

        // when
        QueueItemImpl result = controller.postPipelineRuns(organization, pipeline).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs' to the features of postPipelineRuns() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postPipelineRunsClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.POST(uri, null)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, QueueItemImpl.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of putPipelineFavorite() method
     *
     * The method should: 
     *
     * Favorite/unfavorite a pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void putPipelineFavoriteMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        Boolean _body = false;

        // when
        FavoriteImpl result = controller.putPipelineFavorite(organization, pipeline, _body).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite' to the features of putPipelineFavorite() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void putPipelineFavoriteClientApiTest() throws IOException {
        // given
        Boolean body = false;
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.PUT(uri, body)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, FavoriteImpl.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of putPipelineRun() method
     *
     * The method should: 
     *
     * Stop a build of an organization pipeline
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void putPipelineRunMethodTest() {
        // given
        String organization = "example";
        String pipeline = "example";
        String run = "example";
        String blocking = "example";
        Integer timeOutInSecs = 56;

        // when
        PipelineRun result = controller.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop' to the features of putPipelineRun() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void putPipelineRunClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("organization", "example");
            put("pipeline", "example");
            put("run", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.PUT(uri, null)
            .accept("application/json");
        request.getParameters()
            .add("blocking", "example") // The query parameter format should be 
            .add("timeOutInSecs", String.valueOf(56)); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, PipelineRun.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of search() method
     *
     * The method should: 
     *
     * Search for any resource details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void searchMethodTest() {
        // given
        String q = "example";

        // when
        String result = controller.search(q).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/search/' to the features of search() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void searchClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/search/").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");
        request.getParameters()
            .add("q", "example"); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, String.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of searchClasses() method
     *
     * The method should: 
     *
     * Get classes details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void searchClassesMethodTest() {
        // given
        String q = "example";

        // when
        String result = controller.searchClasses(q).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/blue/rest/classes/' to the features of searchClasses() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void searchClassesClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/blue/rest/classes/").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");
        request.getParameters()
            .add("q", "example"); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, String.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

}
