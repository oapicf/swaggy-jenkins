package org.openapitools.server.model;

import org.openapitools.server.model.StringParameterValue;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class StringParameterDefinition   {

    private String propertyClass;
    private StringParameterValue defaultParameterValue;
    private String description;
    private String name;
    private String type;

    /**
     * Default constructor.
     */
    public StringParameterDefinition() {
    // JSON-B / Jackson
    }

    /**
     * Create StringParameterDefinition.
     *
     * @param propertyClass propertyClass
     * @param defaultParameterValue defaultParameterValue
     * @param description description
     * @param name name
     * @param type type
     */
    public StringParameterDefinition(
        String propertyClass, 
        StringParameterValue defaultParameterValue, 
        String description, 
        String name, 
        String type
    ) {
        this.propertyClass = propertyClass;
        this.defaultParameterValue = defaultParameterValue;
        this.description = description;
        this.name = name;
        this.type = type;
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
     * Get defaultParameterValue
     * @return defaultParameterValue
     */
    public StringParameterValue getDefaultParameterValue() {
        return defaultParameterValue;
    }

    public void setDefaultParameterValue(StringParameterValue defaultParameterValue) {
        this.defaultParameterValue = defaultParameterValue;
    }

    /**
     * Get description
     * @return description
     */
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * Get name
     * @return name
     */
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /**
     * Get type
     * @return type
     */
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class StringParameterDefinition {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    defaultParameterValue: ").append(toIndentedString(defaultParameterValue)).append("\n");
        sb.append("    description: ").append(toIndentedString(description)).append("\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    type: ").append(toIndentedString(type)).append("\n");
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

