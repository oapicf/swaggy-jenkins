/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.model;

import java.util.Objects;
import java.util.Arrays;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;
import io.swagger.v3.oas.annotations.media.Schema;

/**
 * PipelineBranchesitemlatestRun
 */
@JsonPropertyOrder({
  PipelineBranchesitemlatestRun.JSON_PROPERTY_DURATION_IN_MILLIS,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_EN_QUEUE_TIME,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_END_TIME,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_ID,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_ORGANIZATION,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_PIPELINE,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_RESULT,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_RUN_SUMMARY,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_START_TIME,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_STATE,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_TYPE,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_COMMIT_ID,
  PipelineBranchesitemlatestRun.JSON_PROPERTY_PROPERTY_CLASS
})
@JsonTypeName("PipelineBranchesitemlatestRun")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautServerCodegen", date="2022-06-04T08:08:22.203128Z[Etc/UTC]")
@Introspected
public class PipelineBranchesitemlatestRun {
    public static final String JSON_PROPERTY_DURATION_IN_MILLIS = "durationInMillis";
    private Integer durationInMillis;

    public static final String JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS = "estimatedDurationInMillis";
    private Integer estimatedDurationInMillis;

    public static final String JSON_PROPERTY_EN_QUEUE_TIME = "enQueueTime";
    private String enQueueTime;

    public static final String JSON_PROPERTY_END_TIME = "endTime";
    private String endTime;

    public static final String JSON_PROPERTY_ID = "id";
    private String id;

    public static final String JSON_PROPERTY_ORGANIZATION = "organization";
    private String organization;

    public static final String JSON_PROPERTY_PIPELINE = "pipeline";
    private String pipeline;

    public static final String JSON_PROPERTY_RESULT = "result";
    private String result;

    public static final String JSON_PROPERTY_RUN_SUMMARY = "runSummary";
    private String runSummary;

    public static final String JSON_PROPERTY_START_TIME = "startTime";
    private String startTime;

    public static final String JSON_PROPERTY_STATE = "state";
    private String state;

    public static final String JSON_PROPERTY_TYPE = "type";
    private String type;

    public static final String JSON_PROPERTY_COMMIT_ID = "commitId";
    private String commitId;

    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
    private String propertyClass;

    public PipelineBranchesitemlatestRun() {
    }

    public PipelineBranchesitemlatestRun durationInMillis(Integer durationInMillis) {
        this.durationInMillis = durationInMillis;
        return this;
    }

    /**
     * Get durationInMillis
     * @return durationInMillis
     **/
    @Nullable
    @Schema(name = "durationInMillis", required = false)
    @JsonProperty(JSON_PROPERTY_DURATION_IN_MILLIS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getDurationInMillis() {
        return durationInMillis;
    }

    @JsonProperty(JSON_PROPERTY_DURATION_IN_MILLIS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setDurationInMillis(Integer durationInMillis) {
        this.durationInMillis = durationInMillis;
    }

    public PipelineBranchesitemlatestRun estimatedDurationInMillis(Integer estimatedDurationInMillis) {
        this.estimatedDurationInMillis = estimatedDurationInMillis;
        return this;
    }

    /**
     * Get estimatedDurationInMillis
     * @return estimatedDurationInMillis
     **/
    @Nullable
    @Schema(name = "estimatedDurationInMillis", required = false)
    @JsonProperty(JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public Integer getEstimatedDurationInMillis() {
        return estimatedDurationInMillis;
    }

    @JsonProperty(JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
        this.estimatedDurationInMillis = estimatedDurationInMillis;
    }

    public PipelineBranchesitemlatestRun enQueueTime(String enQueueTime) {
        this.enQueueTime = enQueueTime;
        return this;
    }

    /**
     * Get enQueueTime
     * @return enQueueTime
     **/
    @Nullable
    @Schema(name = "enQueueTime", required = false)
    @JsonProperty(JSON_PROPERTY_EN_QUEUE_TIME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getEnQueueTime() {
        return enQueueTime;
    }

    @JsonProperty(JSON_PROPERTY_EN_QUEUE_TIME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setEnQueueTime(String enQueueTime) {
        this.enQueueTime = enQueueTime;
    }

    public PipelineBranchesitemlatestRun endTime(String endTime) {
        this.endTime = endTime;
        return this;
    }

    /**
     * Get endTime
     * @return endTime
     **/
    @Nullable
    @Schema(name = "endTime", required = false)
    @JsonProperty(JSON_PROPERTY_END_TIME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getEndTime() {
        return endTime;
    }

    @JsonProperty(JSON_PROPERTY_END_TIME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public PipelineBranchesitemlatestRun id(String id) {
        this.id = id;
        return this;
    }

    /**
     * Get id
     * @return id
     **/
    @Nullable
    @Schema(name = "id", required = false)
    @JsonProperty(JSON_PROPERTY_ID)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getId() {
        return id;
    }

    @JsonProperty(JSON_PROPERTY_ID)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setId(String id) {
        this.id = id;
    }

    public PipelineBranchesitemlatestRun organization(String organization) {
        this.organization = organization;
        return this;
    }

    /**
     * Get organization
     * @return organization
     **/
    @Nullable
    @Schema(name = "organization", required = false)
    @JsonProperty(JSON_PROPERTY_ORGANIZATION)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getOrganization() {
        return organization;
    }

    @JsonProperty(JSON_PROPERTY_ORGANIZATION)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public PipelineBranchesitemlatestRun pipeline(String pipeline) {
        this.pipeline = pipeline;
        return this;
    }

    /**
     * Get pipeline
     * @return pipeline
     **/
    @Nullable
    @Schema(name = "pipeline", required = false)
    @JsonProperty(JSON_PROPERTY_PIPELINE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getPipeline() {
        return pipeline;
    }

    @JsonProperty(JSON_PROPERTY_PIPELINE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setPipeline(String pipeline) {
        this.pipeline = pipeline;
    }

    public PipelineBranchesitemlatestRun result(String result) {
        this.result = result;
        return this;
    }

    /**
     * Get result
     * @return result
     **/
    @Nullable
    @Schema(name = "result", required = false)
    @JsonProperty(JSON_PROPERTY_RESULT)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getResult() {
        return result;
    }

    @JsonProperty(JSON_PROPERTY_RESULT)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setResult(String result) {
        this.result = result;
    }

    public PipelineBranchesitemlatestRun runSummary(String runSummary) {
        this.runSummary = runSummary;
        return this;
    }

    /**
     * Get runSummary
     * @return runSummary
     **/
    @Nullable
    @Schema(name = "runSummary", required = false)
    @JsonProperty(JSON_PROPERTY_RUN_SUMMARY)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getRunSummary() {
        return runSummary;
    }

    @JsonProperty(JSON_PROPERTY_RUN_SUMMARY)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setRunSummary(String runSummary) {
        this.runSummary = runSummary;
    }

    public PipelineBranchesitemlatestRun startTime(String startTime) {
        this.startTime = startTime;
        return this;
    }

    /**
     * Get startTime
     * @return startTime
     **/
    @Nullable
    @Schema(name = "startTime", required = false)
    @JsonProperty(JSON_PROPERTY_START_TIME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getStartTime() {
        return startTime;
    }

    @JsonProperty(JSON_PROPERTY_START_TIME)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public PipelineBranchesitemlatestRun state(String state) {
        this.state = state;
        return this;
    }

    /**
     * Get state
     * @return state
     **/
    @Nullable
    @Schema(name = "state", required = false)
    @JsonProperty(JSON_PROPERTY_STATE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getState() {
        return state;
    }

    @JsonProperty(JSON_PROPERTY_STATE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setState(String state) {
        this.state = state;
    }

    public PipelineBranchesitemlatestRun type(String type) {
        this.type = type;
        return this;
    }

    /**
     * Get type
     * @return type
     **/
    @Nullable
    @Schema(name = "type", required = false)
    @JsonProperty(JSON_PROPERTY_TYPE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getType() {
        return type;
    }

    @JsonProperty(JSON_PROPERTY_TYPE)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setType(String type) {
        this.type = type;
    }

    public PipelineBranchesitemlatestRun commitId(String commitId) {
        this.commitId = commitId;
        return this;
    }

    /**
     * Get commitId
     * @return commitId
     **/
    @Nullable
    @Schema(name = "commitId", required = false)
    @JsonProperty(JSON_PROPERTY_COMMIT_ID)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getCommitId() {
        return commitId;
    }

    @JsonProperty(JSON_PROPERTY_COMMIT_ID)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setCommitId(String commitId) {
        this.commitId = commitId;
    }

    public PipelineBranchesitemlatestRun propertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
        return this;
    }

    /**
     * Get propertyClass
     * @return propertyClass
     **/
    @Nullable
    @Schema(name = "_class", required = false)
    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getPropertyClass() {
        return propertyClass;
    }

    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setPropertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        PipelineBranchesitemlatestRun pipelineBranchesitemlatestRun = (PipelineBranchesitemlatestRun) o;
        return Objects.equals(this.durationInMillis, pipelineBranchesitemlatestRun.durationInMillis) &&
            Objects.equals(this.estimatedDurationInMillis, pipelineBranchesitemlatestRun.estimatedDurationInMillis) &&
            Objects.equals(this.enQueueTime, pipelineBranchesitemlatestRun.enQueueTime) &&
            Objects.equals(this.endTime, pipelineBranchesitemlatestRun.endTime) &&
            Objects.equals(this.id, pipelineBranchesitemlatestRun.id) &&
            Objects.equals(this.organization, pipelineBranchesitemlatestRun.organization) &&
            Objects.equals(this.pipeline, pipelineBranchesitemlatestRun.pipeline) &&
            Objects.equals(this.result, pipelineBranchesitemlatestRun.result) &&
            Objects.equals(this.runSummary, pipelineBranchesitemlatestRun.runSummary) &&
            Objects.equals(this.startTime, pipelineBranchesitemlatestRun.startTime) &&
            Objects.equals(this.state, pipelineBranchesitemlatestRun.state) &&
            Objects.equals(this.type, pipelineBranchesitemlatestRun.type) &&
            Objects.equals(this.commitId, pipelineBranchesitemlatestRun.commitId) &&
            Objects.equals(this.propertyClass, pipelineBranchesitemlatestRun.propertyClass);
    }

    @Override
    public int hashCode() {
        return Objects.hash(durationInMillis, estimatedDurationInMillis, enQueueTime, endTime, id, organization, pipeline, result, runSummary, startTime, state, type, commitId, propertyClass);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class PipelineBranchesitemlatestRun {\n");
        sb.append("    durationInMillis: ").append(toIndentedString(durationInMillis)).append("\n");
        sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
        sb.append("    enQueueTime: ").append(toIndentedString(enQueueTime)).append("\n");
        sb.append("    endTime: ").append(toIndentedString(endTime)).append("\n");
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
        sb.append("    organization: ").append(toIndentedString(organization)).append("\n");
        sb.append("    pipeline: ").append(toIndentedString(pipeline)).append("\n");
        sb.append("    result: ").append(toIndentedString(result)).append("\n");
        sb.append("    runSummary: ").append(toIndentedString(runSummary)).append("\n");
        sb.append("    startTime: ").append(toIndentedString(startTime)).append("\n");
        sb.append("    state: ").append(toIndentedString(state)).append("\n");
        sb.append("    type: ").append(toIndentedString(type)).append("\n");
        sb.append("    commitId: ").append(toIndentedString(commitId)).append("\n");
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("}");
        return sb.toString();
    }

    /**
     * Convert the given object to string with each line indented by 4 spaces
     * (except the first line).
     */
    private String toIndentedString(Object o) {
        if (o == null) {
            return "null";
        }
        return o.toString().replace("\n", "\n    ");
    }

}
