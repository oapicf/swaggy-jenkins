package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.PipelineRunartifacts;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class PipelineRun   {
  
  private String propertyClass = null;
  private List<PipelineRunartifacts> artifacts = new ArrayList<PipelineRunartifacts>();
  private Integer durationInMillis = null;
  private Integer estimatedDurationInMillis = null;
  private String enQueueTime = null;
  private String endTime = null;
  private String id = null;
  private String organization = null;
  private String pipeline = null;
  private String result = null;
  private String runSummary = null;
  private String startTime = null;
  private String state = null;
  private String type = null;
  private String commitId = null;

  /**
   **/
  public PipelineRun propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public PipelineRun artifacts(List<PipelineRunartifacts> artifacts) {
    this.artifacts = artifacts;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("artifacts")
  public List<PipelineRunartifacts> getArtifacts() {
    return artifacts;
  }
  public void setArtifacts(List<PipelineRunartifacts> artifacts) {
    this.artifacts = artifacts;
  }

  /**
   **/
  public PipelineRun durationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("durationInMillis")
  public Integer getDurationInMillis() {
    return durationInMillis;
  }
  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  /**
   **/
  public PipelineRun estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }
  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  /**
   **/
  public PipelineRun enQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("enQueueTime")
  public String getEnQueueTime() {
    return enQueueTime;
  }
  public void setEnQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
  }

  /**
   **/
  public PipelineRun endTime(String endTime) {
    this.endTime = endTime;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("endTime")
  public String getEndTime() {
    return endTime;
  }
  public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

  /**
   **/
  public PipelineRun id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  public PipelineRun organization(String organization) {
    this.organization = organization;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }
  public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   **/
  public PipelineRun pipeline(String pipeline) {
    this.pipeline = pipeline;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("pipeline")
  public String getPipeline() {
    return pipeline;
  }
  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

  /**
   **/
  public PipelineRun result(String result) {
    this.result = result;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("result")
  public String getResult() {
    return result;
  }
  public void setResult(String result) {
    this.result = result;
  }

  /**
   **/
  public PipelineRun runSummary(String runSummary) {
    this.runSummary = runSummary;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("runSummary")
  public String getRunSummary() {
    return runSummary;
  }
  public void setRunSummary(String runSummary) {
    this.runSummary = runSummary;
  }

  /**
   **/
  public PipelineRun startTime(String startTime) {
    this.startTime = startTime;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("startTime")
  public String getStartTime() {
    return startTime;
  }
  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  /**
   **/
  public PipelineRun state(String state) {
    this.state = state;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("state")
  public String getState() {
    return state;
  }
  public void setState(String state) {
    this.state = state;
  }

  /**
   **/
  public PipelineRun type(String type) {
    this.type = type;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("type")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  /**
   **/
  public PipelineRun commitId(String commitId) {
    this.commitId = commitId;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("commitId")
  public String getCommitId() {
    return commitId;
  }
  public void setCommitId(String commitId) {
    this.commitId = commitId;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineRun pipelineRun = (PipelineRun) o;
    return Objects.equals(propertyClass, pipelineRun.propertyClass) &&
        Objects.equals(artifacts, pipelineRun.artifacts) &&
        Objects.equals(durationInMillis, pipelineRun.durationInMillis) &&
        Objects.equals(estimatedDurationInMillis, pipelineRun.estimatedDurationInMillis) &&
        Objects.equals(enQueueTime, pipelineRun.enQueueTime) &&
        Objects.equals(endTime, pipelineRun.endTime) &&
        Objects.equals(id, pipelineRun.id) &&
        Objects.equals(organization, pipelineRun.organization) &&
        Objects.equals(pipeline, pipelineRun.pipeline) &&
        Objects.equals(result, pipelineRun.result) &&
        Objects.equals(runSummary, pipelineRun.runSummary) &&
        Objects.equals(startTime, pipelineRun.startTime) &&
        Objects.equals(state, pipelineRun.state) &&
        Objects.equals(type, pipelineRun.type) &&
        Objects.equals(commitId, pipelineRun.commitId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, artifacts, durationInMillis, estimatedDurationInMillis, enQueueTime, endTime, id, organization, pipeline, result, runSummary, startTime, state, type, commitId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineRun {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

