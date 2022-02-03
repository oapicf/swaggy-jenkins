package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ClockDifference;
import org.openapitools.model.DiskSpaceMonitorDescriptorDiskSpace;
import org.openapitools.model.ResponseTimeMonitorData;
import org.openapitools.model.SwapSpaceMonitorMemoryUsage2;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("HudsonMasterComputermonitorData")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-02T10:45:47.905826Z[Etc/UTC]")public class HudsonMasterComputermonitorData   {
  
  private @Valid SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor;
  private @Valid DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor;
  private @Valid DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor;
  private @Valid String hudsonNodeMonitorsArchitectureMonitor;
  private @Valid ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor;
  private @Valid ClockDifference hudsonNodeMonitorsClockMonitor;
  private @Valid String propertyClass;

  /**
   **/
  public HudsonMasterComputermonitorData hudsonNodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.SwapSpaceMonitor")
  public SwapSpaceMonitorMemoryUsage2 getHudsonNodeMonitorsSwapSpaceMonitor() {
    return hudsonNodeMonitorsSwapSpaceMonitor;
  }

  @JsonProperty("hudson.node_monitors.SwapSpaceMonitor")
  public void setHudsonNodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
  }

/**
   **/
  public HudsonMasterComputermonitorData hudsonNodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.TemporarySpaceMonitor")
  public DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsTemporarySpaceMonitor() {
    return hudsonNodeMonitorsTemporarySpaceMonitor;
  }

  @JsonProperty("hudson.node_monitors.TemporarySpaceMonitor")
  public void setHudsonNodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
  }

/**
   **/
  public HudsonMasterComputermonitorData hudsonNodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.DiskSpaceMonitor")
  public DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsDiskSpaceMonitor() {
    return hudsonNodeMonitorsDiskSpaceMonitor;
  }

  @JsonProperty("hudson.node_monitors.DiskSpaceMonitor")
  public void setHudsonNodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
  }

/**
   **/
  public HudsonMasterComputermonitorData hudsonNodeMonitorsArchitectureMonitor(String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.ArchitectureMonitor")
  public String getHudsonNodeMonitorsArchitectureMonitor() {
    return hudsonNodeMonitorsArchitectureMonitor;
  }

  @JsonProperty("hudson.node_monitors.ArchitectureMonitor")
  public void setHudsonNodeMonitorsArchitectureMonitor(String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
  }

/**
   **/
  public HudsonMasterComputermonitorData hudsonNodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.ResponseTimeMonitor")
  public ResponseTimeMonitorData getHudsonNodeMonitorsResponseTimeMonitor() {
    return hudsonNodeMonitorsResponseTimeMonitor;
  }

  @JsonProperty("hudson.node_monitors.ResponseTimeMonitor")
  public void setHudsonNodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
  }

/**
   **/
  public HudsonMasterComputermonitorData hudsonNodeMonitorsClockMonitor(ClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("hudson.node_monitors.ClockMonitor")
  public ClockDifference getHudsonNodeMonitorsClockMonitor() {
    return hudsonNodeMonitorsClockMonitor;
  }

  @JsonProperty("hudson.node_monitors.ClockMonitor")
  public void setHudsonNodeMonitorsClockMonitor(ClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
  }

/**
   **/
  public HudsonMasterComputermonitorData propertyClass(String propertyClass) {
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonMasterComputermonitorData hudsonMasterComputermonitorData = (HudsonMasterComputermonitorData) o;
    return Objects.equals(this.hudsonNodeMonitorsSwapSpaceMonitor, hudsonMasterComputermonitorData.hudsonNodeMonitorsSwapSpaceMonitor) &&
        Objects.equals(this.hudsonNodeMonitorsTemporarySpaceMonitor, hudsonMasterComputermonitorData.hudsonNodeMonitorsTemporarySpaceMonitor) &&
        Objects.equals(this.hudsonNodeMonitorsDiskSpaceMonitor, hudsonMasterComputermonitorData.hudsonNodeMonitorsDiskSpaceMonitor) &&
        Objects.equals(this.hudsonNodeMonitorsArchitectureMonitor, hudsonMasterComputermonitorData.hudsonNodeMonitorsArchitectureMonitor) &&
        Objects.equals(this.hudsonNodeMonitorsResponseTimeMonitor, hudsonMasterComputermonitorData.hudsonNodeMonitorsResponseTimeMonitor) &&
        Objects.equals(this.hudsonNodeMonitorsClockMonitor, hudsonMasterComputermonitorData.hudsonNodeMonitorsClockMonitor) &&
        Objects.equals(this.propertyClass, hudsonMasterComputermonitorData.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hudsonNodeMonitorsSwapSpaceMonitor, hudsonNodeMonitorsTemporarySpaceMonitor, hudsonNodeMonitorsDiskSpaceMonitor, hudsonNodeMonitorsArchitectureMonitor, hudsonNodeMonitorsResponseTimeMonitor, hudsonNodeMonitorsClockMonitor, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonMasterComputermonitorData {\n");
    
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

