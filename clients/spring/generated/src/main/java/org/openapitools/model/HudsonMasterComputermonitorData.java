package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.ClockDifference;
import org.openapitools.model.DiskSpaceMonitorDescriptorDiskSpace;
import org.openapitools.model.ResponseTimeMonitorData;
import org.openapitools.model.SwapSpaceMonitorMemoryUsage2;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * HudsonMasterComputermonitorData
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-14T13:30:31.619187222Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class HudsonMasterComputermonitorData {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String hudsonNodeMonitorsArchitectureMonitor;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable ClockDifference hudsonNodeMonitorsClockMonitor;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  public HudsonMasterComputermonitorData hudsonNodeMonitorsSwapSpaceMonitor(@Nullable SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
    return this;
  }

  /**
   * Get hudsonNodeMonitorsSwapSpaceMonitor
   * @return hudsonNodeMonitorsSwapSpaceMonitor
   */
  @Valid 
  @Schema(name = "hudson.node_monitors.SwapSpaceMonitor", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("hudson.node_monitors.SwapSpaceMonitor")
  public @Nullable SwapSpaceMonitorMemoryUsage2 getHudsonNodeMonitorsSwapSpaceMonitor() {
    return hudsonNodeMonitorsSwapSpaceMonitor;
  }

  @JsonProperty("hudson.node_monitors.SwapSpaceMonitor")
  public void setHudsonNodeMonitorsSwapSpaceMonitor(@Nullable SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
    this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsTemporarySpaceMonitor(@Nullable DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
    return this;
  }

  /**
   * Get hudsonNodeMonitorsTemporarySpaceMonitor
   * @return hudsonNodeMonitorsTemporarySpaceMonitor
   */
  @Valid 
  @Schema(name = "hudson.node_monitors.TemporarySpaceMonitor", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("hudson.node_monitors.TemporarySpaceMonitor")
  public @Nullable DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsTemporarySpaceMonitor() {
    return hudsonNodeMonitorsTemporarySpaceMonitor;
  }

  @JsonProperty("hudson.node_monitors.TemporarySpaceMonitor")
  public void setHudsonNodeMonitorsTemporarySpaceMonitor(@Nullable DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
    this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsDiskSpaceMonitor(@Nullable DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
    return this;
  }

  /**
   * Get hudsonNodeMonitorsDiskSpaceMonitor
   * @return hudsonNodeMonitorsDiskSpaceMonitor
   */
  @Valid 
  @Schema(name = "hudson.node_monitors.DiskSpaceMonitor", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("hudson.node_monitors.DiskSpaceMonitor")
  public @Nullable DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsDiskSpaceMonitor() {
    return hudsonNodeMonitorsDiskSpaceMonitor;
  }

  @JsonProperty("hudson.node_monitors.DiskSpaceMonitor")
  public void setHudsonNodeMonitorsDiskSpaceMonitor(@Nullable DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
    this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsArchitectureMonitor(@Nullable String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
    return this;
  }

  /**
   * Get hudsonNodeMonitorsArchitectureMonitor
   * @return hudsonNodeMonitorsArchitectureMonitor
   */
  
  @Schema(name = "hudson.node_monitors.ArchitectureMonitor", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("hudson.node_monitors.ArchitectureMonitor")
  public @Nullable String getHudsonNodeMonitorsArchitectureMonitor() {
    return hudsonNodeMonitorsArchitectureMonitor;
  }

  @JsonProperty("hudson.node_monitors.ArchitectureMonitor")
  public void setHudsonNodeMonitorsArchitectureMonitor(@Nullable String hudsonNodeMonitorsArchitectureMonitor) {
    this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsResponseTimeMonitor(@Nullable ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
    return this;
  }

  /**
   * Get hudsonNodeMonitorsResponseTimeMonitor
   * @return hudsonNodeMonitorsResponseTimeMonitor
   */
  @Valid 
  @Schema(name = "hudson.node_monitors.ResponseTimeMonitor", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("hudson.node_monitors.ResponseTimeMonitor")
  public @Nullable ResponseTimeMonitorData getHudsonNodeMonitorsResponseTimeMonitor() {
    return hudsonNodeMonitorsResponseTimeMonitor;
  }

  @JsonProperty("hudson.node_monitors.ResponseTimeMonitor")
  public void setHudsonNodeMonitorsResponseTimeMonitor(@Nullable ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
    this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
  }

  public HudsonMasterComputermonitorData hudsonNodeMonitorsClockMonitor(@Nullable ClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
    return this;
  }

  /**
   * Get hudsonNodeMonitorsClockMonitor
   * @return hudsonNodeMonitorsClockMonitor
   */
  @Valid 
  @Schema(name = "hudson.node_monitors.ClockMonitor", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("hudson.node_monitors.ClockMonitor")
  public @Nullable ClockDifference getHudsonNodeMonitorsClockMonitor() {
    return hudsonNodeMonitorsClockMonitor;
  }

  @JsonProperty("hudson.node_monitors.ClockMonitor")
  public void setHudsonNodeMonitorsClockMonitor(@Nullable ClockDifference hudsonNodeMonitorsClockMonitor) {
    this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
  }

  public HudsonMasterComputermonitorData propertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
  public @Nullable String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(@Nullable String propertyClass) {
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
  private String toIndentedString(@Nullable Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

