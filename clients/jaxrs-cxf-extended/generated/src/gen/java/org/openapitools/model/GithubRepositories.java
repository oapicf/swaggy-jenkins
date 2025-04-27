package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.GithubRepositorieslinks;
import org.openapitools.model.GithubRepository;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GithubRepositories  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private GithubRepositorieslinks links;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid GithubRepository> items = new ArrayList<>();

  @ApiModelProperty(value = "")
  private Integer lastPage;

  @ApiModelProperty(value = "")
  private Integer nextPage;

  @ApiModelProperty(value = "")
  private Integer pageSize;
 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public GithubRepositories propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get links
  * @return links
  */
  @JsonProperty("_links")
  public GithubRepositorieslinks getLinks() {
    return links;
  }

  /**
   * Sets the <code>links</code> property.
   */
 public void setLinks(GithubRepositorieslinks links) {
    this.links = links;
  }

  /**
   * Sets the <code>links</code> property.
   */
  public GithubRepositories links(GithubRepositorieslinks links) {
    this.links = links;
    return this;
  }

 /**
  * Get items
  * @return items
  */
  @JsonProperty("items")
  public List<@Valid GithubRepository> getItems() {
    return items;
  }

  /**
   * Sets the <code>items</code> property.
   */
 public void setItems(List<@Valid GithubRepository> items) {
    this.items = items;
  }

  /**
   * Sets the <code>items</code> property.
   */
  public GithubRepositories items(List<@Valid GithubRepository> items) {
    this.items = items;
    return this;
  }

  /**
   * Adds a new item to the <code>items</code> list.
   */
  public GithubRepositories addItemsItem(GithubRepository itemsItem) {
    this.items.add(itemsItem);
    return this;
  }

 /**
  * Get lastPage
  * @return lastPage
  */
  @JsonProperty("lastPage")
  public Integer getLastPage() {
    return lastPage;
  }

  /**
   * Sets the <code>lastPage</code> property.
   */
 public void setLastPage(Integer lastPage) {
    this.lastPage = lastPage;
  }

  /**
   * Sets the <code>lastPage</code> property.
   */
  public GithubRepositories lastPage(Integer lastPage) {
    this.lastPage = lastPage;
    return this;
  }

 /**
  * Get nextPage
  * @return nextPage
  */
  @JsonProperty("nextPage")
  public Integer getNextPage() {
    return nextPage;
  }

  /**
   * Sets the <code>nextPage</code> property.
   */
 public void setNextPage(Integer nextPage) {
    this.nextPage = nextPage;
  }

  /**
   * Sets the <code>nextPage</code> property.
   */
  public GithubRepositories nextPage(Integer nextPage) {
    this.nextPage = nextPage;
    return this;
  }

 /**
  * Get pageSize
  * @return pageSize
  */
  @JsonProperty("pageSize")
  public Integer getPageSize() {
    return pageSize;
  }

  /**
   * Sets the <code>pageSize</code> property.
   */
 public void setPageSize(Integer pageSize) {
    this.pageSize = pageSize;
  }

  /**
   * Sets the <code>pageSize</code> property.
   */
  public GithubRepositories pageSize(Integer pageSize) {
    this.pageSize = pageSize;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

