package org.openapitools.server.model;

import org.openapitools.server.model.GithubRepositories;
import org.openapitools.server.model.GithubRespositoryContainerlinks;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class GithubRespositoryContainer   {

    private String propertyClass;
    private GithubRespositoryContainerlinks links;
    private GithubRepositories repositories;

    /**
     * Default constructor.
     */
    public GithubRespositoryContainer() {
    // JSON-B / Jackson
    }

    /**
     * Create GithubRespositoryContainer.
     *
     * @param propertyClass propertyClass
     * @param links links
     * @param repositories repositories
     */
    public GithubRespositoryContainer(
        String propertyClass, 
        GithubRespositoryContainerlinks links, 
        GithubRepositories repositories
    ) {
        this.propertyClass = propertyClass;
        this.links = links;
        this.repositories = repositories;
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
    public GithubRespositoryContainerlinks getLinks() {
        return links;
    }

    public void setLinks(GithubRespositoryContainerlinks links) {
        this.links = links;
    }

    /**
     * Get repositories
     * @return repositories
     */
    public GithubRepositories getRepositories() {
        return repositories;
    }

    public void setRepositories(GithubRepositories repositories) {
        this.repositories = repositories;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class GithubRespositoryContainer {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    repositories: ").append(toIndentedString(repositories)).append("\n");
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

