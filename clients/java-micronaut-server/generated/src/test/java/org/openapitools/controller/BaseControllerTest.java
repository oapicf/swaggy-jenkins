package org.openapitools.controller;

import org.openapitools.model.DefaultCrumbIssuer;
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
 * API tests for BaseController
 */
@MicronautTest
public class BaseControllerTest {

    @Inject
    EmbeddedServer server;

    @Inject
    @Client
    HttpClient client;

    @Inject
    BaseController controller;

    /**
     * This test is used to validate the implementation of getCrumb() method
     *
     * The method should: 
     *
     * Retrieve CSRF protection token
     *
     * TODO fill in the parameters and test return value.
     */
    @Test
    @Disabled("Not Implemented")
    void getCrumbMethodTest() {
        // given

        // when
        DefaultCrumbIssuer result = controller.getCrumb().block();

        // then
        Assertions.assertTrue(true);
    }

    /**
     * This test is used to check that the api available to client through
     * '/crumbIssuer/api/json' to the features of getCrumb() works as desired.
     *
     * TODO fill in the request parameters and test response.
     */
    @Test
    @Disabled("Not Implemented")
    void getCrumbClientApiTest() throws IOException {
        // given
        String uri = UriTemplate.of("/crumbIssuer/api/json").expand(new HashMap<>());
        MutableHttpRequest<?> request = HttpRequest.GET(uri)
            .accept("[Ljava.lang.String;@34d9df9f");

        // when
        HttpResponse<?> response = client.toBlocking().exchange(request, DefaultCrumbIssuer.class);

        // then
        Assertions.assertEquals(HttpStatus.OK, response.status());
    }

}
