package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace;
import io.swagger.model.HudsonnodeMonitorsResponseTimeMonitorData;
import io.swagger.model.HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2;
import io.swagger.model.HudsonutilClockDifference;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class HudsonmodelHudsonMasterComputerMonitorData   {
  
  private HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor = null;
  private HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor = null;
  private HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor = null;
  private String hudsonNodeMonitorsArchitectureMonitor = null;
  private HudsonnodeMonitorsResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor = null;
  private HudsonutilClockDifference hudsonNodeMonitorsClockMonitor = null;
  private String propertyClass = null;

  /**
   **/
  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsSwapSpaceMonitor(HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.SwapSpaceMonitor")
  public HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 getHudsonNodeMonitorsSwapSpaceMonitor() {
    return hudsonNodeMonitorsSwapSpaceMonitor;
  }
  public void setHudsonNodeMonitorsSwapSpaceMonitor(HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsTemporarySpaceMonitor(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.TemporarySpaceMonitor")
  public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsTemporarySpaceMonitor() {
    return hudsonNodeMonitorsTemporarySpaceMonitor;
  }
  public void setHudsonNodeMonitorsTemporarySpaceMonitor(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsDiskSpaceMonitor(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.DiskSpaceMonitor")
  public HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsDiskSpaceMonitor() {
    return hudsonNodeMonitorsDiskSpaceMonitor;
  }
  public void setHudsonNodeMonitorsDiskSpaceMonitor(HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsArchitectureMonitor(String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.ArchitectureMonitor")
  public String getHudsonNodeMonitorsArchitectureMonitor() {
    return hudsonNodeMonitorsArchitectureMonitor;
  }
  public void setHudsonNodeMonitorsArchitectureMonitor(String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsResponseTimeMonitor(HudsonnodeMonitorsResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.ResponseTimeMonitor")
  public HudsonnodeMonitorsResponseTimeMonitorData getHudsonNodeMonitorsResponseTimeMonitor() {
    return hudsonNodeMonitorsResponseTimeMonitor;
  }
  public void setHudsonNodeMonitorsResponseTimeMonitor(HudsonnodeMonitorsResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputerMonitorData hudsonNodeMonitorsClockMonitor(HudsonutilClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.ClockMonitor")
  public HudsonutilClockDifference getHudsonNodeMonitorsClockMonitor() {
    return hudsonNodeMonitorsClockMonitor;
  }
  public void setHudsonNodeMonitorsClockMonitor(HudsonutilClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
  }

  /**
   **/
  public HudsonmodelHudsonMasterComputerMonitorData propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonmodelHudsonMasterComputerMonitorData hudsonmodelHudsonMasterComputerMonitorData = (HudsonmodelHudsonMasterComputerMonitorData) o;
    return Objects.equals(hudsonNodeMonitorsSwapSpaceMonitor, hudsonmodelHudsonMasterComputerMonitorData.hudsonNodeMonitorsSwapSpaceMonitor) &&
        Objects.equals(hudsonNodeMonitorsTemporarySpaceMonitor, hudsonmodelHudsonMasterComputerMonitorData.hudsonNodeMonitorsTemporarySpaceMonitor) &&
        Objects.equals(hudsonNodeMonitorsDiskSpaceMonitor, hudsonmodelHudsonMasterComputerMonitorData.hudsonNodeMonitorsDiskSpaceMonitor) &&
        Objects.equals(hudsonNodeMonitorsArchitectureMonitor, hudsonmodelHudsonMasterComputerMonitorData.hudsonNodeMonitorsArchitectureMonitor) &&
        Objects.equals(hudsonNodeMonitorsResponseTimeMonitor, hudsonmodelHudsonMasterComputerMonitorData.hudsonNodeMonitorsResponseTimeMonitor) &&
        Objects.equals(hudsonNodeMonitorsClockMonitor, hudsonmodelHudsonMasterComputerMonitorData.hudsonNodeMonitorsClockMonitor) &&
        Objects.equals(propertyClass, hudsonmodelHudsonMasterComputerMonitorData.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hudsonNodeMonitorsSwapSpaceMonitor, hudsonNodeMonitorsTemporarySpaceMonitor, hudsonNodeMonitorsDiskSpaceMonitor, hudsonNodeMonitorsArchitectureMonitor, hudsonNodeMonitorsResponseTimeMonitor, hudsonNodeMonitorsClockMonitor, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelHudsonMasterComputerMonitorData {\n");
    
    sb.append("    hudsonNodeMonitorsSwapSpaceMonitor: ").append(toIndentedString(hudsonNodeMonitorsSwapSpaceMonitor)).append("\n");
    sb.append("    hudsonNodeMonitorsTemporarySpaceMonitor: ").append(toIndentedString(hudsonNodeMonitorsTemporarySpaceMonitor)).append("\n");
    sb.append("    hudsonNodeMonitorsDiskSpaceMonitor: ").append(toIndentedString(hudsonNodeMonitorsDiskSpaceMonitor)).append("\n");
    sb.append("    hudsonNodeMonitorsArchitectureMonitor: ").append(toIndentedString(hudsonNodeMonitorsArchitectureMonitor)).append("\n");
    sb.append("    hudsonNodeMonitorsResponseTimeMonitor: ").append(toIndentedString(hudsonNodeMonitorsResponseTimeMonitor)).append("\n");
    sb.append("    hudsonNodeMonitorsClockMonitor: ").append(toIndentedString(hudsonNodeMonitorsClockMonitor)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
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

