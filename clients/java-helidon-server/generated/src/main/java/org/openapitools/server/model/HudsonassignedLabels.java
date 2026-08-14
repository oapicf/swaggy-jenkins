package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class HudsonassignedLabels   {

    private String propertyClass;

    /**
     * Default constructor.
     */
    public HudsonassignedLabels() {
    // JSON-B / Jackson
    }

    /**
     * Create HudsonassignedLabels.
     *
     * @param propertyClass propertyClass
     */
    public HudsonassignedLabels(
        String propertyClass
    ) {
        this.propertyClass = propertyClass;
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
        sb.append("class HudsonassignedLabels {\n");
        
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

