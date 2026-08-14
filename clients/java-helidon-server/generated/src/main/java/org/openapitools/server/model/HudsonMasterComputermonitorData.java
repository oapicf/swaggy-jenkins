package org.openapitools.server.model;

import org.openapitools.server.model.ClockDifference;
import org.openapitools.server.model.DiskSpaceMonitorDescriptorDiskSpace;
import org.openapitools.server.model.ResponseTimeMonitorData;
import org.openapitools.server.model.SwapSpaceMonitorMemoryUsage2;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class HudsonMasterComputermonitorData   {

    private SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor;
    private DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor;
    private DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor;
    private String hudsonNodeMonitorsArchitectureMonitor;
    private ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor;
    private ClockDifference hudsonNodeMonitorsClockMonitor;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public HudsonMasterComputermonitorData() {
    // JSON-B / Jackson
    }

    /**
     * Create HudsonMasterComputermonitorData.
     *
     * @param hudsonNodeMonitorsSwapSpaceMonitor hudsonNodeMonitorsSwapSpaceMonitor
     * @param hudsonNodeMonitorsTemporarySpaceMonitor hudsonNodeMonitorsTemporarySpaceMonitor
     * @param hudsonNodeMonitorsDiskSpaceMonitor hudsonNodeMonitorsDiskSpaceMonitor
     * @param hudsonNodeMonitorsArchitectureMonitor hudsonNodeMonitorsArchitectureMonitor
     * @param hudsonNodeMonitorsResponseTimeMonitor hudsonNodeMonitorsResponseTimeMonitor
     * @param hudsonNodeMonitorsClockMonitor hudsonNodeMonitorsClockMonitor
     * @param propertyClass propertyClass
     */
    public HudsonMasterComputermonitorData(
        SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor, 
        DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor, 
        DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor, 
        String hudsonNodeMonitorsArchitectureMonitor, 
        ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor, 
        ClockDifference hudsonNodeMonitorsClockMonitor, 
        String propertyClass
    ) {
        this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
        this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
        this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
        this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
        this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
        this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
        this.propertyClass = propertyClass;
    }



    /**
     * Get hudsonNodeMonitorsSwapSpaceMonitor
     * @return hudsonNodeMonitorsSwapSpaceMonitor
     */
    public SwapSpaceMonitorMemoryUsage2 getHudsonNodeMonitorsSwapSpaceMonitor() {
        return hudsonNodeMonitorsSwapSpaceMonitor;
    }

    public void setHudsonNodeMonitorsSwapSpaceMonitor(SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor) {
        this.hudsonNodeMonitorsSwapSpaceMonitor = hudsonNodeMonitorsSwapSpaceMonitor;
    }

    /**
     * Get hudsonNodeMonitorsTemporarySpaceMonitor
     * @return hudsonNodeMonitorsTemporarySpaceMonitor
     */
    public DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsTemporarySpaceMonitor() {
        return hudsonNodeMonitorsTemporarySpaceMonitor;
    }

    public void setHudsonNodeMonitorsTemporarySpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor) {
        this.hudsonNodeMonitorsTemporarySpaceMonitor = hudsonNodeMonitorsTemporarySpaceMonitor;
    }

    /**
     * Get hudsonNodeMonitorsDiskSpaceMonitor
     * @return hudsonNodeMonitorsDiskSpaceMonitor
     */
    public DiskSpaceMonitorDescriptorDiskSpace getHudsonNodeMonitorsDiskSpaceMonitor() {
        return hudsonNodeMonitorsDiskSpaceMonitor;
    }

    public void setHudsonNodeMonitorsDiskSpaceMonitor(DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor) {
        this.hudsonNodeMonitorsDiskSpaceMonitor = hudsonNodeMonitorsDiskSpaceMonitor;
    }

    /**
     * Get hudsonNodeMonitorsArchitectureMonitor
     * @return hudsonNodeMonitorsArchitectureMonitor
     */
    public String getHudsonNodeMonitorsArchitectureMonitor() {
        return hudsonNodeMonitorsArchitectureMonitor;
    }

    public void setHudsonNodeMonitorsArchitectureMonitor(String hudsonNodeMonitorsArchitectureMonitor) {
        this.hudsonNodeMonitorsArchitectureMonitor = hudsonNodeMonitorsArchitectureMonitor;
    }

    /**
     * Get hudsonNodeMonitorsResponseTimeMonitor
     * @return hudsonNodeMonitorsResponseTimeMonitor
     */
    public ResponseTimeMonitorData getHudsonNodeMonitorsResponseTimeMonitor() {
        return hudsonNodeMonitorsResponseTimeMonitor;
    }

    public void setHudsonNodeMonitorsResponseTimeMonitor(ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor) {
        this.hudsonNodeMonitorsResponseTimeMonitor = hudsonNodeMonitorsResponseTimeMonitor;
    }

    /**
     * Get hudsonNodeMonitorsClockMonitor
     * @return hudsonNodeMonitorsClockMonitor
     */
    public ClockDifference getHudsonNodeMonitorsClockMonitor() {
        return hudsonNodeMonitorsClockMonitor;
    }

    public void setHudsonNodeMonitorsClockMonitor(ClockDifference hudsonNodeMonitorsClockMonitor) {
        this.hudsonNodeMonitorsClockMonitor = hudsonNodeMonitorsClockMonitor;
    }

    /**
     * Get propertyClass
     * @return propertyClass
     */
    public String getPropertyClass() {
        return propertyClass;
    }

    public void setPropertyClass(String propertyClass) {
        this.propertyClass = propertyClass;
    }

    /**
      * Create a string representation of this pojo.
    **/
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
    private static String toIndentedString(Object o) {
        return o == null ? "null" : o.toString().replace("\n", "\n    ");
    }
}

