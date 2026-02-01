package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * PipelineBranchesitemlatestRun
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-02-01T01:27:11.559404227Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public class PipelineBranchesitemlatestRun {

  private @Nullable Integer durationInMillis;

  private @Nullable Integer estimatedDurationInMillis;

  private @Nullable String enQueueTime;

  private @Nullable String endTime;

  private @Nullable String id;

  private @Nullable String organization;

  private @Nullable String pipeline;

  private @Nullable String result;

  private @Nullable String runSummary;

  private @Nullable String startTime;

  private @Nullable String state;

  private @Nullable String type;

  private @Nullable String commitId;

  private @Nullable String propertyClass;

  public PipelineBranchesitemlatestRun durationInMillis(@Nullable Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
    return this;
  }

  /**
   * Get durationInMillis
   * @return durationInMillis
   */
  
  @Schema(name = "durationInMillis", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("durationInMillis")
  public @Nullable Integer getDurationInMillis() {
    return durationInMillis;
  }

  public void setDurationInMillis(@Nullable Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  public PipelineBranchesitemlatestRun estimatedDurationInMillis(@Nullable Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

  /**
   * Get estimatedDurationInMillis
   * @return estimatedDurationInMillis
   */
  
  @Schema(name = "estimatedDurationInMillis", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("estimatedDurationInMillis")
  public @Nullable Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(@Nullable Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  public PipelineBranchesitemlatestRun enQueueTime(@Nullable String enQueueTime) {
    this.enQueueTime = enQueueTime;
    return this;
  }

  /**
   * Get enQueueTime
   * @return enQueueTime
   */
  
  @Schema(name = "enQueueTime", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("enQueueTime")
  public @Nullable String getEnQueueTime() {
    return enQueueTime;
  }

  public void setEnQueueTime(@Nullable String enQueueTime) {
    this.enQueueTime = enQueueTime;
  }

  public PipelineBranchesitemlatestRun endTime(@Nullable String endTime) {
    this.endTime = endTime;
    return this;
  }

  /**
   * Get endTime
   * @return endTime
   */
  
  @Schema(name = "endTime", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("endTime")
  public @Nullable String getEndTime() {
    return endTime;
  }

  public void setEndTime(@Nullable String endTime) {
    this.endTime = endTime;
  }

  public PipelineBranchesitemlatestRun id(@Nullable String id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  
  @Schema(name = "id", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("id")
  public @Nullable String getId() {
    return id;
  }

  public void setId(@Nullable String id) {
    this.id = id;
  }

  public PipelineBranchesitemlatestRun organization(@Nullable String organization) {
    this.organization = organization;
    return this;
  }

  /**
   * Get organization
   * @return organization
   */
  
  @Schema(name = "organization", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("organization")
  public @Nullable String getOrganization() {
    return organization;
  }

  public void setOrganization(@Nullable String organization) {
    this.organization = organization;
  }

  public PipelineBranchesitemlatestRun pipeline(@Nullable String pipeline) {
    this.pipeline = pipeline;
    return this;
  }

  /**
   * Get pipeline
   * @return pipeline
   */
  
  @Schema(name = "pipeline", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("pipeline")
  public @Nullable String getPipeline() {
    return pipeline;
  }

  public void setPipeline(@Nullable String pipeline) {
    this.pipeline = pipeline;
  }

  public PipelineBranchesitemlatestRun result(@Nullable String result) {
    this.result = result;
    return this;
  }

  /**
   * Get result
   * @return result
   */
  
  @Schema(name = "result", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("result")
  public @Nullable String getResult() {
    return result;
  }

  public void setResult(@Nullable String result) {
    this.result = result;
  }

  public PipelineBranchesitemlatestRun runSummary(@Nullable String runSummary) {
    this.runSummary = runSummary;
    return this;
  }

  /**
   * Get runSummary
   * @return runSummary
   */
  
  @Schema(name = "runSummary", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("runSummary")
  public @Nullable String getRunSummary() {
    return runSummary;
  }

  public void setRunSummary(@Nullable String runSummary) {
    this.runSummary = runSummary;
  }

  public PipelineBranchesitemlatestRun startTime(@Nullable String startTime) {
    this.startTime = startTime;
    return this;
  }

  /**
   * Get startTime
   * @return startTime
   */
  
  @Schema(name = "startTime", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("startTime")
  public @Nullable String getStartTime() {
    return startTime;
  }

  public void setStartTime(@Nullable String startTime) {
    this.startTime = startTime;
  }

  public PipelineBranchesitemlatestRun state(@Nullable String state) {
    this.state = state;
    return this;
  }

  /**
   * Get state
   * @return state
   */
  
  @Schema(name = "state", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("state")
  public @Nullable String getState() {
    return state;
  }

  public void setState(@Nullable String state) {
    this.state = state;
  }

  public PipelineBranchesitemlatestRun type(@Nullable String type) {
    this.type = type;
    return this;
  }

  /**
   * Get type
   * @return type
   */
  
  @Schema(name = "type", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("type")
  public @Nullable String getType() {
    return type;
  }

  public void setType(@Nullable String type) {
    this.type = type;
  }

  public PipelineBranchesitemlatestRun commitId(@Nullable String commitId) {
    this.commitId = commitId;
    return this;
  }

  /**
   * Get commitId
   * @return commitId
   */
  
  @Schema(name = "commitId", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("commitId")
  public @Nullable String getCommitId() {
    return commitId;
  }

  public void setCommitId(@Nullable String commitId) {
    this.commitId = commitId;
  }

  public PipelineBranchesitemlatestRun propertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
  public @Nullable String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(@Nullable String propertyClass) {
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

