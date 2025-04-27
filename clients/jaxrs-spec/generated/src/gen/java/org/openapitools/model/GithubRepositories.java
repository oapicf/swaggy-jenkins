package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.GithubRepositorieslinks;
import org.openapitools.model.GithubRepository;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("GithubRepositories")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2025-04-27T08:09:45.633008592Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class GithubRepositories   {
  private String propertyClass;
  private GithubRepositorieslinks links;
  private @Valid List<@Valid GithubRepository> items = new ArrayList<>();
  private Integer lastPage;
  private Integer nextPage;
  private Integer pageSize;

  public GithubRepositories() {
  }

  /**
   **/
  public GithubRepositories propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public GithubRepositories links(GithubRepositorieslinks links) {
    this.links = links;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  @Valid public GithubRepositorieslinks getLinks() {
    return links;
  }

  @JsonProperty("_links")
  public void setLinks(GithubRepositorieslinks links) {
    this.links = links;
  }

  /**
   **/
  public GithubRepositories items(List<@Valid GithubRepository> items) {
    this.items = items;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("items")
  @Valid public List<@Valid GithubRepository> getItems() {
    return items;
  }

  @JsonProperty("items")
  public void setItems(List<@Valid GithubRepository> items) {
    this.items = items;
  }

  public GithubRepositories addItemsItem(GithubRepository itemsItem) {
    if (this.items == null) {
      this.items = new ArrayList<>();
    }

    this.items.add(itemsItem);
    return this;
  }

  public GithubRepositories removeItemsItem(GithubRepository itemsItem) {
    if (itemsItem != null && this.items != null) {
      this.items.remove(itemsItem);
    }

    return this;
  }
  /**
   **/
  public GithubRepositories lastPage(Integer lastPage) {
    this.lastPage = lastPage;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("lastPage")
  public Integer getLastPage() {
    return lastPage;
  }

  @JsonProperty("lastPage")
  public void setLastPage(Integer lastPage) {
    this.lastPage = lastPage;
  }

  /**
   **/
  public GithubRepositories nextPage(Integer nextPage) {
    this.nextPage = nextPage;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("nextPage")
  public Integer getNextPage() {
    return nextPage;
  }

  @JsonProperty("nextPage")
  public void setNextPage(Integer nextPage) {
    this.nextPage = nextPage;
  }

  /**
   **/
  public GithubRepositories pageSize(Integer pageSize) {
    this.pageSize = pageSize;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("pageSize")
  public Integer getPageSize() {
    return pageSize;
  }

  @JsonProperty("pageSize")
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

