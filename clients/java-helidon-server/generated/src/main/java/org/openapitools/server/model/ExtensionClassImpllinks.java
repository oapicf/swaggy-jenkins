package org.openapitools.server.model;

import org.openapitools.server.model.Link;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class ExtensionClassImpllinks   {

    private Link self;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public ExtensionClassImpllinks() {
    // JSON-B / Jackson
    }

    /**
     * Create ExtensionClassImpllinks.
     *
     * @param self self
     * @param propertyClass propertyClass
     */
    public ExtensionClassImpllinks(
        Link self, 
        String propertyClass
    ) {
        this.self = self;
        this.propertyClass = propertyClass;
    }



    /**
     * Get self
     * @return self
     */
    public Link getSelf() {
        return self;
    }

    public void setSelf(Link self) {
        this.self = self;
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
        sb.append("class ExtensionClassImpllinks {\n");
        
        sb.append("    self: ").append(toIndentedString(self)).append("\n");
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

