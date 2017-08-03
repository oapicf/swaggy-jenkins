package io.swagger.model;

import io.swagger.model.GithubRepositorieslinks;
import io.swagger.model.GithubRepository;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class GithubRepositories  {
  
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private GithubRepositorieslinks links = null;
  @ApiModelProperty(value = "")
  private List<GithubRepository> items = new ArrayList<GithubRepository>();
  @ApiModelProperty(value = "")
  private Integer lastPage = null;
  @ApiModelProperty(value = "")
  private Integer nextPage = null;
  @ApiModelProperty(value = "")
  private Integer pageSize = null;

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public GithubRepositories propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  public GithubRepositorieslinks getLinks() {
    return links;
  }

  public void setLinks(GithubRepositorieslinks links) {
    this.links = links;
  }

  public GithubRepositories links(GithubRepositorieslinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get items
   * @return items
  **/
  public List<GithubRepository> getItems() {
    return items;
  }

  public void setItems(List<GithubRepository> items) {
    this.items = items;
  }

  public GithubRepositories items(List<GithubRepository> items) {
    this.items = items;
    return this;
  }

  public GithubRepositories addItemsItem(GithubRepository itemsItem) {
    this.items.add(itemsItem);
    return this;
  }

 /**
   * Get lastPage
   * @return lastPage
  **/
  public Integer getLastPage() {
    return lastPage;
  }

  public void setLastPage(Integer lastPage) {
    this.lastPage = lastPage;
  }

  public GithubRepositories lastPage(Integer lastPage) {
    this.lastPage = lastPage;
    return this;
  }

 /**
   * Get nextPage
   * @return nextPage
  **/
  public Integer getNextPage() {
    return nextPage;
  }

  public void setNextPage(Integer nextPage) {
    this.nextPage = nextPage;
  }

  public GithubRepositories nextPage(Integer nextPage) {
    this.nextPage = nextPage;
    return this;
  }

 /**
   * Get pageSize
   * @return pageSize
  **/
  public Integer getPageSize() {
    return pageSize;
  }

  public void setPageSize(Integer pageSize) {
    this.pageSize = pageSize;
  }

  public GithubRepositories pageSize(Integer pageSize) {
    this.pageSize = pageSize;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

