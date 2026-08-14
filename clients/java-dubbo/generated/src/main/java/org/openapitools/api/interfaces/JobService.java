package org.openapitools.api.interfaces;

import org.openapitools.model.FreeStyleBuild;
import org.openapitools.model.FreeStyleProject;
import org.openapitools.model.*;
import java.util.List;
import java.util.Map;
import java.time.OffsetDateTime;
import java.time.LocalDate;
import java.time.LocalDateTime;
import javax.annotation.Generated;


@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public interface JobService {

    /**
     * 
     * Retrieve job details
     *
     * @param name Name of the job (required)
     * @return FreeStyleProject
     */
    FreeStyleProject getJob(
        String name
    );

    /**
     * 
     * Retrieve job configuration
     *
     * @param name Name of the job (required)
     * @return String
     */
    String getJobConfig(
        String name
    );

    /**
     * 
     * Retrieve job&#39;s last build details
     *
     * @param name Name of the job (required)
     * @return FreeStyleBuild
     */
    FreeStyleBuild getJobLastBuild(
        String name
    );

    /**
     * 
     * Retrieve job&#39;s build progressive text output
     *
     * @param name Name of the job (required)
     * @param number Build number (required)
     * @param start Starting point of progressive text output (required)
     * @return void
     */
    void getJobProgressiveText(
        String name,
        String number,
        String start
    );

    /**
     * 
     * Build a job
     *
     * @param name Name of the job (required)
     * @param json  (required)
     * @param token  (optional)
     * @param jenkinsCrumb CSRF protection token (optional)
     * @return void
     */
    void postJobBuild(
        String name,
        String json,
        String token,
        String jenkinsCrumb
    );

    /**
     * 
     * Update job configuration
     *
     * @param name Name of the job (required)
     * @param body Job configuration in config.xml format (required)
     * @param jenkinsCrumb CSRF protection token (optional)
     * @return void
     */
    void postJobConfig(
        String name,
        String body,
        String jenkinsCrumb
    );

    /**
     * 
     * Delete a job
     *
     * @param name Name of the job (required)
     * @param jenkinsCrumb CSRF protection token (optional)
     * @return void
     */
    void postJobDelete(
        String name,
        String jenkinsCrumb
    );

    /**
     * 
     * Disable a job
     *
     * @param name Name of the job (required)
     * @param jenkinsCrumb CSRF protection token (optional)
     * @return void
     */
    void postJobDisable(
        String name,
        String jenkinsCrumb
    );

    /**
     * 
     * Enable a job
     *
     * @param name Name of the job (required)
     * @param jenkinsCrumb CSRF protection token (optional)
     * @return void
     */
    void postJobEnable(
        String name,
        String jenkinsCrumb
    );

    /**
     * 
     * Stop a job
     *
     * @param name Name of the job (required)
     * @param jenkinsCrumb CSRF protection token (optional)
     * @return void
     */
    void postJobLastBuildStop(
        String name,
        String jenkinsCrumb
    );
}
