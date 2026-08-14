package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class ResponseTimeMonitorData   {

    private String propertyClass;
    private Integer timestamp;
    private Integer average;

    /**
     * Default constructor.
     */
    public ResponseTimeMonitorData() {
    // JSON-B / Jackson
    }

    /**
     * Create ResponseTimeMonitorData.
     *
     * @param propertyClass propertyClass
     * @param timestamp timestamp
     * @param average average
     */
    public ResponseTimeMonitorData(
        String propertyClass, 
        Integer timestamp, 
        Integer average
    ) {
        this.propertyClass = propertyClass;
        this.timestamp = timestamp;
        this.average = average;
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
     * Get average
     * @return average
     */
    public Integer getAverage() {
        return average;
    }

    public void setAverage(Integer average) {
        this.average = average;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class ResponseTimeMonitorData {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
        sb.append("    average: ").append(toIndentedString(average)).append("\n");
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

