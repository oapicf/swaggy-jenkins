package org.openapitools.model;

import org.openapitools.model.PipelineActivityartifacts;
import java.util.*;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class PipelineActivity implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("artifacts")
  private List<PipelineActivityartifacts> artifacts = new ArrayList<>();

  @JsonProperty("durationInMillis")
  private Integer durationInMillis;

  @JsonProperty("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis;

  @JsonProperty("enQueueTime")
  private String enQueueTime;

  @JsonProperty("endTime")
  private String endTime;

  @JsonProperty("id")
  private String id;

  @JsonProperty("organization")
  private String organization;

  @JsonProperty("pipeline")
  private String pipeline;

  @JsonProperty("result")
  private String result;

  @JsonProperty("runSummary")
  private String runSummary;

  @JsonProperty("startTime")
  private String startTime;

  @JsonProperty("state")
  private String state;

  @JsonProperty("type")
  private String type;

  @JsonProperty("commitId")
  private String commitId;

  /**
   * 
   * @return propertyClass
   */
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * 
   * @return artifacts
   */
  public List<PipelineActivityartifacts> getArtifacts() {
    return artifacts;
  }

  public void setArtifacts(List<PipelineActivityartifacts> artifacts) {
    this.artifacts = artifacts;
  }

  /**
   * 
   * @return durationInMillis
   */
  public Integer getDurationInMillis() {
    return durationInMillis;
  }

  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  /**
   * 
   * @return estimatedDurationInMillis
   */
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  /**
   * 
   * @return enQueueTime
   */
  public String getEnQueueTime() {
    return enQueueTime;
  }

  public void setEnQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
  }

  /**
   * 
   * @return endTime
   */
  public String getEndTime() {
    return endTime;
  }

  public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

  /**
   * 
   * @return id
   */
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  /**
   * 
   * @return organization
   */
  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   * 
   * @return pipeline
   */
  public String getPipeline() {
    return pipeline;
  }

  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

  /**
   * 
   * @return result
   */
  public String getResult() {
    return result;
  }

  public void setResult(String result) {
    this.result = result;
  }

  /**
   * 
   * @return runSummary
   */
  public String getRunSummary() {
    return runSummary;
  }

  public void setRunSummary(String runSummary) {
    this.runSummary = runSummary;
  }

  /**
   * 
   * @return startTime
   */
  public String getStartTime() {
    return startTime;
  }

  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  /**
   * 
   * @return state
   */
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  /**
   * 
   * @return type
   */
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  /**
   * 
   * @return commitId
   */
  public String getCommitId() {
    return commitId;
  }

  public void setCommitId(String commitId) {
    this.commitId = commitId;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineActivity pipelineActivity = (PipelineActivity) o;
    return Objects.equals(this.propertyClass, pipelineActivity.propertyClass) &&
        Objects.equals(this.artifacts, pipelineActivity.artifacts) &&
        Objects.equals(this.durationInMillis, pipelineActivity.durationInMillis) &&
        Objects.equals(this.estimatedDurationInMillis, pipelineActivity.estimatedDurationInMillis) &&
        Objects.equals(this.enQueueTime, pipelineActivity.enQueueTime) &&
        Objects.equals(this.endTime, pipelineActivity.endTime) &&
        Objects.equals(this.id, pipelineActivity.id) &&
        Objects.equals(this.organization, pipelineActivity.organization) &&
        Objects.equals(this.pipeline, pipelineActivity.pipeline) &&
        Objects.equals(this.result, pipelineActivity.result) &&
        Objects.equals(this.runSummary, pipelineActivity.runSummary) &&
        Objects.equals(this.startTime, pipelineActivity.startTime) &&
        Objects.equals(this.state, pipelineActivity.state) &&
        Objects.equals(this.type, pipelineActivity.type) &&
        Objects.equals(this.commitId, pipelineActivity.commitId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, artifacts, durationInMillis, estimatedDurationInMillis, enQueueTime, endTime, id, organization, pipeline, result, runSummary, startTime, state, type, commitId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineActivity {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
