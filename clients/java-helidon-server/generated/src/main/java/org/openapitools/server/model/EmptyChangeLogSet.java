package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class EmptyChangeLogSet   {

    private String propertyClass;
    private String kind;

    /**
     * Default constructor.
     */
    public EmptyChangeLogSet() {
    // JSON-B / Jackson
    }

    /**
     * Create EmptyChangeLogSet.
     *
     * @param propertyClass propertyClass
     * @param kind kind
     */
    public EmptyChangeLogSet(
        String propertyClass, 
        String kind
    ) {
        this.propertyClass = propertyClass;
        this.kind = kind;
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
     * Get kind
     * @return kind
     */
    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class EmptyChangeLogSet {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    kind: ").append(toIndentedString(kind)).append("\n");
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

