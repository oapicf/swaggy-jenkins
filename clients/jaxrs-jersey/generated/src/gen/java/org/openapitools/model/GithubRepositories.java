/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.GithubRepositorieslinks;
import org.openapitools.model.GithubRepository;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * GithubRepositories
 */
@JsonPropertyOrder({
  GithubRepositories.JSON_PROPERTY_PROPERTY_CLASS,
  GithubRepositories.JSON_PROPERTY_LINKS,
  GithubRepositories.JSON_PROPERTY_ITEMS,
  GithubRepositories.JSON_PROPERTY_LAST_PAGE,
  GithubRepositories.JSON_PROPERTY_NEXT_PAGE,
  GithubRepositories.JSON_PROPERTY_PAGE_SIZE
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2024-03-15T14:14:47.059425590Z[Etc/UTC]", comments = "Generator version: 7.4.0")
public class GithubRepositories   {
  public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
  @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
  private String propertyClass;

  public static final String JSON_PROPERTY_LINKS = "_links";
  @JsonProperty(JSON_PROPERTY_LINKS)
  private GithubRepositorieslinks links;

  public static final String JSON_PROPERTY_ITEMS = "items";
  @JsonProperty(JSON_PROPERTY_ITEMS)
  private List<@Valid GithubRepository> items;

  public static final String JSON_PROPERTY_LAST_PAGE = "lastPage";
  @JsonProperty(JSON_PROPERTY_LAST_PAGE)
  private Integer lastPage;

  public static final String JSON_PROPERTY_NEXT_PAGE = "nextPage";
  @JsonProperty(JSON_PROPERTY_NEXT_PAGE)
  private Integer nextPage;

  public static final String JSON_PROPERTY_PAGE_SIZE = "pageSize";
  @JsonProperty(JSON_PROPERTY_PAGE_SIZE)
  private Integer pageSize;

  public GithubRepositories propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   **/
  @JsonProperty(value = "_class")
  @ApiModelProperty(value = "")
  
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public GithubRepositories links(GithubRepositorieslinks links) {
    this.links = links;
    return this;
  }

  /**
   * Get links
   * @return links
   **/
  @JsonProperty(value = "_links")
  @ApiModelProperty(value = "")
  @Valid 
  public GithubRepositorieslinks getLinks() {
    return links;
  }

  public void setLinks(GithubRepositorieslinks links) {
    this.links = links;
  }

  public GithubRepositories items(List<@Valid GithubRepository> items) {
    this.items = items;
    return this;
  }

  public GithubRepositories addItemsItem(GithubRepository itemsItem) {
    if (this.items == null) {
      this.items = new ArrayList<>();
    }
    this.items.add(itemsItem);
    return this;
  }

  /**
   * Get items
   * @return items
   **/
  @JsonProperty(value = "items")
  @ApiModelProperty(value = "")
  @Valid 
  public List<@Valid GithubRepository> getItems() {
    return items;
  }

  public void setItems(List<@Valid GithubRepository> items) {
    this.items = items;
  }

  public GithubRepositories lastPage(Integer lastPage) {
    this.lastPage = lastPage;
    return this;
  }

  /**
   * Get lastPage
   * @return lastPage
   **/
  @JsonProperty(value = "lastPage")
  @ApiModelProperty(value = "")
  
  public Integer getLastPage() {
    return lastPage;
  }

  public void setLastPage(Integer lastPage) {
    this.lastPage = lastPage;
  }

  public GithubRepositories nextPage(Integer nextPage) {
    this.nextPage = nextPage;
    return this;
  }

  /**
   * Get nextPage
   * @return nextPage
   **/
  @JsonProperty(value = "nextPage")
  @ApiModelProperty(value = "")
  
  public Integer getNextPage() {
    return nextPage;
  }

  public void setNextPage(Integer nextPage) {
    this.nextPage = nextPage;
  }

  public GithubRepositories pageSize(Integer pageSize) {
    this.pageSize = pageSize;
    return this;
  }

  /**
   * Get pageSize
   * @return pageSize
   **/
  @JsonProperty(value = "pageSize")
  @ApiModelProperty(value = "")
  
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

