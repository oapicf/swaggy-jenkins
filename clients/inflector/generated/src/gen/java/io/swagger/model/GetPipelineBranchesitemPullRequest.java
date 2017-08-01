package io.swagger.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.GetPipelineBranchesitemPullRequestLinks;





@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaInflectorServerCodegen", date = "2017-07-25T10:44:14.875+10:00")
public class GetPipelineBranchesitemPullRequest   {
  @JsonProperty("_links")
  private GetPipelineBranchesitemPullRequestLinks links = null;

  @JsonProperty("author")
  private String author = null;

  @JsonProperty("id")
  private String id = null;

  @JsonProperty("title")
  private String title = null;

  @JsonProperty("url")
  private String url = null;

  @JsonProperty("_class")
  private String propertyClass = null;

  /**
   **/
  public GetPipelineBranchesitemPullRequest links(GetPipelineBranchesitemPullRequestLinks links) {
    this.links = links;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  public GetPipelineBranchesitemPullRequestLinks getLinks() {
    return links;
  }
  public void setLinks(GetPipelineBranchesitemPullRequestLinks links) {
    this.links = links;
  }

  /**
   **/
  public GetPipelineBranchesitemPullRequest author(String author) {
    this.author = author;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("author")
  public String getAuthor() {
    return author;
  }
  public void setAuthor(String author) {
    this.author = author;
  }

  /**
   **/
  public GetPipelineBranchesitemPullRequest id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  public GetPipelineBranchesitemPullRequest title(String title) {
    this.title = title;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("title")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  public GetPipelineBranchesitemPullRequest url(String url) {
    this.url = url;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

  /**
   **/
  public GetPipelineBranchesitemPullRequest propertyClass(String propertyClass) {
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


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetPipelineBranchesitemPullRequest getPipelineBranchesitemPullRequest = (GetPipelineBranchesitemPullRequest) o;
    return Objects.equals(links, getPipelineBranchesitemPullRequest.links) &&
        Objects.equals(author, getPipelineBranchesitemPullRequest.author) &&
        Objects.equals(id, getPipelineBranchesitemPullRequest.id) &&
        Objects.equals(title, getPipelineBranchesitemPullRequest.title) &&
        Objects.equals(url, getPipelineBranchesitemPullRequest.url) &&
        Objects.equals(propertyClass, getPipelineBranchesitemPullRequest.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(links, author, id, title, url, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetPipelineBranchesitemPullRequest {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

