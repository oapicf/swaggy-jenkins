package org.openapitools.server.model;

import org.openapitools.server.model.ExtensionClassContainerImpl1links;
import org.openapitools.server.model.ExtensionClassContainerImpl1map;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class ExtensionClassContainerImpl1   {

    private String propertyClass;
    private ExtensionClassContainerImpl1links links;
    private ExtensionClassContainerImpl1map map;

    /**
     * Default constructor.
     */
    public ExtensionClassContainerImpl1() {
    // JSON-B / Jackson
    }

    /**
     * Create ExtensionClassContainerImpl1.
     *
     * @param propertyClass propertyClass
     * @param links links
     * @param map map
     */
    public ExtensionClassContainerImpl1(
        String propertyClass, 
        ExtensionClassContainerImpl1links links, 
        ExtensionClassContainerImpl1map map
    ) {
        this.propertyClass = propertyClass;
        this.links = links;
        this.map = map;
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
    public ExtensionClassContainerImpl1links getLinks() {
        return links;
    }

    public void setLinks(ExtensionClassContainerImpl1links links) {
        this.links = links;
    }

    /**
     * Get map
     * @return map
     */
    public ExtensionClassContainerImpl1map getMap() {
        return map;
    }

    public void setMap(ExtensionClassContainerImpl1map map) {
        this.map = map;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class ExtensionClassContainerImpl1 {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    map: ").append(toIndentedString(map)).append("\n");
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

