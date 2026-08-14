package org.openapitools.model;

import org.openapitools.model.GithubRepositorieslinks;
import org.openapitools.model.GithubRepository;
import java.util.*;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class GithubRepositories implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("_links")
  private GithubRepositorieslinks links;

  @JsonProperty("items")
  private List<GithubRepository> items = new ArrayList<>();

  @JsonProperty("lastPage")
  private Integer lastPage;

  @JsonProperty("nextPage")
  private Integer nextPage;

  @JsonProperty("pageSize")
  private Integer pageSize;

  /**
   * 
   * @return propertyClass
   */
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * 
   * @return links
   */
  public GithubRepositorieslinks getLinks() {
    return links;
  }

  public void setLinks(GithubRepositorieslinks links) {
    this.links = links;
  }

  /**
   * 
   * @return items
   */
  public List<GithubRepository> getItems() {
    return items;
  }

  public void setItems(List<GithubRepository> items) {
    this.items = items;
  }

  /**
   * 
   * @return lastPage
   */
  public Integer getLastPage() {
    return lastPage;
  }

  public void setLastPage(Integer lastPage) {
    this.lastPage = lastPage;
  }

  /**
   * 
   * @return nextPage
   */
  public Integer getNextPage() {
    return nextPage;
  }

  public void setNextPage(Integer nextPage) {
    this.nextPage = nextPage;
  }

  /**
   * 
   * @return pageSize
   */
  public Integer getPageSize() {
    return pageSize;
  }

  public void setPageSize(Integer pageSize) {
    this.pageSize = pageSize;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubRepositories githubRepositories = (GithubRepositories) o;
    return Objects.equals(this.propertyClass, githubRepositories.propertyClass) &&
        Objects.equals(this.links, githubRepositories.links) &&
        Objects.equals(this.items, githubRepositories.items) &&
        Objects.equals(this.lastPage, githubRepositories.lastPage) &&
        Objects.equals(this.nextPage, githubRepositories.nextPage) &&
        Objects.equals(this.pageSize, githubRepositories.pageSize);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, items, lastPage, nextPage, pageSize);
  }

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
  private String toIndentedString(Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
