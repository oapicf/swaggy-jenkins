package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2025-04-27T08:09:15.793738019Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class QueueItemImpl   {
  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("expectedBuildNumber")
  private Integer expectedBuildNumber;

  @JsonProperty("id")
  private String id;

  @JsonProperty("pipeline")
  private String pipeline;

  @JsonProperty("queuedTime")
  private Integer queuedTime;

  /**
   **/
  public QueueItemImpl propertyClass(String propertyClass) {
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
  public QueueItemImpl expectedBuildNumber(Integer expectedBuildNumber) {
    this.expectedBuildNumber = expectedBuildNumber;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("expectedBuildNumber")
  public Integer getExpectedBuildNumber() {
    return expectedBuildNumber;
  }
  public void setExpectedBuildNumber(Integer expectedBuildNumber) {
    this.expectedBuildNumber = expectedBuildNumber;
  }

  /**
   **/
  public QueueItemImpl id(String id) {
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
  public QueueItemImpl pipeline(String pipeline) {
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
  public QueueItemImpl queuedTime(Integer queuedTime) {
    this.queuedTime = queuedTime;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("queuedTime")
  public Integer getQueuedTime() {
    return queuedTime;
  }
  public void setQueuedTime(Integer queuedTime) {
    this.queuedTime = queuedTime;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    QueueItemImpl queueItemImpl = (QueueItemImpl) o;
    return Objects.equals(propertyClass, queueItemImpl.propertyClass) &&
        Objects.equals(expectedBuildNumber, queueItemImpl.expectedBuildNumber) &&
        Objects.equals(id, queueItemImpl.id) &&
        Objects.equals(pipeline, queueItemImpl.pipeline) &&
        Objects.equals(queuedTime, queueItemImpl.queuedTime);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, expectedBuildNumber, id, pipeline, queuedTime);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class QueueItemImpl {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    expectedBuildNumber: ").append(toIndentedString(expectedBuildNumber)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    pipeline: ").append(toIndentedString(pipeline)).append("\n");
    sb.append("    queuedTime: ").append(toIndentedString(queuedTime)).append("\n");
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

