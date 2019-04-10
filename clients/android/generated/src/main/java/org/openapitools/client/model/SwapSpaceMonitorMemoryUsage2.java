/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SwapSpaceMonitorMemoryUsage2 {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("availablePhysicalMemory")
  private Integer availablePhysicalMemory = null;
  @SerializedName("availableSwapSpace")
  private Integer availableSwapSpace = null;
  @SerializedName("totalPhysicalMemory")
  private Integer totalPhysicalMemory = null;
  @SerializedName("totalSwapSpace")
  private Integer totalSwapSpace = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getClass() {
    return _class;
  }
  public void setClass(String _class) {
    this._class = _class;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getAvailablePhysicalMemory() {
    return availablePhysicalMemory;
  }
  public void setAvailablePhysicalMemory(Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getAvailableSwapSpace() {
    return availableSwapSpace;
  }
  public void setAvailableSwapSpace(Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getTotalPhysicalMemory() {
    return totalPhysicalMemory;
  }
  public void setTotalPhysicalMemory(Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getTotalSwapSpace() {
    return totalSwapSpace;
  }
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
    return (this._class == null ? swapSpaceMonitorMemoryUsage2._class == null : this._class.equals(swapSpaceMonitorMemoryUsage2._class)) &&
        (this.availablePhysicalMemory == null ? swapSpaceMonitorMemoryUsage2.availablePhysicalMemory == null : this.availablePhysicalMemory.equals(swapSpaceMonitorMemoryUsage2.availablePhysicalMemory)) &&
        (this.availableSwapSpace == null ? swapSpaceMonitorMemoryUsage2.availableSwapSpace == null : this.availableSwapSpace.equals(swapSpaceMonitorMemoryUsage2.availableSwapSpace)) &&
        (this.totalPhysicalMemory == null ? swapSpaceMonitorMemoryUsage2.totalPhysicalMemory == null : this.totalPhysicalMemory.equals(swapSpaceMonitorMemoryUsage2.totalPhysicalMemory)) &&
        (this.totalSwapSpace == null ? swapSpaceMonitorMemoryUsage2.totalSwapSpace == null : this.totalSwapSpace.equals(swapSpaceMonitorMemoryUsage2.totalSwapSpace));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.availablePhysicalMemory == null ? 0: this.availablePhysicalMemory.hashCode());
    result = 31 * result + (this.availableSwapSpace == null ? 0: this.availableSwapSpace.hashCode());
    result = 31 * result + (this.totalPhysicalMemory == null ? 0: this.totalPhysicalMemory.hashCode());
    result = 31 * result + (this.totalSwapSpace == null ? 0: this.totalSwapSpace.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SwapSpaceMonitorMemoryUsage2 {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  availablePhysicalMemory: ").append(availablePhysicalMemory).append("\n");
    sb.append("  availableSwapSpace: ").append(availableSwapSpace).append("\n");
    sb.append("  totalPhysicalMemory: ").append(totalPhysicalMemory).append("\n");
    sb.append("  totalSwapSpace: ").append(totalSwapSpace).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
