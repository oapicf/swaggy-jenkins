package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class PipelineRunNodeedges   {

    private String id;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public PipelineRunNodeedges() {
    // JSON-B / Jackson
    }

    /**
     * Create PipelineRunNodeedges.
     *
     * @param id id
     * @param propertyClass propertyClass
     */
    public PipelineRunNodeedges(
        String id, 
        String propertyClass
    ) {
        this.id = id;
        this.propertyClass = propertyClass;
    }



    /**
     * Get id
     * @return id
     */
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
        sb.append("class PipelineRunNodeedges {\n");
        
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
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

