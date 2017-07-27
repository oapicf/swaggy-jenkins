package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.SwaggyjenkinsPipelineLatestRunartifacts;
import java.util.ArrayList;
import java.util.List;





@javax.annotation.Generated(value = "io.swagger.codegen.languages.UndertowCodegen", date = "2017-07-25T10:46:51.588+10:00")
public class SwaggyjenkinsPipelineLatestRun   {
  
  private List<SwaggyjenkinsPipelineLatestRunartifacts> artifacts = new ArrayList<SwaggyjenkinsPipelineLatestRunartifacts>();
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
  public SwaggyjenkinsPipelineLatestRun artifacts(List<SwaggyjenkinsPipelineLatestRunartifacts> artifacts) {
    this.artifacts = artifacts;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("artifacts")
  public List<SwaggyjenkinsPipelineLatestRunartifacts> getArtifacts() {
    return artifacts;
  }
  public void setArtifacts(List<SwaggyjenkinsPipelineLatestRunartifacts> artifacts) {
    this.artifacts = artifacts;
  }

  /**
   **/
  public SwaggyjenkinsPipelineLatestRun durationInMillis(Integer durationInMillis) {
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
  public SwaggyjenkinsPipelineLatestRun estimatedDurationInMillis(Integer estimatedDurationInMillis) {
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
  public SwaggyjenkinsPipelineLatestRun enQueueTime(String enQueueTime) {
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
  public SwaggyjenkinsPipelineLatestRun endTime(String endTime) {
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
  public SwaggyjenkinsPipelineLatestRun id(String id) {
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
  public SwaggyjenkinsPipelineLatestRun organization(String organization) {
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
  public SwaggyjenkinsPipelineLatestRun pipeline(String pipeline) {
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
  public SwaggyjenkinsPipelineLatestRun result(String result) {
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
  public SwaggyjenkinsPipelineLatestRun runSummary(String runSummary) {
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
  public SwaggyjenkinsPipelineLatestRun startTime(String startTime) {
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
  public SwaggyjenkinsPipelineLatestRun state(String state) {
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
  public SwaggyjenkinsPipelineLatestRun type(String type) {
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
  public SwaggyjenkinsPipelineLatestRun commitId(String commitId) {
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
  public SwaggyjenkinsPipelineLatestRun propertyClass(String propertyClass) {
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
    SwaggyjenkinsPipelineLatestRun swaggyjenkinsPipelineLatestRun = (SwaggyjenkinsPipelineLatestRun) o;
    return Objects.equals(artifacts, swaggyjenkinsPipelineLatestRun.artifacts) &&
        Objects.equals(durationInMillis, swaggyjenkinsPipelineLatestRun.durationInMillis) &&
        Objects.equals(estimatedDurationInMillis, swaggyjenkinsPipelineLatestRun.estimatedDurationInMillis) &&
        Objects.equals(enQueueTime, swaggyjenkinsPipelineLatestRun.enQueueTime) &&
        Objects.equals(endTime, swaggyjenkinsPipelineLatestRun.endTime) &&
        Objects.equals(id, swaggyjenkinsPipelineLatestRun.id) &&
        Objects.equals(organization, swaggyjenkinsPipelineLatestRun.organization) &&
        Objects.equals(pipeline, swaggyjenkinsPipelineLatestRun.pipeline) &&
        Objects.equals(result, swaggyjenkinsPipelineLatestRun.result) &&
        Objects.equals(runSummary, swaggyjenkinsPipelineLatestRun.runSummary) &&
        Objects.equals(startTime, swaggyjenkinsPipelineLatestRun.startTime) &&
        Objects.equals(state, swaggyjenkinsPipelineLatestRun.state) &&
        Objects.equals(type, swaggyjenkinsPipelineLatestRun.type) &&
        Objects.equals(commitId, swaggyjenkinsPipelineLatestRun.commitId) &&
        Objects.equals(propertyClass, swaggyjenkinsPipelineLatestRun.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(artifacts, durationInMillis, estimatedDurationInMillis, enQueueTime, endTime, id, organization, pipeline, result, runSummary, startTime, state, type, commitId, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SwaggyjenkinsPipelineLatestRun {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

