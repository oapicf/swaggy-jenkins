package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.PipelinelatestRunartifacts;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PipelinelatestRun  {
  
  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid PipelinelatestRunartifacts> artifacts = new ArrayList<>();

  @ApiModelProperty(value = "")
  private Integer durationInMillis;

  @ApiModelProperty(value = "")
  private Integer estimatedDurationInMillis;

  @ApiModelProperty(value = "")
  private String enQueueTime;

  @ApiModelProperty(value = "")
  private String endTime;

  @ApiModelProperty(value = "")
  private String id;

  @ApiModelProperty(value = "")
  private String organization;

  @ApiModelProperty(value = "")
  private String pipeline;

  @ApiModelProperty(value = "")
  private String result;

  @ApiModelProperty(value = "")
  private String runSummary;

  @ApiModelProperty(value = "")
  private String startTime;

  @ApiModelProperty(value = "")
  private String state;

  @ApiModelProperty(value = "")
  private String type;

  @ApiModelProperty(value = "")
  private String commitId;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
   * Get artifacts
   * @return artifacts
  **/
  @JsonProperty("artifacts")
  public List<@Valid PipelinelatestRunartifacts> getArtifacts() {
    return artifacts;
  }

  public void setArtifacts(List<@Valid PipelinelatestRunartifacts> artifacts) {
    this.artifacts = artifacts;
  }

  public PipelinelatestRun artifacts(List<@Valid PipelinelatestRunartifacts> artifacts) {
    this.artifacts = artifacts;
    return this;
  }

  public PipelinelatestRun addArtifactsItem(PipelinelatestRunartifacts artifactsItem) {
    this.artifacts.add(artifactsItem);
    return this;
  }

 /**
   * Get durationInMillis
   * @return durationInMillis
  **/
  @JsonProperty("durationInMillis")
  public Integer getDurationInMillis() {
    return durationInMillis;
  }

  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  public PipelinelatestRun durationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
    return this;
  }

 /**
   * Get estimatedDurationInMillis
   * @return estimatedDurationInMillis
  **/
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  public PipelinelatestRun estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

 /**
   * Get enQueueTime
   * @return enQueueTime
  **/
  @JsonProperty("enQueueTime")
  public String getEnQueueTime() {
    return enQueueTime;
  }

  public void setEnQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
  }

  public PipelinelatestRun enQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
    return this;
  }

 /**
   * Get endTime
   * @return endTime
  **/
  @JsonProperty("endTime")
  public String getEndTime() {
    return endTime;
  }

  public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

  public PipelinelatestRun endTime(String endTime) {
    this.endTime = endTime;
    return this;
  }

 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public PipelinelatestRun id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get organization
   * @return organization
  **/
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public PipelinelatestRun organization(String organization) {
    this.organization = organization;
    return this;
  }

 /**
   * Get pipeline
   * @return pipeline
  **/
  @JsonProperty("pipeline")
  public String getPipeline() {
    return pipeline;
  }

  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

  public PipelinelatestRun pipeline(String pipeline) {
    this.pipeline = pipeline;
    return this;
  }

 /**
   * Get result
   * @return result
  **/
  @JsonProperty("result")
  public String getResult() {
    return result;
  }

  public void setResult(String result) {
    this.result = result;
  }

  public PipelinelatestRun result(String result) {
    this.result = result;
    return this;
  }

 /**
   * Get runSummary
   * @return runSummary
  **/
  @JsonProperty("runSummary")
  public String getRunSummary() {
    return runSummary;
  }

  public void setRunSummary(String runSummary) {
    this.runSummary = runSummary;
  }

  public PipelinelatestRun runSummary(String runSummary) {
    this.runSummary = runSummary;
    return this;
  }

 /**
   * Get startTime
   * @return startTime
  **/
  @JsonProperty("startTime")
  public String getStartTime() {
    return startTime;
  }

  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  public PipelinelatestRun startTime(String startTime) {
    this.startTime = startTime;
    return this;
  }

 /**
   * Get state
   * @return state
  **/
  @JsonProperty("state")
  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public PipelinelatestRun state(String state) {
    this.state = state;
    return this;
  }

 /**
   * Get type
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public PipelinelatestRun type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Get commitId
   * @return commitId
  **/
  @JsonProperty("commitId")
  public String getCommitId() {
    return commitId;
  }

  public void setCommitId(String commitId) {
    this.commitId = commitId;
  }

  public PipelinelatestRun commitId(String commitId) {
    this.commitId = commitId;
    return this;
  }

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public PipelinelatestRun propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

