package org.openapitools.server.model;

import org.openapitools.server.model.GithubContent;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class GithubFile   {

    private GithubContent content;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public GithubFile() {
    // JSON-B / Jackson
    }

    /**
     * Create GithubFile.
     *
     * @param content content
     * @param propertyClass propertyClass
     */
    public GithubFile(
        GithubContent content, 
        String propertyClass
    ) {
        this.content = content;
        this.propertyClass = propertyClass;
    }



    /**
     * Get content
     * @return content
     */
    public GithubContent getContent() {
        return content;
    }

    public void setContent(GithubContent content) {
        this.content = content;
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
        sb.append("class GithubFile {\n");
        
        sb.append("    content: ").append(toIndentedString(content)).append("\n");
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

