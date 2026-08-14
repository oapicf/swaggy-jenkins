package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.ExtensionClassImpllinks;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class ExtensionClassImpl   {

    private String propertyClass;
    private ExtensionClassImpllinks links;
    private List<String> classes = new ArrayList<>();

    /**
     * Default constructor.
     */
    public ExtensionClassImpl() {
    // JSON-B / Jackson
    }

    /**
     * Create ExtensionClassImpl.
     *
     * @param propertyClass propertyClass
     * @param links links
     * @param classes classes
     */
    public ExtensionClassImpl(
        String propertyClass, 
        ExtensionClassImpllinks links, 
        List<String> classes
    ) {
        this.propertyClass = propertyClass;
        this.links = links;
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
     * Get links
     * @return links
     */
    public ExtensionClassImpllinks getLinks() {
        return links;
    }

    public void setLinks(ExtensionClassImpllinks links) {
        this.links = links;
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
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class ExtensionClassImpl {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
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

