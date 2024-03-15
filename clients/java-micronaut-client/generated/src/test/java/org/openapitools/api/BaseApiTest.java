package org.openapitools.api;

import org.openapitools.model.DefaultCrumbIssuer;
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
    @Disabled("Not Implemented")
    public void getCrumbTest() {
        // given

        // when
        DefaultCrumbIssuer body = api.getCrumb().block();

        // then
        // TODO implement the getCrumbTest()
    }

    
}
