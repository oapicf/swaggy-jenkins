package org.openapitools.api;

import org.openapitools.model.DefaultCrumbIssuer;
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
 * API tests for BaseApi
 */
@MicronautTest
public class BaseApiTest {

    @Inject
    BaseApi api;

    
    /**
     * 
     *
     * Retrieve CSRF protection token
     */
    @Test
    public void getCrumbTest() {
        // DefaultCrumbIssuer response = api.getCrumb().block();
        // Mono<DefaultCrumbIssuer> asyncResponse = api.getCrumb();
        // TODO: test validations
    }

    
}
