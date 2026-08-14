package org.openapitools.server.model;

import org.openapitools.server.model.Link;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class GithubOrganizationlinks   {

    private Link repositories;
    private Link self;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public GithubOrganizationlinks() {
    // JSON-B / Jackson
    }

    /**
     * Create GithubOrganizationlinks.
     *
     * @param repositories repositories
     * @param self self
     * @param propertyClass propertyClass
     */
    public GithubOrganizationlinks(
        Link repositories, 
        Link self, 
        String propertyClass
    ) {
        this.repositories = repositories;
        this.self = self;
        this.propertyClass = propertyClass;
    }



    /**
     * Get repositories
     * @return repositories
     */
    public Link getRepositories() {
        return repositories;
    }

    public void setRepositories(Link repositories) {
        this.repositories = repositories;
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
        sb.append("class GithubOrganizationlinks {\n");
        
        sb.append("    repositories: ").append(toIndentedString(repositories)).append("\n");
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

