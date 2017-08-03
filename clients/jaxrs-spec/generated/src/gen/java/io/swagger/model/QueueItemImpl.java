package io.swagger.model;

import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class QueueItemImpl   {
  
  private String propertyClass = null;
  private Integer expectedBuildNumber = null;
  private String id = null;
  private String pipeline = null;
  private Integer queuedTime = null;

  /**
   **/
  public QueueItemImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
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
  public Integer getQueuedTime() {
    return queuedTime;
  }
  public void setQueuedTime(Integer queuedTime) {
    this.queuedTime = queuedTime;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

