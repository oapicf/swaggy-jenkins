package io.swagger.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class QueueItemImpl  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private Integer expectedBuildNumber = null;
  @ApiModelProperty(value = "")
  private String id = null;
  @ApiModelProperty(value = "")
  private String pipeline = null;
  @ApiModelProperty(value = "")
  private Integer queuedTime = null;

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public QueueItemImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get expectedBuildNumber
   * @return expectedBuildNumber
  **/
  public Integer getExpectedBuildNumber() {
    return expectedBuildNumber;
  }

  public void setExpectedBuildNumber(Integer expectedBuildNumber) {
    this.expectedBuildNumber = expectedBuildNumber;
  }

  public QueueItemImpl expectedBuildNumber(Integer expectedBuildNumber) {
    this.expectedBuildNumber = expectedBuildNumber;
    return this;
  }

 /**
   * Get id
   * @return id
  **/
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public QueueItemImpl id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get pipeline
   * @return pipeline
  **/
  public String getPipeline() {
    return pipeline;
  }

  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

  public QueueItemImpl pipeline(String pipeline) {
    this.pipeline = pipeline;
    return this;
  }

 /**
   * Get queuedTime
   * @return queuedTime
  **/
  public Integer getQueuedTime() {
    return queuedTime;
  }

  public void setQueuedTime(Integer queuedTime) {
    this.queuedTime = queuedTime;
  }

  public QueueItemImpl queuedTime(Integer queuedTime) {
    this.queuedTime = queuedTime;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

