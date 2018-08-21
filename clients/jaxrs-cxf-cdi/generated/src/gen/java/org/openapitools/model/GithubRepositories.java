package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.GithubRepositorieslinks;
import org.openapitools.model.GithubRepository;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class GithubRepositories   {
  
  private String propertyClass = null;

  private GithubRepositorieslinks links = null;

  private List<GithubRepository> items = null;

  private Integer lastPage = null;

  private Integer nextPage = null;

  private Integer pageSize = null;


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
  public GithubRepositorieslinks getLinks() {
    return links;
  }
  public void setLinks(GithubRepositorieslinks links) {
    this.links = links;
  }


  /**
   **/
  public GithubRepositories items(List<GithubRepository> items) {
    this.items = items;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("items")
  public List<GithubRepository> getItems() {
    return items;
  }
  public void setItems(List<GithubRepository> items) {
    this.items = items;
  }

  public GithubRepositories addItemsItem(GithubRepository itemsItem) {
    if (this.items == null) {
      this.items = new ArrayList<GithubRepository>();
    }
    this.items.add(itemsItem);
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
  public void setPageSize(Integer pageSize) {
    this.pageSize = pageSize;
  }



  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubRepositories githubRepositories = (GithubRepositories) o;
    return Objects.equals(propertyClass, githubRepositories.propertyClass) &&
        Objects.equals(links, githubRepositories.links) &&
        Objects.equals(items, githubRepositories.items) &&
        Objects.equals(lastPage, githubRepositories.lastPage) &&
        Objects.equals(nextPage, githubRepositories.nextPage) &&
        Objects.equals(pageSize, githubRepositories.pageSize);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

