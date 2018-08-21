package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class GithubContent   {
  
  private String name = null;
  private String sha = null;
  private String propertyClass = null;
  private String repo = null;
  private Integer size = null;
  private String owner = null;
  private String path = null;
  private String base64Data = null;

  public GithubContent () {

  }

  public GithubContent (String name, String sha, String propertyClass, String repo, Integer size, String owner, String path, String base64Data) {
    this.name = name;
    this.sha = sha;
    this.propertyClass = propertyClass;
    this.repo = repo;
    this.size = size;
    this.owner = owner;
    this.path = path;
    this.base64Data = base64Data;
  }

    
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

    
  @JsonProperty("sha")
  public String getSha() {
    return sha;
  }
  public void setSha(String sha) {
    this.sha = sha;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("repo")
  public String getRepo() {
    return repo;
  }
  public void setRepo(String repo) {
    this.repo = repo;
  }

    
  @JsonProperty("size")
  public Integer getSize() {
    return size;
  }
  public void setSize(Integer size) {
    this.size = size;
  }

    
  @JsonProperty("owner")
  public String getOwner() {
    return owner;
  }
  public void setOwner(String owner) {
    this.owner = owner;
  }

    
  @JsonProperty("path")
  public String getPath() {
    return path;
  }
  public void setPath(String path) {
    this.path = path;
  }

    
  @JsonProperty("base64Data")
  public String getBase64Data() {
    return base64Data;
  }
  public void setBase64Data(String base64Data) {
    this.base64Data = base64Data;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubContent githubContent = (GithubContent) o;
    return Objects.equals(name, githubContent.name) &&
        Objects.equals(sha, githubContent.sha) &&
        Objects.equals(propertyClass, githubContent.propertyClass) &&
        Objects.equals(repo, githubContent.repo) &&
        Objects.equals(size, githubContent.size) &&
        Objects.equals(owner, githubContent.owner) &&
        Objects.equals(path, githubContent.path) &&
        Objects.equals(base64Data, githubContent.base64Data);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, sha, propertyClass, repo, size, owner, path, base64Data);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubContent {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    sha: ").append(toIndentedString(sha)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    repo: ").append(toIndentedString(repo)).append("\n");
    sb.append("    size: ").append(toIndentedString(size)).append("\n");
    sb.append("    owner: ").append(toIndentedString(owner)).append("\n");
    sb.append("    path: ").append(toIndentedString(path)).append("\n");
    sb.append("    base64Data: ").append(toIndentedString(base64Data)).append("\n");
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
