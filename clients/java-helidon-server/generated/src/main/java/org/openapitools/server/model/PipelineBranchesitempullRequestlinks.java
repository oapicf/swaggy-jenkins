package org.openapitools.server.model;

import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class PipelineBranchesitempullRequestlinks   {

    private String self;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public PipelineBranchesitempullRequestlinks() {
    // JSON-B / Jackson
    }

    /**
     * Create PipelineBranchesitempullRequestlinks.
     *
     * @param self self
     * @param propertyClass propertyClass
     */
    public PipelineBranchesitempullRequestlinks(
        String self, 
        String propertyClass
    ) {
        this.self = self;
        this.propertyClass = propertyClass;
    }



    /**
     * Get self
     * @return self
     */
    public String getSelf() {
        return self;
    }

    public void setSelf(String self) {
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
        sb.append("class PipelineBranchesitempullRequestlinks {\n");
        
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

