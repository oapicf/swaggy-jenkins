package org.openapitools.controller;

import org.openapitools.model.ComputerSet;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;
import org.openapitools.model.Hudson;
import org.openapitools.model.ListView;
import org.openapitools.model.Queue;
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
 * API tests for RemoteAccessController
 */
@MicronautTest
public class RemoteAccessControllerTest {

    @Inject
    EmbeddedServer server;

    @Inject
    @Client("${context-path}")
    HttpClient client;

    @Inject
    RemoteAccessController controller;

    /**
     * This test is used to validate the implementation of getComputer() method
     *
     * The method should: 
     *
     * Retrieve computer details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getComputerMethodTest() {
        // given
        Integer depth = 56;

        // when
        ComputerSet result = controller.getComputer(depth).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/computer/api/json' to the features of getComputer() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getComputerClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/computer/api/json").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");
        request.getParameters()
            .add("depth", String.valueOf(56)); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, ComputerSet.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getJenkins() method
     *
     * The method should: 
     *
     * Retrieve Jenkins details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getJenkinsMethodTest() {
        // given

        // when
        Hudson result = controller.getJenkins().block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/api/json' to the features of getJenkins() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getJenkinsClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/api/json").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Hudson.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getJob() method
     *
     * The method should: 
     *
     * Retrieve job details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getJobMethodTest() {
        // given
        String name = "example";

        // when
        FreeStyleProject result = controller.getJob(name).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/job/{name}/api/json' to the features of getJob() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getJobClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/job/{name}/api/json").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, FreeStyleProject.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getJobConfig() method
     *
     * The method should: 
     *
     * Retrieve job configuration
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getJobConfigMethodTest() {
        // given
        String name = "example";

        // when
        String result = controller.getJobConfig(name).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/job/{name}/config.xml' to the features of getJobConfig() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getJobConfigClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/job/{name}/config.xml").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("text/xml");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, String.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getJobLastBuild() method
     *
     * The method should: 
     *
     * Retrieve job&#39;s last build details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getJobLastBuildMethodTest() {
        // given
        String name = "example";

        // when
        FreeStyleBuild result = controller.getJobLastBuild(name).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/job/{name}/lastBuild/api/json' to the features of getJobLastBuild() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getJobLastBuildClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/job/{name}/lastBuild/api/json").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, FreeStyleBuild.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getJobProgressiveText() method
     *
     * The method should: 
     *
     * Retrieve job&#39;s build progressive text output
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getJobProgressiveTextMethodTest() {
        // given
        String name = "example";
        String number = "example";
        String start = "example";

        // when
        controller.getJobProgressiveText(name, number, start).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/job/{name}/{number}/logText/progressiveText' to the features of getJobProgressiveText() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getJobProgressiveTextClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/job/{name}/{number}/logText/progressiveText").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
            put("number", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");
        request.getParameters()
            .add("start", "example"); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getQueue() method
     *
     * The method should: 
     *
     * Retrieve queue details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getQueueMethodTest() {
        // given

        // when
        Queue result = controller.getQueue().block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/queue/api/json' to the features of getQueue() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getQueueClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/queue/api/json").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Queue.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getQueueItem() method
     *
     * The method should: 
     *
     * Retrieve queued item details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getQueueItemMethodTest() {
        // given
        String number = "example";

        // when
        Queue result = controller.getQueueItem(number).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/queue/item/{number}/api/json' to the features of getQueueItem() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getQueueItemClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/queue/item/{number}/api/json").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("number", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, Queue.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getView() method
     *
     * The method should: 
     *
     * Retrieve view details
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getViewMethodTest() {
        // given
        String name = "example";

        // when
        ListView result = controller.getView(name).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/view/{name}/api/json' to the features of getView() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getViewClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/view/{name}/api/json").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, ListView.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of getViewConfig() method
     *
     * The method should: 
     *
     * Retrieve view configuration
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getViewConfigMethodTest() {
        // given
        String name = "example";

        // when
        String result = controller.getViewConfig(name).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/view/{name}/config.xml' to the features of getViewConfig() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getViewConfigClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/view/{name}/config.xml").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("text/xml");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, String.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of headJenkins() method
     *
     * The method should: 
     *
     * Retrieve Jenkins headers
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void headJenkinsMethodTest() {
        // given

        // when
        controller.headJenkins().block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/api/json' to the features of headJenkins() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void headJenkinsClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/api/json").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.HEAD(uri)
            .accept("application/json");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postCreateItem() method
     *
     * The method should: 
     *
     * Create a new job using job configuration, or copied from an existing job
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postCreateItemMethodTest() {
        // given
        String name = "example";
        String from = "example";
        String mode = "example";
        String jenkinsCrumb = "example";
        String contentType = "example";
        String _body = "example";

        // when
        controller.postCreateItem(name, from, mode, jenkinsCrumb, contentType, _body).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/createItem' to the features of postCreateItem() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postCreateItemClientApiTest() throws IOException {
        // given
        String body = "example";
        String uri = UriTemplate.of("/createItem").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.POST(uri, body)
            .contentType("application/json")
            .accept("*/*")
            .header("Jenkins-Crumb", "example")
            .header("Content-Type", "example");
        request.getParameters()
            .add("name", "example") // The query parameter format should be 
            .add("from", "example") // The query parameter format should be 
            .add("mode", "example"); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postCreateView() method
     *
     * The method should: 
     *
     * Create a new view using view configuration
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postCreateViewMethodTest() {
        // given
        String name = "example";
        String jenkinsCrumb = "example";
        String contentType = "example";
        String _body = "example";

        // when
        controller.postCreateView(name, jenkinsCrumb, contentType, _body).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/createView' to the features of postCreateView() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postCreateViewClientApiTest() throws IOException {
        // given
        String body = "example";
        String uri = UriTemplate.of("/createView").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.POST(uri, body)
            .contentType("application/json")
            .accept("*/*")
            .header("Jenkins-Crumb", "example")
            .header("Content-Type", "example");
        request.getParameters()
            .add("name", "example"); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postJobBuild() method
     *
     * The method should: 
     *
     * Build a job
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobBuildMethodTest() {
        // given
        String name = "example";
        String json = "example";
        String token = "example";
        String jenkinsCrumb = "example";

        // when
        controller.postJobBuild(name, json, token, jenkinsCrumb).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/job/{name}/build' to the features of postJobBuild() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobBuildClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/job/{name}/build").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.POST(uri, null)
            .accept("application/json")
            .header("Jenkins-Crumb", "example");
        request.getParameters()
            .add("json", "example") // The query parameter format should be 
            .add("token", "example"); // The query parameter format should be 

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postJobConfig() method
     *
     * The method should: 
     *
     * Update job configuration
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobConfigMethodTest() {
        // given
        String name = "example";
        String _body = "example";
        String jenkinsCrumb = "example";

        // when
        controller.postJobConfig(name, _body, jenkinsCrumb).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/job/{name}/config.xml' to the features of postJobConfig() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobConfigClientApiTest() throws IOException {
        // given
        String body = "example";
        String uri = UriTemplate.of("/job/{name}/config.xml").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.POST(uri, body)
            .contentType("application/json")
            .accept("*/*")
            .header("Jenkins-Crumb", "example");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postJobDelete() method
     *
     * The method should: 
     *
     * Delete a job
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobDeleteMethodTest() {
        // given
        String name = "example";
        String jenkinsCrumb = "example";

        // when
        controller.postJobDelete(name, jenkinsCrumb).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/job/{name}/doDelete' to the features of postJobDelete() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobDeleteClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/job/{name}/doDelete").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.POST(uri, null)
            .accept("application/json")
            .header("Jenkins-Crumb", "example");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postJobDisable() method
     *
     * The method should: 
     *
     * Disable a job
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobDisableMethodTest() {
        // given
        String name = "example";
        String jenkinsCrumb = "example";

        // when
        controller.postJobDisable(name, jenkinsCrumb).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/job/{name}/disable' to the features of postJobDisable() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobDisableClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/job/{name}/disable").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.POST(uri, null)
            .accept("application/json")
            .header("Jenkins-Crumb", "example");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postJobEnable() method
     *
     * The method should: 
     *
     * Enable a job
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobEnableMethodTest() {
        // given
        String name = "example";
        String jenkinsCrumb = "example";

        // when
        controller.postJobEnable(name, jenkinsCrumb).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/job/{name}/enable' to the features of postJobEnable() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobEnableClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/job/{name}/enable").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.POST(uri, null)
            .accept("application/json")
            .header("Jenkins-Crumb", "example");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postJobLastBuildStop() method
     *
     * The method should: 
     *
     * Stop a job
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobLastBuildStopMethodTest() {
        // given
        String name = "example";
        String jenkinsCrumb = "example";

        // when
        controller.postJobLastBuildStop(name, jenkinsCrumb).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/job/{name}/lastBuild/stop' to the features of postJobLastBuildStop() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postJobLastBuildStopClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/job/{name}/lastBuild/stop").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.POST(uri, null)
            .accept("application/json")
            .header("Jenkins-Crumb", "example");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

    /**
     * This test is used to validate the implementation of postViewConfig() method
     *
     * The method should: 
     *
     * Update view configuration
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void postViewConfigMethodTest() {
        // given
        String name = "example";
        String _body = "example";
        String jenkinsCrumb = "example";

        // when
        controller.postViewConfig(name, _body, jenkinsCrumb).block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/view/{name}/config.xml' to the features of postViewConfig() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void postViewConfigClientApiTest() throws IOException {
        // given
        String body = "example";
        String uri = UriTemplate.of("/view/{name}/config.xml").expand(new HashMap<String, Object>(){{
            // Fill in the path variables
            put("name", "example");
        }});
        MutableHttpRequest<?> request = HttpRequest.POST(uri, body)
            .contentType("application/json")
            .accept("*/*")
            .header("Jenkins-Crumb", "example");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request); // To retrieve body you must specify required type (e.g. Map.class) as second argument 

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

}
