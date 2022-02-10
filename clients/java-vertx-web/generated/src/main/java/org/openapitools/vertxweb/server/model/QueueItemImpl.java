package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class QueueItemImpl   {
  
  private String propertyClass;
  private Integer expectedBuildNumber;
  private String id;
  private String pipeline;
  private Integer queuedTime;

  public QueueItemImpl () {

  }

  public QueueItemImpl (String propertyClass, Integer expectedBuildNumber, String id, String pipeline, Integer queuedTime) {
    this.propertyClass = propertyClass;
    this.expectedBuildNumber = expectedBuildNumber;
    this.id = id;
    this.pipeline = pipeline;
    this.queuedTime = queuedTime;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("expectedBuildNumber")
  public Integer getExpectedBuildNumber() {
    return expectedBuildNumber;
  }
  public void setExpectedBuildNumber(Integer expectedBuildNumber) {
    this.expectedBuildNumber = expectedBuildNumber;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("pipeline")
  public String getPipeline() {
    return pipeline;
  }
  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

    
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
