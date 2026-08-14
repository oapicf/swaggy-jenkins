package org.openapitools.model;

import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class QueueItemImpl implements Serializable {
  private static final long serialVersionUID = 1L;

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
   * 
   * @return propertyClass
   */
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * 
   * @return expectedBuildNumber
   */
  public Integer getExpectedBuildNumber() {
    return expectedBuildNumber;
  }

  public void setExpectedBuildNumber(Integer expectedBuildNumber) {
    this.expectedBuildNumber = expectedBuildNumber;
  }

  /**
   * 
   * @return id
   */
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  /**
   * 
   * @return pipeline
   */
  public String getPipeline() {
    return pipeline;
  }

  public void setPipeline(String pipeline) {
    this.pipeline = pipeline;
  }

  /**
   * 
   * @return queuedTime
   */
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
  private String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
