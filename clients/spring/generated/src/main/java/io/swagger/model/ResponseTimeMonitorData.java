package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ResponseTimeMonitorData
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-08-03T23:37:43.850Z")

public class ResponseTimeMonitorData   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("timestamp")
  private Integer timestamp = null;

  @JsonProperty("average")
  private Integer average = null;

  public ResponseTimeMonitorData propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")


  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public ResponseTimeMonitorData timestamp(Integer timestamp) {
    this.timestamp = timestamp;
    return this;
  }

   /**
   * Get timestamp
   * @return timestamp
  **/
  @ApiModelProperty(value = "")


  public Integer getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  public ResponseTimeMonitorData average(Integer average) {
    this.average = average;
    return this;
  }

   /**
   * Get average
   * @return average
  **/
  @ApiModelProperty(value = "")


  public Integer getAverage() {
    return average;
  }

  public void setAverage(Integer average) {
    this.average = average;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeMonitorData responseTimeMonitorData = (ResponseTimeMonitorData) o;
    return Objects.equals(this.propertyClass, responseTimeMonitorData.propertyClass) &&
        Objects.equals(this.timestamp, responseTimeMonitorData.timestamp) &&
        Objects.equals(this.average, responseTimeMonitorData.average);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, timestamp, average);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMonitorData {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    average: ").append(toIndentedString(average)).append("\n");
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

