package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * GetPipelineBranchesitemLatestRun
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-07-25T10:46:28.251+10:00")

public class GetPipelineBranchesitemLatestRun   {
  @JsonProperty("durationInMillis")
  private Integer durationInMillis = null;

  @JsonProperty("estimatedDurationInMillis")
  private Integer estimatedDurationInMillis = null;

  @JsonProperty("enQueueTime")
  private String enQueueTime = null;

  @JsonProperty("endTime")
  private String endTime = null;

  @JsonProperty("id")
  private String id = null;

  @JsonProperty("organization")
  private String organization = null;

  @JsonProperty("pipeline")
  private String pipeline = null;

  @JsonProperty("result")
  private String result = null;

  @JsonProperty("runSummary")
  private String runSummary = null;

  @JsonProperty("startTime")
  private String startTime = null;

  @JsonProperty("state")
  private String state = null;

  @JsonProperty("type")
  private String type = null;

  @JsonProperty("commitId")
  private String commitId = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public GetPipelineBranchesitemLatestRun durationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
    return this;
  }

   /**
   * Get durationInMillis
   * @return durationInMillis
  **/
  @ApiModelProperty(value = "")


  public Integer getDurationInMillis() {
    return durationInMillis;
  }

  public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  public GetPipelineBranchesitemLatestRun estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

   /**
   * Get estimatedDurationInMillis
   * @return estimatedDurationInMillis
  **/
  @ApiModelProperty(value = "")


  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  public GetPipelineBranchesitemLatestRun enQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
    return this;
  }

   /**
   * Get enQueueTime
   * @return enQueueTime
  **/
  @ApiModelProperty(value = "")


  public String getEnQueueTime() {
    return enQueueTime;
  }

  public void setEnQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
  }

  public GetPipelineBranchesitemLatestRun endTime(String endTime) {
    this.endTime = endTime;
    return this;
  }

   /**
   * Get endTime
   * @return endTime
  **/
  @ApiModelProperty(value = "")


  public String getEndTime() {
    return endTime;
  }

  public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

  public GetPipelineBranchesitemLatestRun id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @ApiModelProperty(value = "")


  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public GetPipelineBranchesitemLatestRun organization(String organization) {
    this.organization = organization;
    return this;
  }

   /**
   * Get organization
   * @return organization
  **/
  @ApiModelProperty(value = "")


  public String getOrganization() {
    return organization;
  }

  public void setOrganization(String organization) {
    this.organization = organization;
  }

  public GetPipelineBranchesitemLatestRun pipeline(String pipeline) {
    this.pipeline = pipeline;
    return this;
  }

   /**
   * Get pipeline
   * @return pipeline
  **/
  @ApiModelProperty(value = "")


  public String getPipeline() {
    return pipeline;
  }

  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

  public GetPipelineBranchesitemLatestRun result(String result) {
    this.result = result;
    return this;
  }

   /**
   * Get result
   * @return result
  **/
  @ApiModelProperty(value = "")


  public String getResult() {
    return result;
  }

  public void setResult(String result) {
    this.result = result;
  }

  public GetPipelineBranchesitemLatestRun runSummary(String runSummary) {
    this.runSummary = runSummary;
    return this;
  }

   /**
   * Get runSummary
   * @return runSummary
  **/
  @ApiModelProperty(value = "")


  public String getRunSummary() {
    return runSummary;
  }

  public void setRunSummary(String runSummary) {
    this.runSummary = runSummary;
  }

  public GetPipelineBranchesitemLatestRun startTime(String startTime) {
    this.startTime = startTime;
    return this;
  }

   /**
   * Get startTime
   * @return startTime
  **/
  @ApiModelProperty(value = "")


  public String getStartTime() {
    return startTime;
  }

  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  public GetPipelineBranchesitemLatestRun state(String state) {
    this.state = state;
    return this;
  }

   /**
   * Get state
   * @return state
  **/
  @ApiModelProperty(value = "")


  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public GetPipelineBranchesitemLatestRun type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  @ApiModelProperty(value = "")


  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public GetPipelineBranchesitemLatestRun commitId(String commitId) {
    this.commitId = commitId;
    return this;
  }

   /**
   * Get commitId
   * @return commitId
  **/
  @ApiModelProperty(value = "")


  public String getCommitId() {
    return commitId;
  }

  public void setCommitId(String commitId) {
    this.commitId = commitId;
  }

  public GetPipelineBranchesitemLatestRun propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")


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
    GetPipelineBranchesitemLatestRun getPipelineBranchesitemLatestRun = (GetPipelineBranchesitemLatestRun) o;
    return Objects.equals(this.durationInMillis, getPipelineBranchesitemLatestRun.durationInMillis) &&
        Objects.equals(this.estimatedDurationInMillis, getPipelineBranchesitemLatestRun.estimatedDurationInMillis) &&
        Objects.equals(this.enQueueTime, getPipelineBranchesitemLatestRun.enQueueTime) &&
        Objects.equals(this.endTime, getPipelineBranchesitemLatestRun.endTime) &&
        Objects.equals(this.id, getPipelineBranchesitemLatestRun.id) &&
        Objects.equals(this.organization, getPipelineBranchesitemLatestRun.organization) &&
        Objects.equals(this.pipeline, getPipelineBranchesitemLatestRun.pipeline) &&
        Objects.equals(this.result, getPipelineBranchesitemLatestRun.result) &&
        Objects.equals(this.runSummary, getPipelineBranchesitemLatestRun.runSummary) &&
        Objects.equals(this.startTime, getPipelineBranchesitemLatestRun.startTime) &&
        Objects.equals(this.state, getPipelineBranchesitemLatestRun.state) &&
        Objects.equals(this.type, getPipelineBranchesitemLatestRun.type) &&
        Objects.equals(this.commitId, getPipelineBranchesitemLatestRun.commitId) &&
        Objects.equals(this.propertyClass, getPipelineBranchesitemLatestRun.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(durationInMillis, estimatedDurationInMillis, enQueueTime, endTime, id, organization, pipeline, result, runSummary, startTime, state, type, commitId, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetPipelineBranchesitemLatestRun {\n");
    
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

