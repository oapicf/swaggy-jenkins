package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("SwapSpaceMonitorMemoryUsage2")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-10T09:47:30.188253Z[Etc/UTC]")public class SwapSpaceMonitorMemoryUsage2   {
  
  private @Valid String propertyClass;
  private @Valid Integer availablePhysicalMemory;
  private @Valid Integer availableSwapSpace;
  private @Valid Integer totalPhysicalMemory;
  private @Valid Integer totalSwapSpace;

  /**
   **/
  public SwapSpaceMonitorMemoryUsage2 propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

/**
   **/
  public SwapSpaceMonitorMemoryUsage2 availablePhysicalMemory(Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("availablePhysicalMemory")
  public Integer getAvailablePhysicalMemory() {
    return availablePhysicalMemory;
  }

  @JsonProperty("availablePhysicalMemory")
  public void setAvailablePhysicalMemory(Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
  }

/**
   **/
  public SwapSpaceMonitorMemoryUsage2 availableSwapSpace(Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("availableSwapSpace")
  public Integer getAvailableSwapSpace() {
    return availableSwapSpace;
  }

  @JsonProperty("availableSwapSpace")
  public void setAvailableSwapSpace(Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
  }

/**
   **/
  public SwapSpaceMonitorMemoryUsage2 totalPhysicalMemory(Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("totalPhysicalMemory")
  public Integer getTotalPhysicalMemory() {
    return totalPhysicalMemory;
  }

  @JsonProperty("totalPhysicalMemory")
  public void setTotalPhysicalMemory(Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
  }

/**
   **/
  public SwapSpaceMonitorMemoryUsage2 totalSwapSpace(Integer totalSwapSpace) {
    this.totalSwapSpace = totalSwapSpace;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("totalSwapSpace")
  public Integer getTotalSwapSpace() {
    return totalSwapSpace;
  }

  @JsonProperty("totalSwapSpace")
  public void setTotalSwapSpace(Integer totalSwapSpace) {
    this.totalSwapSpace = totalSwapSpace;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SwapSpaceMonitorMemoryUsage2 swapSpaceMonitorMemoryUsage2 = (SwapSpaceMonitorMemoryUsage2) o;
    return Objects.equals(this.propertyClass, swapSpaceMonitorMemoryUsage2.propertyClass) &&
        Objects.equals(this.availablePhysicalMemory, swapSpaceMonitorMemoryUsage2.availablePhysicalMemory) &&
        Objects.equals(this.availableSwapSpace, swapSpaceMonitorMemoryUsage2.availableSwapSpace) &&
        Objects.equals(this.totalPhysicalMemory, swapSpaceMonitorMemoryUsage2.totalPhysicalMemory) &&
        Objects.equals(this.totalSwapSpace, swapSpaceMonitorMemoryUsage2.totalSwapSpace);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, availablePhysicalMemory, availableSwapSpace, totalPhysicalMemory, totalSwapSpace);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

