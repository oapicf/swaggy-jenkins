package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ClockDifference;
import io.swagger.model.DiskSpaceMonitorDescriptorDiskSpace;
import io.swagger.model.ResponseTimeMonitorData;
import io.swagger.model.SwapSpaceMonitorMemoryUsage2;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * HudsonMasterComputermonitorData
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2017-08-03T23:37:43.850Z")

public class HudsonMasterComputermonitorData   {
  @JsonProperty("hudson.node_monitors.SwapSpaceMonitor")
  private SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor = null;

  @JsonProperty("hudson.node_monitors.TemporarySpaceMonitor")
  private DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor = null;

  @JsonProperty("hudson.node_monitors.DiskSpaceMonitor")
  private DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor = null;

  @JsonProperty("hudson.node_monitors.ArchitectureMonitor")
  private String hudsonNodeMonitorsArchitectureMonitor = null;

  @JsonProperty("hudson.node_monitors.ResponseTimeMonitor")
  private ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor = null;

  @JsonProperty("hudson.node_monitors.ClockMonitor")
  private ClockDifference hudsonNodeMonitorsClockMonitor = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  public HudsonMasterComputermonitorData hudsonNodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
    return this;
  }

   /**
   * Get hudsonNodeMonitorsSwapSpaceMonitor
   * @return hudsonNodeMonitorsSwapSpaceMonitor
  **/
  @ApiModelProperty(value = "")

  @Valid

  public SwapSpaceMonitorMemoryUsage2 getHudsonNodeMonitorsSwapSpaceMonitor() {
    return hudsonNodeMonitorsSwapSpaceMonitor;
  }

  public void setHudsonNodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
    return this;
  }

   /**
   * Get hudsonNodeMonitorsTemporarySpaceMonitor
   * @return hudsonNodeMonitorsTemporarySpaceMonitor
  **/
  @ApiModelProperty(value = "")

  @Valid

  public DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsTemporarySpaceMonitor() {
    return hudsonNodeMonitorsTemporarySpaceMonitor;
  }

  public void setHudsonNodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
    return this;
  }

   /**
   * Get hudsonNodeMonitorsDiskSpaceMonitor
   * @return hudsonNodeMonitorsDiskSpaceMonitor
  **/
  @ApiModelProperty(value = "")

  @Valid

  public DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsDiskSpaceMonitor() {
    return hudsonNodeMonitorsDiskSpaceMonitor;
  }

  public void setHudsonNodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsArchitectureMonitor(String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
    return this;
  }

   /**
   * Get hudsonNodeMonitorsArchitectureMonitor
   * @return hudsonNodeMonitorsArchitectureMonitor
  **/
  @ApiModelProperty(value = "")


  public String getHudsonNodeMonitorsArchitectureMonitor() {
    return hudsonNodeMonitorsArchitectureMonitor;
  }

  public void setHudsonNodeMonitorsArchitectureMonitor(String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
    return this;
  }

   /**
   * Get hudsonNodeMonitorsResponseTimeMonitor
   * @return hudsonNodeMonitorsResponseTimeMonitor
  **/
  @ApiModelProperty(value = "")

  @Valid

  public ResponseTimeMonitorData getHudsonNodeMonitorsResponseTimeMonitor() {
    return hudsonNodeMonitorsResponseTimeMonitor;
  }

  public void setHudsonNodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsClockMonitor(ClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
    return this;
  }

   /**
   * Get hudsonNodeMonitorsClockMonitor
   * @return hudsonNodeMonitorsClockMonitor
  **/
  @ApiModelProperty(value = "")

  @Valid

  public ClockDifference getHudsonNodeMonitorsClockMonitor() {
    return hudsonNodeMonitorsClockMonitor;
  }

  public void setHudsonNodeMonitorsClockMonitor(ClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
  }

  public HudsonMasterComputermonitorData propertyClass(String propertyClass) {
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


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

