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
import jakarta.inject.Inject;
import reactor.core.publisher.Mono;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


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
    public void getComputerTest() {
        Integer depth = null;
        // ComputerSet response = api.getComputer(depth).block();
        // Mono<ComputerSet> asyncResponse = api.getComputer(depth);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve Jenkins details
     */
    @Test
    public void getJenkinsTest() {
        // Hudson response = api.getJenkins().block();
        // Mono<Hudson> asyncResponse = api.getJenkins();
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve job details
     */
    @Test
    public void getJobTest() {
        String name = null;
        // FreeStyleProject response = api.getJob(name).block();
        // Mono<FreeStyleProject> asyncResponse = api.getJob(name);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve job configuration
     */
    @Test
    public void getJobConfigTest() {
        String name = null;
        // String response = api.getJobConfig(name).block();
        // Mono<String> asyncResponse = api.getJobConfig(name);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve job&#39;s last build details
     */
    @Test
    public void getJobLastBuildTest() {
        String name = null;
        // FreeStyleBuild response = api.getJobLastBuild(name).block();
        // Mono<FreeStyleBuild> asyncResponse = api.getJobLastBuild(name);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve job&#39;s build progressive text output
     */
    @Test
    public void getJobProgressiveTextTest() {
        String name = null;
        String number = null;
        String start = null;
        // api.getJobProgressiveText(name, number, start).block();
        // Mono<Object> asyncResponse = api.getJobProgressiveText(name, number, start);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve queue details
     */
    @Test
    public void getQueueTest() {
        // Queue response = api.getQueue().block();
        // Mono<Queue> asyncResponse = api.getQueue();
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve queued item details
     */
    @Test
    public void getQueueItemTest() {
        String number = null;
        // Queue response = api.getQueueItem(number).block();
        // Mono<Queue> asyncResponse = api.getQueueItem(number);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve view details
     */
    @Test
    public void getViewTest() {
        String name = null;
        // ListView response = api.getView(name).block();
        // Mono<ListView> asyncResponse = api.getView(name);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve view configuration
     */
    @Test
    public void getViewConfigTest() {
        String name = null;
        // String response = api.getViewConfig(name).block();
        // Mono<String> asyncResponse = api.getViewConfig(name);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Retrieve Jenkins headers
     */
    @Test
    public void headJenkinsTest() {
        // api.headJenkins().block();
        // Mono<Object> asyncResponse = api.headJenkins();
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Create a new job using job configuration, or copied from an existing job
     */
    @Test
    public void postCreateItemTest() {
        String name = null;
        String from = null;
        String mode = null;
        String jenkinsCrumb = null;
        String contentType = null;
        String _body = null;
        // api.postCreateItem(name, from, mode, jenkinsCrumb, contentType, _body).block();
        // Mono<Object> asyncResponse = api.postCreateItem(name, from, mode, jenkinsCrumb, contentType, _body);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Create a new view using view configuration
     */
    @Test
    public void postCreateViewTest() {
        String name = null;
        String jenkinsCrumb = null;
        String contentType = null;
        String _body = null;
        // api.postCreateView(name, jenkinsCrumb, contentType, _body).block();
        // Mono<Object> asyncResponse = api.postCreateView(name, jenkinsCrumb, contentType, _body);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Build a job
     */
    @Test
    public void postJobBuildTest() {
        String name = null;
        String json = null;
        String token = null;
        String jenkinsCrumb = null;
        // api.postJobBuild(name, json, token, jenkinsCrumb).block();
        // Mono<Object> asyncResponse = api.postJobBuild(name, json, token, jenkinsCrumb);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Update job configuration
     */
    @Test
    public void postJobConfigTest() {
        String name = null;
        String _body = null;
        String jenkinsCrumb = null;
        // api.postJobConfig(name, _body, jenkinsCrumb).block();
        // Mono<Object> asyncResponse = api.postJobConfig(name, _body, jenkinsCrumb);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Delete a job
     */
    @Test
    public void postJobDeleteTest() {
        String name = null;
        String jenkinsCrumb = null;
        // api.postJobDelete(name, jenkinsCrumb).block();
        // Mono<Object> asyncResponse = api.postJobDelete(name, jenkinsCrumb);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Disable a job
     */
    @Test
    public void postJobDisableTest() {
        String name = null;
        String jenkinsCrumb = null;
        // api.postJobDisable(name, jenkinsCrumb).block();
        // Mono<Object> asyncResponse = api.postJobDisable(name, jenkinsCrumb);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Enable a job
     */
    @Test
    public void postJobEnableTest() {
        String name = null;
        String jenkinsCrumb = null;
        // api.postJobEnable(name, jenkinsCrumb).block();
        // Mono<Object> asyncResponse = api.postJobEnable(name, jenkinsCrumb);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Stop a job
     */
    @Test
    public void postJobLastBuildStopTest() {
        String name = null;
        String jenkinsCrumb = null;
        // api.postJobLastBuildStop(name, jenkinsCrumb).block();
        // Mono<Object> asyncResponse = api.postJobLastBuildStop(name, jenkinsCrumb);
        // TODO: test validations
    }

    
    /**
     * 
     *
     * Update view configuration
     */
    @Test
    public void postViewConfigTest() {
        String name = null;
        String _body = null;
        String jenkinsCrumb = null;
        // api.postViewConfig(name, _body, jenkinsCrumb).block();
        // Mono<Object> asyncResponse = api.postViewConfig(name, _body, jenkinsCrumb);
        // TODO: test validations
    }

    
}
