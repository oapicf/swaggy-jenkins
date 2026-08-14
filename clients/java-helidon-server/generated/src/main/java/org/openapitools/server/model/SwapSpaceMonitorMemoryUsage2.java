package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class SwapSpaceMonitorMemoryUsage2   {

    private String propertyClass;
    private Integer availablePhysicalMemory;
    private Integer availableSwapSpace;
    private Integer totalPhysicalMemory;
    private Integer totalSwapSpace;

    /**
     * Default constructor.
     */
    public SwapSpaceMonitorMemoryUsage2() {
    // JSON-B / Jackson
    }

    /**
     * Create SwapSpaceMonitorMemoryUsage2.
     *
     * @param propertyClass propertyClass
     * @param availablePhysicalMemory availablePhysicalMemory
     * @param availableSwapSpace availableSwapSpace
     * @param totalPhysicalMemory totalPhysicalMemory
     * @param totalSwapSpace totalSwapSpace
     */
    public SwapSpaceMonitorMemoryUsage2(
        String propertyClass, 
        Integer availablePhysicalMemory, 
        Integer availableSwapSpace, 
        Integer totalPhysicalMemory, 
        Integer totalSwapSpace
    ) {
        this.propertyClass = propertyClass;
        this.availablePhysicalMemory = availablePhysicalMemory;
        this.availableSwapSpace = availableSwapSpace;
        this.totalPhysicalMemory = totalPhysicalMemory;
        this.totalSwapSpace = totalSwapSpace;
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
     * Get availablePhysicalMemory
     * @return availablePhysicalMemory
     */
    public Integer getAvailablePhysicalMemory() {
        return availablePhysicalMemory;
    }

    public void setAvailablePhysicalMemory(Integer availablePhysicalMemory) {
        this.availablePhysicalMemory = availablePhysicalMemory;
    }

    /**
     * Get availableSwapSpace
     * @return availableSwapSpace
     */
    public Integer getAvailableSwapSpace() {
        return availableSwapSpace;
    }

    public void setAvailableSwapSpace(Integer availableSwapSpace) {
        this.availableSwapSpace = availableSwapSpace;
    }

    /**
     * Get totalPhysicalMemory
     * @return totalPhysicalMemory
     */
    public Integer getTotalPhysicalMemory() {
        return totalPhysicalMemory;
    }

    public void setTotalPhysicalMemory(Integer totalPhysicalMemory) {
        this.totalPhysicalMemory = totalPhysicalMemory;
    }

    /**
     * Get totalSwapSpace
     * @return totalSwapSpace
     */
    public Integer getTotalSwapSpace() {
        return totalSwapSpace;
    }

    public void setTotalSwapSpace(Integer totalSwapSpace) {
        this.totalSwapSpace = totalSwapSpace;
    }

    /**
      * Create a string representation of this pojo.
    **/
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
    private static String toIndentedString(Object o) {
        return o == null ? "null" : o.toString().replace("\n", "\n    ");
    }
}

