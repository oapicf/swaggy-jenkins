package org.openapitools.server.model;

import org.openapitools.server.model.PipelineBranchesitempullRequestlinks;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class PipelineBranchesitempullRequest   {

    private PipelineBranchesitempullRequestlinks links;
    private String author;
    private String id;
    private String title;
    private String url;
    private String propertyClass;

    /**
     * Default constructor.
     */
    public PipelineBranchesitempullRequest() {
    // JSON-B / Jackson
    }

    /**
     * Create PipelineBranchesitempullRequest.
     *
     * @param links links
     * @param author author
     * @param id id
     * @param title title
     * @param url url
     * @param propertyClass propertyClass
     */
    public PipelineBranchesitempullRequest(
        PipelineBranchesitempullRequestlinks links, 
        String author, 
        String id, 
        String title, 
        String url, 
        String propertyClass
    ) {
        this.links = links;
        this.author = author;
        this.id = id;
        this.title = title;
        this.url = url;
        this.propertyClass = propertyClass;
    }



    /**
     * Get links
     * @return links
     */
    public PipelineBranchesitempullRequestlinks getLinks() {
        return links;
    }

    public void setLinks(PipelineBranchesitempullRequestlinks links) {
        this.links = links;
    }

    /**
     * Get author
     * @return author
     */
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * Get id
     * @return id
     */
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    /**
     * Get title
     * @return title
     */
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * Get url
     * @return url
     */
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
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
        sb.append("class PipelineBranchesitempullRequest {\n");
        
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    author: ").append(toIndentedString(author)).append("\n");
        sb.append("    id: ").append(toIndentedString(id)).append("\n");
        sb.append("    title: ").append(toIndentedString(title)).append("\n");
        sb.append("    url: ").append(toIndentedString(url)).append("\n");
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

