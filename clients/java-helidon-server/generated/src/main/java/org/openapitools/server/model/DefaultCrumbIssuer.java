package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class DefaultCrumbIssuer   {

    private String propertyClass;
    private String crumb;
    private String crumbRequestField;

    /**
     * Default constructor.
     */
    public DefaultCrumbIssuer() {
    // JSON-B / Jackson
    }

    /**
     * Create DefaultCrumbIssuer.
     *
     * @param propertyClass propertyClass
     * @param crumb crumb
     * @param crumbRequestField crumbRequestField
     */
    public DefaultCrumbIssuer(
        String propertyClass, 
        String crumb, 
        String crumbRequestField
    ) {
        this.propertyClass = propertyClass;
        this.crumb = crumb;
        this.crumbRequestField = crumbRequestField;
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
     * Get crumb
     * @return crumb
     */
    public String getCrumb() {
        return crumb;
    }

    public void setCrumb(String crumb) {
        this.crumb = crumb;
    }

    /**
     * Get crumbRequestField
     * @return crumbRequestField
     */
    public String getCrumbRequestField() {
        return crumbRequestField;
    }

    public void setCrumbRequestField(String crumbRequestField) {
        this.crumbRequestField = crumbRequestField;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class DefaultCrumbIssuer {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    crumb: ").append(toIndentedString(crumb)).append("\n");
        sb.append("    crumbRequestField: ").append(toIndentedString(crumbRequestField)).append("\n");
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

