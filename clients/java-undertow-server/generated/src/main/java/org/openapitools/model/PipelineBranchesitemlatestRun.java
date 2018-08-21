package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2018-08-21T02:12:10.332Z[GMT]")
public class PipelineBranchesitemlatestRun   {
  
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
  private String propertyClass = null;

  /**
   **/
  public PipelineBranchesitemlatestRun durationInMillis(Integer durationInMillis) {
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
  public PipelineBranchesitemlatestRun estimatedDurationInMillis(Integer estimatedDurationInMillis) {
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
  public PipelineBranchesitemlatestRun enQueueTime(String enQueueTime) {
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
  public PipelineBranchesitemlatestRun endTime(String endTime) {
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
  public PipelineBranchesitemlatestRun id(String id) {
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
  public PipelineBranchesitemlatestRun organization(String organization) {
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
  public PipelineBranchesitemlatestRun pipeline(String pipeline) {
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
  public PipelineBranchesitemlatestRun result(String result) {
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
  public PipelineBranchesitemlatestRun runSummary(String runSummary) {
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
  public PipelineBranchesitemlatestRun startTime(String startTime) {
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
  public PipelineBranchesitemlatestRun state(String state) {
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
  public PipelineBranchesitemlatestRun type(String type) {
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
  public PipelineBranchesitemlatestRun commitId(String commitId) {
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

  /**
   **/
  public PipelineBranchesitemlatestRun propertyClass(String propertyClass) {
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


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineBranchesitemlatestRun pipelineBranchesitemlatestRun = (PipelineBranchesitemlatestRun) o;
    return Objects.equals(durationInMillis, pipelineBranchesitemlatestRun.durationInMillis) &&
        Objects.equals(estimatedDurationInMillis, pipelineBranchesitemlatestRun.estimatedDurationInMillis) &&
        Objects.equals(enQueueTime, pipelineBranchesitemlatestRun.enQueueTime) &&
        Objects.equals(endTime, pipelineBranchesitemlatestRun.endTime) &&
        Objects.equals(id, pipelineBranchesitemlatestRun.id) &&
        Objects.equals(organization, pipelineBranchesitemlatestRun.organization) &&
        Objects.equals(pipeline, pipelineBranchesitemlatestRun.pipeline) &&
        Objects.equals(result, pipelineBranchesitemlatestRun.result) &&
        Objects.equals(runSummary, pipelineBranchesitemlatestRun.runSummary) &&
        Objects.equals(startTime, pipelineBranchesitemlatestRun.startTime) &&
        Objects.equals(state, pipelineBranchesitemlatestRun.state) &&
        Objects.equals(type, pipelineBranchesitemlatestRun.type) &&
        Objects.equals(commitId, pipelineBranchesitemlatestRun.commitId) &&
        Objects.equals(propertyClass, pipelineBranchesitemlatestRun.propertyClass);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

