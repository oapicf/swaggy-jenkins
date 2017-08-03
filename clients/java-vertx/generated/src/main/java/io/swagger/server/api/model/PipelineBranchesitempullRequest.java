package io.swagger.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.server.api.model.PipelineBranchesitempullRequestlinks;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class PipelineBranchesitempullRequest   {
  
  private PipelineBranchesitempullRequestlinks links = null;
  private String author = null;
  private String id = null;
  private String title = null;
  private String url = null;
  private String propertyClass = null;

  public PipelineBranchesitempullRequest () {

  }

  public PipelineBranchesitempullRequest (PipelineBranchesitempullRequestlinks links, String author, String id, String title, String url, String propertyClass) {
    this.links = links;
    this.author = author;
    this.id = id;
    this.title = title;
    this.url = url;
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("_links")
  public PipelineBranchesitempullRequestlinks getLinks() {
    return links;
  }
  public void setLinks(PipelineBranchesitempullRequestlinks links) {
    this.links = links;
  }

    
  @JsonProperty("author")
  public String getAuthor() {
    return author;
  }
  public void setAuthor(String author) {
    this.author = author;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("title")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

    
  @JsonProperty("url")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

    
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
