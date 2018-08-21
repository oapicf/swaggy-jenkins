package org.openapitools.model;

import org.openapitools.model.PipelineRunImpllinks;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class PipelineRunImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;

  @ApiModelProperty(value = "")
  private PipelineRunImpllinks links = null;

  @ApiModelProperty(value = "")
  private Integer durationInMillis = null;

  @ApiModelProperty(value = "")
  private String enQueueTime = null;

  @ApiModelProperty(value = "")
  private String endTime = null;

  @ApiModelProperty(value = "")
  private Integer estimatedDurationInMillis = null;

  @ApiModelProperty(value = "")
  private String id = null;

  @ApiModelProperty(value = "")
  private String organization = null;

  @ApiModelProperty(value = "")
  private String pipeline = null;

  @ApiModelProperty(value = "")
  private String result = null;

  @ApiModelProperty(value = "")
  private String runSummary = null;

  @ApiModelProperty(value = "")
  private String startTime = null;

  @ApiModelProperty(value = "")
  private String state = null;

  @ApiModelProperty(value = "")
  private String type = null;

  @ApiModelProperty(value = "")
  private String commitId = null;
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

  public PipelineRunImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public PipelineRunImpllinks getLinks() {
    return links;
  }

  public void setLinks(PipelineRunImpllinks links) {
    this.links = links;
  }

  public PipelineRunImpl links(PipelineRunImpllinks links) {
    this.links = links;
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

  public PipelineRunImpl durationInMillis(Integer durationInMillis) {
    this.durationInMillis = durationInMillis;
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

  public PipelineRunImpl enQueueTime(String enQueueTime) {
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

  public PipelineRunImpl endTime(String endTime) {
    this.endTime = endTime;
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

  public PipelineRunImpl estimatedDurationInMillis(Integer estimatedDurationInMillis) {
    this.estimatedDurationInMillis = estimatedDurationInMillis;
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

  public PipelineRunImpl id(String id) {
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

  public PipelineRunImpl organization(String organization) {
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

  public PipelineRunImpl pipeline(String pipeline) {
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

  public PipelineRunImpl result(String result) {
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

  public PipelineRunImpl runSummary(String runSummary) {
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

  public PipelineRunImpl startTime(String startTime) {
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

  public PipelineRunImpl state(String state) {
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

  public PipelineRunImpl type(String type) {
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

