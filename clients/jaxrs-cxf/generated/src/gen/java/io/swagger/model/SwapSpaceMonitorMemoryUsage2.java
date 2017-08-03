package io.swagger.model;

import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class SwapSpaceMonitorMemoryUsage2  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private Integer availablePhysicalMemory = null;
  @ApiModelProperty(value = "")
  private Integer availableSwapSpace = null;
  @ApiModelProperty(value = "")
  private Integer totalPhysicalMemory = null;
  @ApiModelProperty(value = "")
  private Integer totalSwapSpace = null;

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

  public SwapSpaceMonitorMemoryUsage2 propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get availablePhysicalMemory
   * @return availablePhysicalMemory
  **/
  public Integer getAvailablePhysicalMemory() {
    return availablePhysicalMemory;
  }

  public void setAvailablePhysicalMemory(Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
  }

  public SwapSpaceMonitorMemoryUsage2 availablePhysicalMemory(Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
    return this;
  }

 /**
   * Get availableSwapSpace
   * @return availableSwapSpace
  **/
  public Integer getAvailableSwapSpace() {
    return availableSwapSpace;
  }

  public void setAvailableSwapSpace(Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
  }

  public SwapSpaceMonitorMemoryUsage2 availableSwapSpace(Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
    return this;
  }

 /**
   * Get totalPhysicalMemory
   * @return totalPhysicalMemory
  **/
  public Integer getTotalPhysicalMemory() {
    return totalPhysicalMemory;
  }

  public void setTotalPhysicalMemory(Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
  }

  public SwapSpaceMonitorMemoryUsage2 totalPhysicalMemory(Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
    return this;
  }

 /**
   * Get totalSwapSpace
   * @return totalSwapSpace
  **/
  public Integer getTotalSwapSpace() {
    return totalSwapSpace;
  }

  public void setTotalSwapSpace(Integer totalSwapSpace) {
    this.totalSwapSpace = totalSwapSpace;
  }

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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

