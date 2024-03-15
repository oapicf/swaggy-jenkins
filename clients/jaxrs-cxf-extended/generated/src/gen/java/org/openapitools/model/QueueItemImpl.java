package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class QueueItemImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private Integer expectedBuildNumber;

  @ApiModelProperty(value = "")
  private String id;

  @ApiModelProperty(value = "")
  private String pipeline;

  @ApiModelProperty(value = "")
  private Integer queuedTime;
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
  public QueueItemImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get expectedBuildNumber
  * @return expectedBuildNumber
  */
  @JsonProperty("expectedBuildNumber")
  public Integer getExpectedBuildNumber() {
    return expectedBuildNumber;
  }

  /**
   * Sets the <code>expectedBuildNumber</code> property.
   */
 public void setExpectedBuildNumber(Integer expectedBuildNumber) {
    this.expectedBuildNumber = expectedBuildNumber;
  }

  /**
   * Sets the <code>expectedBuildNumber</code> property.
   */
  public QueueItemImpl expectedBuildNumber(Integer expectedBuildNumber) {
    this.expectedBuildNumber = expectedBuildNumber;
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
  public QueueItemImpl id(String id) {
    this.id = id;
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
  public QueueItemImpl pipeline(String pipeline) {
    this.pipeline = pipeline;
    return this;
  }

 /**
  * Get queuedTime
  * @return queuedTime
  */
  @JsonProperty("queuedTime")
  public Integer getQueuedTime() {
    return queuedTime;
  }

  /**
   * Sets the <code>queuedTime</code> property.
   */
 public void setQueuedTime(Integer queuedTime) {
    this.queuedTime = queuedTime;
  }

  /**
   * Sets the <code>queuedTime</code> property.
   */
  public QueueItemImpl queuedTime(Integer queuedTime) {
    this.queuedTime = queuedTime;
    return this;
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
    return Objects.equals(this.propertyClass, queueItemImpl.propertyClass) &&
        Objects.equals(this.expectedBuildNumber, queueItemImpl.expectedBuildNumber) &&
        Objects.equals(this.id, queueItemImpl.id) &&
        Objects.equals(this.pipeline, queueItemImpl.pipeline) &&
        Objects.equals(this.queuedTime, queueItemImpl.queuedTime);
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

