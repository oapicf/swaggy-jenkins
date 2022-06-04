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
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.PipelinelatestRunartifacts;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * PipelinelatestRun
 */
@JsonPropertyOrder({
  PipelinelatestRun.JSON_PROPERTY_ARTIFACTS,
  PipelinelatestRun.JSON_PROPERTY_DURATION_IN_MILLIS,
  PipelinelatestRun.JSON_PROPERTY_ESTIMATED_DURATION_IN_MILLIS,
  PipelinelatestRun.JSON_PROPERTY_EN_QUEUE_TIME,
  PipelinelatestRun.JSON_PROPERTY_END_TIME,
  PipelinelatestRun.JSON_PROPERTY_ID,
  PipelinelatestRun.JSON_PROPERTY_ORGANIZATION,
  PipelinelatestRun.JSON_PROPERTY_PIPELINE,
  PipelinelatestRun.JSON_PROPERTY_RESULT,
  PipelinelatestRun.JSON_PROPERTY_RUN_SUMMARY,
  PipelinelatestRun.JSON_PROPERTY_START_TIME,
  PipelinelatestRun.JSON_PROPERTY_STATE,
  PipelinelatestRun.JSON_PROPERTY_TYPE,
  PipelinelatestRun.JSON_PROPERTY_COMMIT_ID,
  PipelinelatestRun.JSON_PROPERTY_PROPERTY_CLASS
})
@JsonTypeName("PipelinelatestRun")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2022-06-04T08:08:17.621469Z[Etc/UTC]")
@Introspected
public class PipelinelatestRun {
    public static final String JSON_PROPERTY_ARTIFACTS = "artifacts";
    private List<PipelinelatestRunartifacts> artifacts = null;

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

    public PipelinelatestRun() {
    }

    public PipelinelatestRun artifacts(List<PipelinelatestRunartifacts> artifacts) {
        this.artifacts = artifacts;
        return this;
    }

    public PipelinelatestRun addArtifactsItem(PipelinelatestRunartifacts artifactsItem) {
        if (this.artifacts == null) {
            this.artifacts = new ArrayList<>();
        }
        this.artifacts.add(artifactsItem);
        return this;
    }

    /**
     * Get artifacts
     * @return artifacts
     **/
    @Nullable
    @JsonProperty(JSON_PROPERTY_ARTIFACTS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public List<PipelinelatestRunartifacts> getArtifacts() {
        return artifacts;
    }

    @JsonProperty(JSON_PROPERTY_ARTIFACTS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public void setArtifacts(List<PipelinelatestRunartifacts> artifacts) {
        this.artifacts = artifacts;
    }

    public PipelinelatestRun durationInMillis(Integer durationInMillis) {
        this.durationInMillis = durationInMillis;
        return this;
    }

    /**
     * Get durationInMillis
     * @return durationInMillis
     **/
    @Nullable
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

    public PipelinelatestRun estimatedDurationInMillis(Integer estimatedDurationInMillis) {
        this.estimatedDurationInMillis = estimatedDurationInMillis;
        return this;
    }

    /**
     * Get estimatedDurationInMillis
     * @return estimatedDurationInMillis
     **/
    @Nullable
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

    public PipelinelatestRun enQueueTime(String enQueueTime) {
        this.enQueueTime = enQueueTime;
        return this;
    }

    /**
     * Get enQueueTime
     * @return enQueueTime
     **/
    @Nullable
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

    public PipelinelatestRun endTime(String endTime) {
        this.endTime = endTime;
        return this;
    }

    /**
     * Get endTime
     * @return endTime
     **/
    @Nullable
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

    public PipelinelatestRun id(String id) {
        this.id = id;
        return this;
    }

    /**
     * Get id
     * @return id
     **/
    @Nullable
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

    public PipelinelatestRun organization(String organization) {
        this.organization = organization;
        return this;
    }

    /**
     * Get organization
     * @return organization
     **/
    @Nullable
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

    public PipelinelatestRun pipeline(String pipeline) {
        this.pipeline = pipeline;
        return this;
    }

    /**
     * Get pipeline
     * @return pipeline
     **/
    @Nullable
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

    public PipelinelatestRun result(String result) {
        this.result = result;
        return this;
    }

    /**
     * Get result
     * @return result
     **/
    @Nullable
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

    public PipelinelatestRun runSummary(String runSummary) {
        this.runSummary = runSummary;
        return this;
    }

    /**
     * Get runSummary
     * @return runSummary
     **/
    @Nullable
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

    public PipelinelatestRun startTime(String startTime) {
        this.startTime = startTime;
        return this;
    }

    /**
     * Get startTime
     * @return startTime
     **/
    @Nullable
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

    public PipelinelatestRun state(String state) {
        this.state = state;
        return this;
    }

    /**
     * Get state
     * @return state
     **/
    @Nullable
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

    public PipelinelatestRun type(String type) {
        this.type = type;
        return this;
    }

    /**
     * Get type
     * @return type
     **/
    @Nullable
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

    public PipelinelatestRun commitId(String commitId) {
        this.commitId = commitId;
        return this;
    }

    /**
     * Get commitId
     * @return commitId
     **/
    @Nullable
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

    public PipelinelatestRun propertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
        return this;
    }

    /**
     * Get propertyClass
     * @return propertyClass
     **/
    @Nullable
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
        PipelinelatestRun pipelinelatestRun = (PipelinelatestRun) o;
        return Objects.equals(this.artifacts, pipelinelatestRun.artifacts) &&
            Objects.equals(this.durationInMillis, pipelinelatestRun.durationInMillis) &&
            Objects.equals(this.estimatedDurationInMillis, pipelinelatestRun.estimatedDurationInMillis) &&
            Objects.equals(this.enQueueTime, pipelinelatestRun.enQueueTime) &&
            Objects.equals(this.endTime, pipelinelatestRun.endTime) &&
            Objects.equals(this.id, pipelinelatestRun.id) &&
            Objects.equals(this.organization, pipelinelatestRun.organization) &&
            Objects.equals(this.pipeline, pipelinelatestRun.pipeline) &&
            Objects.equals(this.result, pipelinelatestRun.result) &&
            Objects.equals(this.runSummary, pipelinelatestRun.runSummary) &&
            Objects.equals(this.startTime, pipelinelatestRun.startTime) &&
            Objects.equals(this.state, pipelinelatestRun.state) &&
            Objects.equals(this.type, pipelinelatestRun.type) &&
            Objects.equals(this.commitId, pipelinelatestRun.commitId) &&
            Objects.equals(this.propertyClass, pipelinelatestRun.propertyClass);
    }

    @Override
    public int hashCode() {
        return Objects.hash(artifacts, durationInMillis, estimatedDurationInMillis, enQueueTime, endTime, id, organization, pipeline, result, runSummary, startTime, state, type, commitId, propertyClass);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class PipelinelatestRun {\n");
        sb.append("    artifacts: ").append(toIndentedString(artifacts)).append("\n");
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
