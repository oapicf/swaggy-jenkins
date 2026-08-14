package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class DiskSpaceMonitorDescriptorDiskSpace   {

    private String propertyClass;
    private Integer timestamp;
    private String path;
    private Integer size;

    /**
     * Default constructor.
     */
    public DiskSpaceMonitorDescriptorDiskSpace() {
    // JSON-B / Jackson
    }

    /**
     * Create DiskSpaceMonitorDescriptorDiskSpace.
     *
     * @param propertyClass propertyClass
     * @param timestamp timestamp
     * @param path path
     * @param size size
     */
    public DiskSpaceMonitorDescriptorDiskSpace(
        String propertyClass, 
        Integer timestamp, 
        String path, 
        Integer size
    ) {
        this.propertyClass = propertyClass;
        this.timestamp = timestamp;
        this.path = path;
        this.size = size;
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
     * Get timestamp
     * @return timestamp
     */
    public Integer getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Integer timestamp) {
        this.timestamp = timestamp;
    }

    /**
     * Get path
     * @return path
     */
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    /**
     * Get size
     * @return size
     */
    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class DiskSpaceMonitorDescriptorDiskSpace {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
        sb.append("    path: ").append(toIndentedString(path)).append("\n");
        sb.append("    size: ").append(toIndentedString(size)).append("\n");
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

