/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.cliffano.swaggyjenkins.model;

import java.util.Objects;
import java.util.Arrays;
import com.cliffano.swaggyjenkins.model.ClockDifference;
import com.cliffano.swaggyjenkins.model.DiskSpaceMonitorDescriptorDiskSpace;
import com.cliffano.swaggyjenkins.model.ResponseTimeMonitorData;
import com.cliffano.swaggyjenkins.model.SwapSpaceMonitorMemoryUsage2;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * HudsonMasterComputermonitorData
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-02-09T13:00:41.367124Z[Etc/UTC]")
public class HudsonMasterComputermonitorData {
  public static final String SERIALIZED_NAME_HUDSON_NODE_MONITORS_SWAP_SPACE_MONITOR = "hudson.node_monitors.SwapSpaceMonitor";
  @SerializedName(SERIALIZED_NAME_HUDSON_NODE_MONITORS_SWAP_SPACE_MONITOR)
  private SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor;

  public static final String SERIALIZED_NAME_HUDSON_NODE_MONITORS_TEMPORARY_SPACE_MONITOR = "hudson.node_monitors.TemporarySpaceMonitor";
  @SerializedName(SERIALIZED_NAME_HUDSON_NODE_MONITORS_TEMPORARY_SPACE_MONITOR)
  private DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor;

  public static final String SERIALIZED_NAME_HUDSON_NODE_MONITORS_DISK_SPACE_MONITOR = "hudson.node_monitors.DiskSpaceMonitor";
  @SerializedName(SERIALIZED_NAME_HUDSON_NODE_MONITORS_DISK_SPACE_MONITOR)
  private DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor;

  public static final String SERIALIZED_NAME_HUDSON_NODE_MONITORS_ARCHITECTURE_MONITOR = "hudson.node_monitors.ArchitectureMonitor";
  @SerializedName(SERIALIZED_NAME_HUDSON_NODE_MONITORS_ARCHITECTURE_MONITOR)
  private String hudsonNodeMonitorsArchitectureMonitor;

  public static final String SERIALIZED_NAME_HUDSON_NODE_MONITORS_RESPONSE_TIME_MONITOR = "hudson.node_monitors.ResponseTimeMonitor";
  @SerializedName(SERIALIZED_NAME_HUDSON_NODE_MONITORS_RESPONSE_TIME_MONITOR)
  private ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor;

  public static final String SERIALIZED_NAME_HUDSON_NODE_MONITORS_CLOCK_MONITOR = "hudson.node_monitors.ClockMonitor";
  @SerializedName(SERIALIZED_NAME_HUDSON_NODE_MONITORS_CLOCK_MONITOR)
  private ClockDifference hudsonNodeMonitorsClockMonitor;

  public static final String SERIALIZED_NAME_PROPERTY_CLASS = "_class";
  @SerializedName(SERIALIZED_NAME_PROPERTY_CLASS)
  private String propertyClass;

  public HudsonMasterComputermonitorData() { 
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
    return this;
  }

   /**
   * Get hudsonNodeMonitorsSwapSpaceMonitor
   * @return hudsonNodeMonitorsSwapSpaceMonitor
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

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
  @javax.annotation.Nullable
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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

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
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public String getPropertyClass() {
    return propertyClass;
  }


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

