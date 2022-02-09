package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.PipelineRunartifacts;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("PipelineRun")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-09T13:05:51.152086Z[Etc/UTC]")public class PipelineRun   {
  
  private @Valid String propertyClass;
  private @Valid List<PipelineRunartifacts> artifacts = new ArrayList<PipelineRunartifacts>();
  private @Valid Integer durationInMillis;
  private @Valid Integer estimatedDurationInMillis;
  private @Valid String enQueueTime;
  private @Valid String endTime;
  private @Valid String id;
  private @Valid String organization;
  private @Valid String pipeline;
  private @Valid String result;
  private @Valid String runSummary;
  private @Valid String startTime;
  private @Valid String state;
  private @Valid String type;
  private @Valid String commitId;

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

  @JsonProperty("_class")
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

  @JsonProperty("artifacts")
  public void setArtifacts(List<PipelineRunartifacts> artifacts) {
    this.artifacts = artifacts;
  }

  public PipelineRun addArtifactsItem(PipelineRunartifacts artifactsItem) {
    if (this.artifacts == null) {
      this.artifacts = new ArrayList<PipelineRunartifacts>();
    }

    this.artifacts.add(artifactsItem);
    return this;
  }

  public PipelineRun removeArtifactsItem(PipelineRunartifacts artifactsItem) {
    if (artifactsItem != null && this.artifacts != null) {
      this.artifacts.remove(artifactsItem);
    }

    return this;
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

  @JsonProperty("durationInMillis")
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

  @JsonProperty("estimatedDurationInMillis")
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

  @JsonProperty("enQueueTime")
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

  @JsonProperty("endTime")
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

  @JsonProperty("id")
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

  @JsonProperty("organization")
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

  @JsonProperty("pipeline")
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

  @JsonProperty("result")
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

  @JsonProperty("runSummary")
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

  @JsonProperty("startTime")
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

  @JsonProperty("state")
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

  @JsonProperty("type")
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
    PipelineRun pipelineRun = (PipelineRun) o;
    return Objects.equals(this.propertyClass, pipelineRun.propertyClass) &&
        Objects.equals(this.artifacts, pipelineRun.artifacts) &&
        Objects.equals(this.durationInMillis, pipelineRun.durationInMillis) &&
        Objects.equals(this.estimatedDurationInMillis, pipelineRun.estimatedDurationInMillis) &&
        Objects.equals(this.enQueueTime, pipelineRun.enQueueTime) &&
        Objects.equals(this.endTime, pipelineRun.endTime) &&
        Objects.equals(this.id, pipelineRun.id) &&
        Objects.equals(this.organization, pipelineRun.organization) &&
        Objects.equals(this.pipeline, pipelineRun.pipeline) &&
        Objects.equals(this.result, pipelineRun.result) &&
        Objects.equals(this.runSummary, pipelineRun.runSummary) &&
        Objects.equals(this.startTime, pipelineRun.startTime) &&
        Objects.equals(this.state, pipelineRun.state) &&
        Objects.equals(this.type, pipelineRun.type) &&
        Objects.equals(this.commitId, pipelineRun.commitId);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

