/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.model;

import java.util.Objects;
import java.util.Arrays;
import org.openapitools.model.ClockDifference;
import org.openapitools.model.DiskSpaceMonitorDescriptorDiskSpace;
import org.openapitools.model.ResponseTimeMonitorData;
import org.openapitools.model.SwapSpaceMonitorMemoryUsage2;
import com.fasterxml.jackson.annotation.*;

import javax.validation.constraints.*;
import javax.validation.Valid;
import io.micronaut.core.annotation.*;
import javax.annotation.Generated;

/**
 * HudsonMasterComputermonitorData
 */
@JsonPropertyOrder({
  HudsonMasterComputermonitorData.JSON_PROPERTY_HUDSON_NODE_MONITORS_SWAP_SPACE_MONITOR,
  HudsonMasterComputermonitorData.JSON_PROPERTY_HUDSON_NODE_MONITORS_TEMPORARY_SPACE_MONITOR,
  HudsonMasterComputermonitorData.JSON_PROPERTY_HUDSON_NODE_MONITORS_DISK_SPACE_MONITOR,
  HudsonMasterComputermonitorData.JSON_PROPERTY_HUDSON_NODE_MONITORS_ARCHITECTURE_MONITOR,
  HudsonMasterComputermonitorData.JSON_PROPERTY_HUDSON_NODE_MONITORS_RESPONSE_TIME_MONITOR,
  HudsonMasterComputermonitorData.JSON_PROPERTY_HUDSON_NODE_MONITORS_CLOCK_MONITOR,
  HudsonMasterComputermonitorData.JSON_PROPERTY_PROPERTY_CLASS
})
@JsonTypeName("HudsonMasterComputermonitorData")
@Generated(value="org.openapitools.codegen.languages.JavaMicronautClientCodegen", date="2024-03-15T14:11:59.582308919Z[Etc/UTC]", comments = "Generator version: 7.4.0")
@Introspected
public class HudsonMasterComputermonitorData {
    public static final String JSON_PROPERTY_HUDSON_NODE_MONITORS_SWAP_SPACE_MONITOR = "hudson.node_monitors.SwapSpaceMonitor";
    private SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor;

    public static final String JSON_PROPERTY_HUDSON_NODE_MONITORS_TEMPORARY_SPACE_MONITOR = "hudson.node_monitors.TemporarySpaceMonitor";
    private DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor;

    public static final String JSON_PROPERTY_HUDSON_NODE_MONITORS_DISK_SPACE_MONITOR = "hudson.node_monitors.DiskSpaceMonitor";
    private DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor;

    public static final String JSON_PROPERTY_HUDSON_NODE_MONITORS_ARCHITECTURE_MONITOR = "hudson.node_monitors.ArchitectureMonitor";
    private String hudsonNodeMonitorsArchitectureMonitor;

    public static final String JSON_PROPERTY_HUDSON_NODE_MONITORS_RESPONSE_TIME_MONITOR = "hudson.node_monitors.ResponseTimeMonitor";
    private ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor;

    public static final String JSON_PROPERTY_HUDSON_NODE_MONITORS_CLOCK_MONITOR = "hudson.node_monitors.ClockMonitor";
    private ClockDifference hudsonNodeMonitorsClockMonitor;

    public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
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
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_SWAP_SPACE_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public SwapSpaceMonitorMemoryUsage2 getHudsonNodeMonitorsSwapSpaceMonitor() {
        return hudsonNodeMonitorsSwapSpaceMonitor;
    }

    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_SWAP_SPACE_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_TEMPORARY_SPACE_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsTemporarySpaceMonitor() {
        return hudsonNodeMonitorsTemporarySpaceMonitor;
    }

    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_TEMPORARY_SPACE_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_DISK_SPACE_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsDiskSpaceMonitor() {
        return hudsonNodeMonitorsDiskSpaceMonitor;
    }

    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_DISK_SPACE_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_ARCHITECTURE_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getHudsonNodeMonitorsArchitectureMonitor() {
        return hudsonNodeMonitorsArchitectureMonitor;
    }

    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_ARCHITECTURE_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_RESPONSE_TIME_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public ResponseTimeMonitorData getHudsonNodeMonitorsResponseTimeMonitor() {
        return hudsonNodeMonitorsResponseTimeMonitor;
    }

    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_RESPONSE_TIME_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Valid
    @Nullable
    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_CLOCK_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public ClockDifference getHudsonNodeMonitorsClockMonitor() {
        return hudsonNodeMonitorsClockMonitor;
    }

    @JsonProperty(JSON_PROPERTY_HUDSON_NODE_MONITORS_CLOCK_MONITOR)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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
    @Nullable
    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
    public String getPropertyClass() {
        return propertyClass;
    }

    @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
    @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)
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

