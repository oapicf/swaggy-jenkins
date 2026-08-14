package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.CauseUserIdCause;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class CauseAction   {

    private String propertyClass;
    private List<@Valid CauseUserIdCause> causes = new ArrayList<>();

    /**
     * Default constructor.
     */
    public CauseAction() {
    // JSON-B / Jackson
    }

    /**
     * Create CauseAction.
     *
     * @param propertyClass propertyClass
     * @param causes causes
     */
    public CauseAction(
        String propertyClass, 
        List<@Valid CauseUserIdCause> causes
    ) {
        this.propertyClass = propertyClass;
        this.causes = causes;
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
     * Get causes
     * @return causes
     */
    public List<@Valid CauseUserIdCause> getCauses() {
        return causes;
    }

    public void setCauses(List<@Valid CauseUserIdCause> causes) {
        this.causes = causes;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class CauseAction {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    causes: ").append(toIndentedString(causes)).append("\n");
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

