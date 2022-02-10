package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ResponseTimeMonitorData  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private Integer timestamp;

  @ApiModelProperty(value = "")
  private Integer average;
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
  public ResponseTimeMonitorData propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get timestamp
  * @return timestamp
  */
  @JsonProperty("timestamp")
  public Integer getTimestamp() {
    return timestamp;
  }

  /**
   * Sets the <code>timestamp</code> property.
   */
 public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  /**
   * Sets the <code>timestamp</code> property.
   */
  public ResponseTimeMonitorData timestamp(Integer timestamp) {
    this.timestamp = timestamp;
    return this;
  }

 /**
  * Get average
  * @return average
  */
  @JsonProperty("average")
  public Integer getAverage() {
    return average;
  }

  /**
   * Sets the <code>average</code> property.
   */
 public void setAverage(Integer average) {
    this.average = average;
  }

  /**
   * Sets the <code>average</code> property.
   */
  public ResponseTimeMonitorData average(Integer average) {
    this.average = average;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

