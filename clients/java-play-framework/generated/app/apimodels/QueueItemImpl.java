package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * QueueItemImpl
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-10T13:18:27.094Z[GMT]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class QueueItemImpl   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("expectedBuildNumber")
  private Integer expectedBuildNumber = null;

  @JsonProperty("id")
  private String id = null;

  @JsonProperty("pipeline")
  private String pipeline = null;

  @JsonProperty("queuedTime")
  private Integer queuedTime = null;

  public QueueItemImpl propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

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

  public QueueItemImpl expectedBuildNumber(Integer expectedBuildNumber) {
    this.expectedBuildNumber = expectedBuildNumber;
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

  public QueueItemImpl id(String id) {
    this.id = id;
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

  public QueueItemImpl pipeline(String pipeline) {
    this.pipeline = pipeline;
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

  public QueueItemImpl queuedTime(Integer queuedTime) {
    this.queuedTime = queuedTime;
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

