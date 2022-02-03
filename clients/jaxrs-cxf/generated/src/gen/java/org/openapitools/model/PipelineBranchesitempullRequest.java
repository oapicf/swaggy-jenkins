package org.openapitools.model;

import org.openapitools.model.PipelineBranchesitempullRequestlinks;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonProperty;

public class PipelineBranchesitempullRequest  {
  
  @ApiModelProperty(value = "")
  @Valid
  private PipelineBranchesitempullRequestlinks links;

  @ApiModelProperty(value = "")
  private String author;

  @ApiModelProperty(value = "")
  private String id;

  @ApiModelProperty(value = "")
  private String title;

  @ApiModelProperty(value = "")
  private String url;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public PipelineBranchesitempullRequestlinks getLinks() {
    return links;
  }

  public void setLinks(PipelineBranchesitempullRequestlinks links) {
    this.links = links;
  }

  public PipelineBranchesitempullRequest links(PipelineBranchesitempullRequestlinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get author
   * @return author
  **/
  @JsonProperty("author")
  public String getAuthor() {
    return author;
  }

  public void setAuthor(String author) {
    this.author = author;
  }

  public PipelineBranchesitempullRequest author(String author) {
    this.author = author;
    return this;
  }

 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public PipelineBranchesitempullRequest id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get title
   * @return title
  **/
  @JsonProperty("title")
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public PipelineBranchesitempullRequest title(String title) {
    this.title = title;
    return this;
  }

 /**
   * Get url
   * @return url
  **/
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public PipelineBranchesitempullRequest url(String url) {
    this.url = url;
    return this;
  }

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public PipelineBranchesitempullRequest propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }


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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

