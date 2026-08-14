package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class FreeStyleProjecthealthReport   {

    private String description;
    private String iconClassName;
    private String iconUrl;
    private Integer score;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public FreeStyleProjecthealthReport() {
    // JSON-B / Jackson
    }

    /**
     * Create FreeStyleProjecthealthReport.
     *
     * @param description description
     * @param iconClassName iconClassName
     * @param iconUrl iconUrl
     * @param score score
     * @param propertyClass propertyClass
     */
    public FreeStyleProjecthealthReport(
        String description, 
        String iconClassName, 
        String iconUrl, 
        Integer score, 
        String propertyClass
    ) {
        this.description = description;
        this.iconClassName = iconClassName;
        this.iconUrl = iconUrl;
        this.score = score;
        this.propertyClass = propertyClass;
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
     * Get iconClassName
     * @return iconClassName
     */
    public String getIconClassName() {
        return iconClassName;
    }

    public void setIconClassName(String iconClassName) {
        this.iconClassName = iconClassName;
    }

    /**
     * Get iconUrl
     * @return iconUrl
     */
    public String getIconUrl() {
        return iconUrl;
    }

    public void setIconUrl(String iconUrl) {
        this.iconUrl = iconUrl;
    }

    /**
     * Get score
     * @return score
     */
    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
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
        sb.append("class FreeStyleProjecthealthReport {\n");
        
        sb.append("    description: ").append(toIndentedString(description)).append("\n");
        sb.append("    iconClassName: ").append(toIndentedString(iconClassName)).append("\n");
        sb.append("    iconUrl: ").append(toIndentedString(iconUrl)).append("\n");
        sb.append("    score: ").append(toIndentedString(score)).append("\n");
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

