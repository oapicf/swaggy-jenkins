package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.PipelineActivityartifacts;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("PipelineActivity")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2025-05-10T02:40:32.828902557Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class PipelineActivity   {
  private String propertyClass;
  private @Valid List<@Valid PipelineActivityartifacts> artifacts = new ArrayList<>();
  private Integer durationInMillis;
  private Integer estimatedDurationInMillis;
  private String enQueueTime;
  private String endTime;
  private String id;
  private String organization;
  private String pipeline;
  private String result;
  private String runSummary;
  private String startTime;
  private String state;
  private String type;
  private String commitId;

  public PipelineActivity() {
  }

  /**
   **/
  public PipelineActivity propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public PipelineActivity artifacts(List<@Valid PipelineActivityartifacts> artifacts) {
    this.artifacts = artifacts;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("artifacts")
  @Valid public List<@Valid PipelineActivityartifacts> getArtifacts() {
    return artifacts;
  }

  @JsonProperty("artifacts")
  public void setArtifacts(List<@Valid PipelineActivityartifacts> artifacts) {
    this.artifacts = artifacts;
  }

  public PipelineActivity addArtifactsItem(PipelineActivityartifacts artifactsItem) {
    if (this.artifacts == null) {
      this.artifacts = new ArrayList<>();
    }

    this.artifacts.add(artifactsItem);
    return this;
  }

  public PipelineActivity removeArtifactsItem(PipelineActivityartifacts artifactsItem) {
    if (artifactsItem != null && this.artifacts != null) {
      this.artifacts.remove(artifactsItem);
    }

    return this;
  }
  /**
   **/
  public PipelineActivity durationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("durationInMillis")
  public Integer getDurationInMillis() {
    return durationInMillis;
  }

  @JsonProperty("durationInMillis")
  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  /**
   **/
  public PipelineActivity estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  @JsonProperty("estimatedDurationInMillis")
  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  /**
   **/
  public PipelineActivity enQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("enQueueTime")
  public String getEnQueueTime() {
    return enQueueTime;
  }

  @JsonProperty("enQueueTime")
  public void setEnQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
  }

  /**
   **/
  public PipelineActivity endTime(String endTime) {
    this.endTime = endTime;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("endTime")
  public String getEndTime() {
    return endTime;
  }

  @JsonProperty("endTime")
  public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

  /**
   **/
  public PipelineActivity id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  @JsonProperty("id")
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  public PipelineActivity organization(String organization) {
    this.organization = organization;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }

  @JsonProperty("organization")
  public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   **/
  public PipelineActivity pipeline(String pipeline) {
    this.pipeline = pipeline;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("pipeline")
  public String getPipeline() {
    return pipeline;
  }

  @JsonProperty("pipeline")
  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

  /**
   **/
  public PipelineActivity result(String result) {
    this.result = result;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("result")
  public String getResult() {
    return result;
  }

  @JsonProperty("result")
  public void setResult(String result) {
    this.result = result;
  }

  /**
   **/
  public PipelineActivity runSummary(String runSummary) {
    this.runSummary = runSummary;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("runSummary")
  public String getRunSummary() {
    return runSummary;
  }

  @JsonProperty("runSummary")
  public void setRunSummary(String runSummary) {
    this.runSummary = runSummary;
  }

  /**
   **/
  public PipelineActivity startTime(String startTime) {
    this.startTime = startTime;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("startTime")
  public String getStartTime() {
    return startTime;
  }

  @JsonProperty("startTime")
  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  /**
   **/
  public PipelineActivity state(String state) {
    this.state = state;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("state")
  public String getState() {
    return state;
  }

  @JsonProperty("state")
  public void setState(String state) {
    this.state = state;
  }

  /**
   **/
  public PipelineActivity type(String type) {
    this.type = type;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  @JsonProperty("type")
  public void setType(String type) {
    this.type = type;
  }

  /**
   **/
  public PipelineActivity commitId(String commitId) {
    this.commitId = commitId;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("commitId")
  public String getCommitId() {
    return commitId;
  }

  @JsonProperty("commitId")
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

