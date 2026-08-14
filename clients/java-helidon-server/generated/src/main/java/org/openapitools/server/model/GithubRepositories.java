package org.openapitools.server.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.server.model.GithubRepositorieslinks;
import org.openapitools.server.model.GithubRepository;
import jakarta.validation.constraints.*;
import jakarta.validation.Valid;



public class GithubRepositories   {

    private String propertyClass;
    private GithubRepositorieslinks links;
    private List<@Valid GithubRepository> items = new ArrayList<>();
    private Integer lastPage;
    private Integer nextPage;
    private Integer pageSize;

    /**
     * Default constructor.
     */
    public GithubRepositories() {
    // JSON-B / Jackson
    }

    /**
     * Create GithubRepositories.
     *
     * @param propertyClass propertyClass
     * @param links links
     * @param items items
     * @param lastPage lastPage
     * @param nextPage nextPage
     * @param pageSize pageSize
     */
    public GithubRepositories(
        String propertyClass, 
        GithubRepositorieslinks links, 
        List<@Valid GithubRepository> items, 
        Integer lastPage, 
        Integer nextPage, 
        Integer pageSize
    ) {
        this.propertyClass = propertyClass;
        this.links = links;
        this.items = items;
        this.lastPage = lastPage;
        this.nextPage = nextPage;
        this.pageSize = pageSize;
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
    public GithubRepositorieslinks getLinks() {
        return links;
    }

    public void setLinks(GithubRepositorieslinks links) {
        this.links = links;
    }

    /**
     * Get items
     * @return items
     */
    public List<@Valid GithubRepository> getItems() {
        return items;
    }

    public void setItems(List<@Valid GithubRepository> items) {
        this.items = items;
    }

    /**
     * Get lastPage
     * @return lastPage
     */
    public Integer getLastPage() {
        return lastPage;
    }

    public void setLastPage(Integer lastPage) {
        this.lastPage = lastPage;
    }

    /**
     * Get nextPage
     * @return nextPage
     */
    public Integer getNextPage() {
        return nextPage;
    }

    public void setNextPage(Integer nextPage) {
        this.nextPage = nextPage;
    }

    /**
     * Get pageSize
     * @return pageSize
     */
    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    /**
      * Create a string representation of this pojo.
    **/
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class GithubRepositories {\n");
        
        sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
        sb.append("    links: ").append(toIndentedString(links)).append("\n");
        sb.append("    items: ").append(toIndentedString(items)).append("\n");
        sb.append("    lastPage: ").append(toIndentedString(lastPage)).append("\n");
        sb.append("    nextPage: ").append(toIndentedString(nextPage)).append("\n");
        sb.append("    pageSize: ").append(toIndentedString(pageSize)).append("\n");
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

