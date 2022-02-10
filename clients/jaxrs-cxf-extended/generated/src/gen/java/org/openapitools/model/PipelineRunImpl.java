package org.openapitools.model;

import org.openapitools.model.PipelineRunImpllinks;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class PipelineRunImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private PipelineRunImpllinks links;

  @ApiModelProperty(value = "")
  private Integer durationInMillis;

  @ApiModelProperty(value = "")
  private String enQueueTime;

  @ApiModelProperty(value = "")
  private String endTime;

  @ApiModelProperty(value = "")
  private Integer estimatedDurationInMillis;

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
 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public PipelineRunImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get links
  * @return links
  */
  @JsonProperty("_links")
  public PipelineRunImpllinks getLinks() {
    return links;
  }

  /**
   * Sets the <code>links</code> property.
   */
 public void setLinks(PipelineRunImpllinks links) {
    this.links = links;
  }

  /**
   * Sets the <code>links</code> property.
   */
  public PipelineRunImpl links(PipelineRunImpllinks links) {
    this.links = links;
    return this;
  }

 /**
  * Get durationInMillis
  * @return durationInMillis
  */
  @JsonProperty("durationInMillis")
  public Integer getDurationInMillis() {
    return durationInMillis;
  }

  /**
   * Sets the <code>durationInMillis</code> property.
   */
 public void setDurationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
  }

  /**
   * Sets the <code>durationInMillis</code> property.
   */
  public PipelineRunImpl durationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
    return this;
  }

 /**
  * Get enQueueTime
  * @return enQueueTime
  */
  @JsonProperty("enQueueTime")
  public String getEnQueueTime() {
    return enQueueTime;
  }

  /**
   * Sets the <code>enQueueTime</code> property.
   */
 public void setEnQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
  }

  /**
   * Sets the <code>enQueueTime</code> property.
   */
  public PipelineRunImpl enQueueTime(String enQueueTime) {
    this.enQueueTime = enQueueTime;
    return this;
  }

 /**
  * Get endTime
  * @return endTime
  */
  @JsonProperty("endTime")
  public String getEndTime() {
    return endTime;
  }

  /**
   * Sets the <code>endTime</code> property.
   */
 public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

  /**
   * Sets the <code>endTime</code> property.
   */
  public PipelineRunImpl endTime(String endTime) {
    this.endTime = endTime;
    return this;
  }

 /**
  * Get estimatedDurationInMillis
  * @return estimatedDurationInMillis
  */
  @JsonProperty("estimatedDurationInMillis")
  public Integer getEstimatedDurationInMillis() {
    return estimatedDurationInMillis;
  }

  /**
   * Sets the <code>estimatedDurationInMillis</code> property.
   */
 public void setEstimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
  }

  /**
   * Sets the <code>estimatedDurationInMillis</code> property.
   */
  public PipelineRunImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
    return this;
  }

 /**
  * Get id
  * @return id
  */
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  /**
   * Sets the <code>id</code> property.
   */
 public void setId(String id) {
    this.id = id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public PipelineRunImpl id(String id) {
    this.id = id;
    return this;
  }

 /**
  * Get organization
  * @return organization
  */
  @JsonProperty("organization")
  public String getOrganization() {
    return organization;
  }

  /**
   * Sets the <code>organization</code> property.
   */
 public void setOrganization(String organization) {
    this.organization = organization;
  }

  /**
   * Sets the <code>organization</code> property.
   */
  public PipelineRunImpl organization(String organization) {
    this.organization = organization;
    return this;
  }

 /**
  * Get pipeline
  * @return pipeline
  */
  @JsonProperty("pipeline")
  public String getPipeline() {
    return pipeline;
  }

  /**
   * Sets the <code>pipeline</code> property.
   */
 public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

  /**
   * Sets the <code>pipeline</code> property.
   */
  public PipelineRunImpl pipeline(String pipeline) {
    this.pipeline = pipeline;
    return this;
  }

 /**
  * Get result
  * @return result
  */
  @JsonProperty("result")
  public String getResult() {
    return result;
  }

  /**
   * Sets the <code>result</code> property.
   */
 public void setResult(String result) {
    this.result = result;
  }

  /**
   * Sets the <code>result</code> property.
   */
  public PipelineRunImpl result(String result) {
    this.result = result;
    return this;
  }

 /**
  * Get runSummary
  * @return runSummary
  */
  @JsonProperty("runSummary")
  public String getRunSummary() {
    return runSummary;
  }

  /**
   * Sets the <code>runSummary</code> property.
   */
 public void setRunSummary(String runSummary) {
    this.runSummary = runSummary;
  }

  /**
   * Sets the <code>runSummary</code> property.
   */
  public PipelineRunImpl runSummary(String runSummary) {
    this.runSummary = runSummary;
    return this;
  }

 /**
  * Get startTime
  * @return startTime
  */
  @JsonProperty("startTime")
  public String getStartTime() {
    return startTime;
  }

  /**
   * Sets the <code>startTime</code> property.
   */
 public void setStartTime(String startTime) {
    this.startTime = startTime;
  }

  /**
   * Sets the <code>startTime</code> property.
   */
  public PipelineRunImpl startTime(String startTime) {
    this.startTime = startTime;
    return this;
  }

 /**
  * Get state
  * @return state
  */
  @JsonProperty("state")
  public String getState() {
    return state;
  }

  /**
   * Sets the <code>state</code> property.
   */
 public void setState(String state) {
    this.state = state;
  }

  /**
   * Sets the <code>state</code> property.
   */
  public PipelineRunImpl state(String state) {
    this.state = state;
    return this;
  }

 /**
  * Get type
  * @return type
  */
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  /**
   * Sets the <code>type</code> property.
   */
 public void setType(String type) {
    this.type = type;
  }

  /**
   * Sets the <code>type</code> property.
   */
  public PipelineRunImpl type(String type) {
    this.type = type;
    return this;
  }

 /**
  * Get commitId
  * @return commitId
  */
  @JsonProperty("commitId")
  public String getCommitId() {
    return commitId;
  }

  /**
   * Sets the <code>commitId</code> property.
   */
 public void setCommitId(String commitId) {
    this.commitId = commitId;
  }

  /**
   * Sets the <code>commitId</code> property.
   */
  public PipelineRunImpl commitId(String commitId) {
    this.commitId = commitId;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineRunImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    durationInMillis: ").append(toIndentedString(durationInMillis)).append("\n");
    sb.append("    enQueueTime: ").append(toIndentedString(enQueueTime)).append("\n");
    sb.append("    endTime: ").append(toIndentedString(endTime)).append("\n");
    sb.append("    estimatedDurationInMillis: ").append(toIndentedString(estimatedDurationInMillis)).append("\n");
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

