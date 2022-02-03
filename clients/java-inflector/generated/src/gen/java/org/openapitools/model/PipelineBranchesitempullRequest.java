package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.PipelineBranchesitempullRequestlinks;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2022-02-02T10:44:21.668219Z[Etc/UTC]")
public class PipelineBranchesitempullRequest   {
  @JsonProperty("_links")
  private PipelineBranchesitempullRequestlinks links;

  @JsonProperty("author")
  private String author;

  @JsonProperty("id")
  private String id;

  @JsonProperty("title")
  private String title;

  @JsonProperty("url")
  private String url;

  @JsonProperty("_class")
  private String propertyClass;

  /**
   **/
  public PipelineBranchesitempullRequest links(PipelineBranchesitempullRequestlinks links) {
    this.links = links;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  public PipelineBranchesitempullRequestlinks getLinks() {
    return links;
  }
  public void setLinks(PipelineBranchesitempullRequestlinks links) {
    this.links = links;
  }

  /**
   **/
  public PipelineBranchesitempullRequest author(String author) {
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
  public PipelineBranchesitempullRequest id(String id) {
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
  public PipelineBranchesitempullRequest title(String title) {
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
  public PipelineBranchesitempullRequest url(String url) {
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
  public PipelineBranchesitempullRequest propertyClass(String propertyClass) {
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
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineBranchesitempullRequest pipelineBranchesitempullRequest = (PipelineBranchesitempullRequest) o;
    return Objects.equals(links, pipelineBranchesitempullRequest.links) &&
        Objects.equals(author, pipelineBranchesitempullRequest.author) &&
        Objects.equals(id, pipelineBranchesitempullRequest.id) &&
        Objects.equals(title, pipelineBranchesitempullRequest.title) &&
        Objects.equals(url, pipelineBranchesitempullRequest.url) &&
        Objects.equals(propertyClass, pipelineBranchesitempullRequest.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(links, author, id, title, url, propertyClass);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

