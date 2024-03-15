package org.openapitools.api;

import org.openapitools.model.ComputerSet;
import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;
import org.openapitools.model.Hudson;
import org.openapitools.model.ListView;
import org.openapitools.model.Queue;
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
 * API tests for RemoteAccessApi
 */
@MicronautTest
public class RemoteAccessApiTest {

    @Inject
    RemoteAccessApi api;

    
    /**
     * 
     *
     * Retrieve computer details
     */
    @Test
    @Disabled("Not Implemented")
    public void getComputerTest() {
        // given
        Integer depth = 56;

        // when
        ComputerSet body = api.getComputer(depth).block();

        // then
        // TODO implement the getComputerTest()
    }

    
    /**
     * 
     *
     * Retrieve Jenkins details
     */
    @Test
    @Disabled("Not Implemented")
    public void getJenkinsTest() {
        // given

        // when
        Hudson body = api.getJenkins().block();

        // then
        // TODO implement the getJenkinsTest()
    }

    
    /**
     * 
     *
     * Retrieve job details
     */
    @Test
    @Disabled("Not Implemented")
    public void getJobTest() {
        // given
        String name = "example";

        // when
        FreeStyleProject body = api.getJob(name).block();

        // then
        // TODO implement the getJobTest()
    }

    
    /**
     * 
     *
     * Retrieve job configuration
     */
    @Test
    @Disabled("Not Implemented")
    public void getJobConfigTest() {
        // given
        String name = "example";

        // when
        String body = api.getJobConfig(name).block();

        // then
        // TODO implement the getJobConfigTest()
    }

    
    /**
     * 
     *
     * Retrieve job&#39;s last build details
     */
    @Test
    @Disabled("Not Implemented")
    public void getJobLastBuildTest() {
        // given
        String name = "example";

        // when
        FreeStyleBuild body = api.getJobLastBuild(name).block();

        // then
        // TODO implement the getJobLastBuildTest()
    }

    
    /**
     * 
     *
     * Retrieve job&#39;s build progressive text output
     */
    @Test
    @Disabled("Not Implemented")
    public void getJobProgressiveTextTest() {
        // given
        String name = "example";
        String number = "example";
        String start = "example";

        // when
        api.getJobProgressiveText(name, number, start).block();

        // then
        // TODO implement the getJobProgressiveTextTest()
    }

    
    /**
     * 
     *
     * Retrieve queue details
     */
    @Test
    @Disabled("Not Implemented")
    public void getQueueTest() {
        // given

        // when
        Queue body = api.getQueue().block();

        // then
        // TODO implement the getQueueTest()
    }

    
    /**
     * 
     *
     * Retrieve queued item details
     */
    @Test
    @Disabled("Not Implemented")
    public void getQueueItemTest() {
        // given
        String number = "example";

        // when
        Queue body = api.getQueueItem(number).block();

        // then
        // TODO implement the getQueueItemTest()
    }

    
    /**
     * 
     *
     * Retrieve view details
     */
    @Test
    @Disabled("Not Implemented")
    public void getViewTest() {
        // given
        String name = "example";

        // when
        ListView body = api.getView(name).block();

        // then
        // TODO implement the getViewTest()
    }

    
    /**
     * 
     *
     * Retrieve view configuration
     */
    @Test
    @Disabled("Not Implemented")
    public void getViewConfigTest() {
        // given
        String name = "example";

        // when
        String body = api.getViewConfig(name).block();

        // then
        // TODO implement the getViewConfigTest()
    }

    
    /**
     * 
     *
     * Retrieve Jenkins headers
     */
    @Test
    @Disabled("Not Implemented")
    public void headJenkinsTest() {
        // given

        // when
        api.headJenkins().block();

        // then
        // TODO implement the headJenkinsTest()
    }

    
    /**
     * 
     *
     * Create a new job using job configuration, or copied from an existing job
     */
    @Test
    @Disabled("Not Implemented")
    public void postCreateItemTest() {
        // given
        String name = "example";
        String from = "example";
        String mode = "example";
        String jenkinsCrumb = "example";
        String contentType = "example";
        String _body = "example";

        // when
        api.postCreateItem(name, from, mode, jenkinsCrumb, contentType, _body).block();

        // then
        // TODO implement the postCreateItemTest()
    }

    
    /**
     * 
     *
     * Create a new view using view configuration
     */
    @Test
    @Disabled("Not Implemented")
    public void postCreateViewTest() {
        // given
        String name = "example";
        String jenkinsCrumb = "example";
        String contentType = "example";
        String _body = "example";

        // when
        api.postCreateView(name, jenkinsCrumb, contentType, _body).block();

        // then
        // TODO implement the postCreateViewTest()
    }

    
    /**
     * 
     *
     * Build a job
     */
    @Test
    @Disabled("Not Implemented")
    public void postJobBuildTest() {
        // given
        String name = "example";
        String json = "example";
        String token = "example";
        String jenkinsCrumb = "example";

        // when
        api.postJobBuild(name, json, token, jenkinsCrumb).block();

        // then
        // TODO implement the postJobBuildTest()
    }

    
    /**
     * 
     *
     * Update job configuration
     */
    @Test
    @Disabled("Not Implemented")
    public void postJobConfigTest() {
        // given
        String name = "example";
        String _body = "example";
        String jenkinsCrumb = "example";

        // when
        api.postJobConfig(name, _body, jenkinsCrumb).block();

        // then
        // TODO implement the postJobConfigTest()
    }

    
    /**
     * 
     *
     * Delete a job
     */
    @Test
    @Disabled("Not Implemented")
    public void postJobDeleteTest() {
        // given
        String name = "example";
        String jenkinsCrumb = "example";

        // when
        api.postJobDelete(name, jenkinsCrumb).block();

        // then
        // TODO implement the postJobDeleteTest()
    }

    
    /**
     * 
     *
     * Disable a job
     */
    @Test
    @Disabled("Not Implemented")
    public void postJobDisableTest() {
        // given
        String name = "example";
        String jenkinsCrumb = "example";

        // when
        api.postJobDisable(name, jenkinsCrumb).block();

        // then
        // TODO implement the postJobDisableTest()
    }

    
    /**
     * 
     *
     * Enable a job
     */
    @Test
    @Disabled("Not Implemented")
    public void postJobEnableTest() {
        // given
        String name = "example";
        String jenkinsCrumb = "example";

        // when
        api.postJobEnable(name, jenkinsCrumb).block();

        // then
        // TODO implement the postJobEnableTest()
    }

    
    /**
     * 
     *
     * Stop a job
     */
    @Test
    @Disabled("Not Implemented")
    public void postJobLastBuildStopTest() {
        // given
        String name = "example";
        String jenkinsCrumb = "example";

        // when
        api.postJobLastBuildStop(name, jenkinsCrumb).block();

        // then
        // TODO implement the postJobLastBuildStopTest()
    }

    
    /**
     * 
     *
     * Update view configuration
     */
    @Test
    @Disabled("Not Implemented")
    public void postViewConfigTest() {
        // given
        String name = "example";
        String _body = "example";
        String jenkinsCrumb = "example";

        // when
        api.postViewConfig(name, _body, jenkinsCrumb).block();

        // then
        // TODO implement the postViewConfigTest()
    }

    
}
