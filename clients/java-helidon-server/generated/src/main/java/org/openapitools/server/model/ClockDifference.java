package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class ClockDifference   {

    private String propertyClass;
    private Integer diff;

    /**
     * Default constructor.
     */
    public ClockDifference() {
    // JSON-B / Jackson
    }

    /**
     * Create ClockDifference.
     *
     * @param propertyClass propertyClass
     * @param diff diff
     */
    public ClockDifference(
        String propertyClass, 
        Integer diff
    ) {
        this.propertyClass = propertyClass;
        this.diff = diff;
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
     * Get diff
     * @return diff
     */
    public Integer getDiff() {
        return diff;
    }

    public void setDiff(Integer diff) {
        this.diff = diff;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class ClockDifference {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    diff: ").append(toIndentedString(diff)).append("\n");
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

