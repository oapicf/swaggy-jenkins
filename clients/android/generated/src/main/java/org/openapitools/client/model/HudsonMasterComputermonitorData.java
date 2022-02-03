/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import org.openapitools.client.model.ClockDifference;
import org.openapitools.client.model.DiskSpaceMonitorDescriptorDiskSpace;
import org.openapitools.client.model.ResponseTimeMonitorData;
import org.openapitools.client.model.SwapSpaceMonitorMemoryUsage2;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class HudsonMasterComputermonitorData {
  
  @SerializedName("hudson.node_monitors.SwapSpaceMonitor")
  private SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor = null;
  @SerializedName("hudson.node_monitors.TemporarySpaceMonitor")
  private DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor = null;
  @SerializedName("hudson.node_monitors.DiskSpaceMonitor")
  private DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor = null;
  @SerializedName("hudson.node_monitors.ArchitectureMonitor")
  private String hudsonNodeMonitorsArchitectureMonitor = null;
  @SerializedName("hudson.node_monitors.ResponseTimeMonitor")
  private ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor = null;
  @SerializedName("hudson.node_monitors.ClockMonitor")
  private ClockDifference hudsonNodeMonitorsClockMonitor = null;
  @SerializedName("_class")
  private String _class = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public SwapSpaceMonitorMemoryUsage2 getHudsonNodeMonitorsSwapSpaceMonitor() {
    return hudsonNodeMonitorsSwapSpaceMonitor;
  }
  public void setHudsonNodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsTemporarySpaceMonitor() {
    return hudsonNodeMonitorsTemporarySpaceMonitor;
  }
  public void setHudsonNodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsDiskSpaceMonitor() {
    return hudsonNodeMonitorsDiskSpaceMonitor;
  }
  public void setHudsonNodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getHudsonNodeMonitorsArchitectureMonitor() {
    return hudsonNodeMonitorsArchitectureMonitor;
  }
  public void setHudsonNodeMonitorsArchitectureMonitor(String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ResponseTimeMonitorData getHudsonNodeMonitorsResponseTimeMonitor() {
    return hudsonNodeMonitorsResponseTimeMonitor;
  }
  public void setHudsonNodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ClockDifference getHudsonNodeMonitorsClockMonitor() {
    return hudsonNodeMonitorsClockMonitor;
  }
  public void setHudsonNodeMonitorsClockMonitor(ClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getClass() {
    return _class;
  }
  public void setClass(String _class) {
    this._class = _class;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonMasterComputermonitorData hudsonMasterComputermonitorData = (HudsonMasterComputermonitorData) o;
    return (this.hudsonNodeMonitorsSwapSpaceMonitor == null ? hudsonMasterComputermonitorData.hudsonNodeMonitorsSwapSpaceMonitor == null : this.hudsonNodeMonitorsSwapSpaceMonitor.equals(hudsonMasterComputermonitorData.hudsonNodeMonitorsSwapSpaceMonitor)) &&
        (this.hudsonNodeMonitorsTemporarySpaceMonitor == null ? hudsonMasterComputermonitorData.hudsonNodeMonitorsTemporarySpaceMonitor == null : this.hudsonNodeMonitorsTemporarySpaceMonitor.equals(hudsonMasterComputermonitorData.hudsonNodeMonitorsTemporarySpaceMonitor)) &&
        (this.hudsonNodeMonitorsDiskSpaceMonitor == null ? hudsonMasterComputermonitorData.hudsonNodeMonitorsDiskSpaceMonitor == null : this.hudsonNodeMonitorsDiskSpaceMonitor.equals(hudsonMasterComputermonitorData.hudsonNodeMonitorsDiskSpaceMonitor)) &&
        (this.hudsonNodeMonitorsArchitectureMonitor == null ? hudsonMasterComputermonitorData.hudsonNodeMonitorsArchitectureMonitor == null : this.hudsonNodeMonitorsArchitectureMonitor.equals(hudsonMasterComputermonitorData.hudsonNodeMonitorsArchitectureMonitor)) &&
        (this.hudsonNodeMonitorsResponseTimeMonitor == null ? hudsonMasterComputermonitorData.hudsonNodeMonitorsResponseTimeMonitor == null : this.hudsonNodeMonitorsResponseTimeMonitor.equals(hudsonMasterComputermonitorData.hudsonNodeMonitorsResponseTimeMonitor)) &&
        (this.hudsonNodeMonitorsClockMonitor == null ? hudsonMasterComputermonitorData.hudsonNodeMonitorsClockMonitor == null : this.hudsonNodeMonitorsClockMonitor.equals(hudsonMasterComputermonitorData.hudsonNodeMonitorsClockMonitor)) &&
        (this._class == null ? hudsonMasterComputermonitorData._class == null : this._class.equals(hudsonMasterComputermonitorData._class));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.hudsonNodeMonitorsSwapSpaceMonitor == null ? 0: this.hudsonNodeMonitorsSwapSpaceMonitor.hashCode());
    result = 31 * result + (this.hudsonNodeMonitorsTemporarySpaceMonitor == null ? 0: this.hudsonNodeMonitorsTemporarySpaceMonitor.hashCode());
    result = 31 * result + (this.hudsonNodeMonitorsDiskSpaceMonitor == null ? 0: this.hudsonNodeMonitorsDiskSpaceMonitor.hashCode());
    result = 31 * result + (this.hudsonNodeMonitorsArchitectureMonitor == null ? 0: this.hudsonNodeMonitorsArchitectureMonitor.hashCode());
    result = 31 * result + (this.hudsonNodeMonitorsResponseTimeMonitor == null ? 0: this.hudsonNodeMonitorsResponseTimeMonitor.hashCode());
    result = 31 * result + (this.hudsonNodeMonitorsClockMonitor == null ? 0: this.hudsonNodeMonitorsClockMonitor.hashCode());
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonMasterComputermonitorData {\n");
    
    sb.append("  hudsonNodeMonitorsSwapSpaceMonitor: ").append(hudsonNodeMonitorsSwapSpaceMonitor).append("\n");
    sb.append("  hudsonNodeMonitorsTemporarySpaceMonitor: ").append(hudsonNodeMonitorsTemporarySpaceMonitor).append("\n");
    sb.append("  hudsonNodeMonitorsDiskSpaceMonitor: ").append(hudsonNodeMonitorsDiskSpaceMonitor).append("\n");
    sb.append("  hudsonNodeMonitorsArchitectureMonitor: ").append(hudsonNodeMonitorsArchitectureMonitor).append("\n");
    sb.append("  hudsonNodeMonitorsResponseTimeMonitor: ").append(hudsonNodeMonitorsResponseTimeMonitor).append("\n");
    sb.append("  hudsonNodeMonitorsClockMonitor: ").append(hudsonNodeMonitorsClockMonitor).append("\n");
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
