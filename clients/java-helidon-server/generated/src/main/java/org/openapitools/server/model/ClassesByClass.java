package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class ClassesByClass   {

    private List<String> classes = new ArrayList<>();
    private String propertyClass;

    /**
     * Default constructor.
     */
    public ClassesByClass() {
    // JSON-B / Jackson
    }

    /**
     * Create ClassesByClass.
     *
     * @param classes classes
     * @param propertyClass propertyClass
     */
    public ClassesByClass(
        List<String> classes, 
        String propertyClass
    ) {
        this.classes = classes;
        this.propertyClass = propertyClass;
    }



    /**
     * Get classes
     * @return classes
     */
    public List<String> getClasses() {
        return classes;
    }

    public void setClasses(List<String> classes) {
        this.classes = classes;
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
        sb.append("class ClassesByClass {\n");
        
        sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
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

