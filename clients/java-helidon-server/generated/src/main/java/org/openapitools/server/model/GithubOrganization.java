package org.openapitools.server.model;

import org.openapitools.server.model.GithubOrganizationlinks;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class GithubOrganization   {

    private String propertyClass;
    private GithubOrganizationlinks links;
    private Boolean jenkinsOrganizationPipeline;
    private String name;

    /**
     * Default constructor.
     */
    public GithubOrganization() {
    // JSON-B / Jackson
    }

    /**
     * Create GithubOrganization.
     *
     * @param propertyClass propertyClass
     * @param links links
     * @param jenkinsOrganizationPipeline jenkinsOrganizationPipeline
     * @param name name
     */
    public GithubOrganization(
        String propertyClass, 
        GithubOrganizationlinks links, 
        Boolean jenkinsOrganizationPipeline, 
        String name
    ) {
        this.propertyClass = propertyClass;
        this.links = links;
        this.jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
        this.name = name;
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
    public GithubOrganizationlinks getLinks() {
        return links;
    }

    public void setLinks(GithubOrganizationlinks links) {
        this.links = links;
    }

    /**
     * Get jenkinsOrganizationPipeline
     * @return jenkinsOrganizationPipeline
     */
    public Boolean getJenkinsOrganizationPipeline() {
        return jenkinsOrganizationPipeline;
    }

    public void setJenkinsOrganizationPipeline(Boolean jenkinsOrganizationPipeline) {
        this.jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
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
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class GithubOrganization {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    jenkinsOrganizationPipeline: ").append(toIndentedString(jenkinsOrganizationPipeline)).append("\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
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

