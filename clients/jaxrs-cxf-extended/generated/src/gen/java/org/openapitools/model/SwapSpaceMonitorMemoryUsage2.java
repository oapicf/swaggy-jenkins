package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class SwapSpaceMonitorMemoryUsage2  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private Integer availablePhysicalMemory;

  @ApiModelProperty(value = "")
  private Integer availableSwapSpace;

  @ApiModelProperty(value = "")
  private Integer totalPhysicalMemory;

  @ApiModelProperty(value = "")
  private Integer totalSwapSpace;
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
  public SwapSpaceMonitorMemoryUsage2 propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get availablePhysicalMemory
  * @return availablePhysicalMemory
  */
  @JsonProperty("availablePhysicalMemory")
  public Integer getAvailablePhysicalMemory() {
    return availablePhysicalMemory;
  }

  /**
   * Sets the <code>availablePhysicalMemory</code> property.
   */
 public void setAvailablePhysicalMemory(Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
  }

  /**
   * Sets the <code>availablePhysicalMemory</code> property.
   */
  public SwapSpaceMonitorMemoryUsage2 availablePhysicalMemory(Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
    return this;
  }

 /**
  * Get availableSwapSpace
  * @return availableSwapSpace
  */
  @JsonProperty("availableSwapSpace")
  public Integer getAvailableSwapSpace() {
    return availableSwapSpace;
  }

  /**
   * Sets the <code>availableSwapSpace</code> property.
   */
 public void setAvailableSwapSpace(Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
  }

  /**
   * Sets the <code>availableSwapSpace</code> property.
   */
  public SwapSpaceMonitorMemoryUsage2 availableSwapSpace(Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
    return this;
  }

 /**
  * Get totalPhysicalMemory
  * @return totalPhysicalMemory
  */
  @JsonProperty("totalPhysicalMemory")
  public Integer getTotalPhysicalMemory() {
    return totalPhysicalMemory;
  }

  /**
   * Sets the <code>totalPhysicalMemory</code> property.
   */
 public void setTotalPhysicalMemory(Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
  }

  /**
   * Sets the <code>totalPhysicalMemory</code> property.
   */
  public SwapSpaceMonitorMemoryUsage2 totalPhysicalMemory(Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
    return this;
  }

 /**
  * Get totalSwapSpace
  * @return totalSwapSpace
  */
  @JsonProperty("totalSwapSpace")
  public Integer getTotalSwapSpace() {
    return totalSwapSpace;
  }

  /**
   * Sets the <code>totalSwapSpace</code> property.
   */
 public void setTotalSwapSpace(Integer totalSwapSpace) {
    this.totalSwapSpace = totalSwapSpace;
  }

  /**
   * Sets the <code>totalSwapSpace</code> property.
   */
  public SwapSpaceMonitorMemoryUsage2 totalSwapSpace(Integer totalSwapSpace) {
    this.totalSwapSpace = totalSwapSpace;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SwapSpaceMonitorMemoryUsage2 {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    availablePhysicalMemory: ").append(toIndentedString(availablePhysicalMemory)).append("\n");
    sb.append("    availableSwapSpace: ").append(toIndentedString(availableSwapSpace)).append("\n");
    sb.append("    totalPhysicalMemory: ").append(toIndentedString(totalPhysicalMemory)).append("\n");
    sb.append("    totalSwapSpace: ").append(toIndentedString(totalSwapSpace)).append("\n");
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

