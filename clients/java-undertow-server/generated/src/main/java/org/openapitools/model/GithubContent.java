package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2019-04-10T13:18:32.656Z[GMT]")
public class GithubContent   {
  
  private String name = null;
  private String sha = null;
  private String propertyClass = null;
  private String repo = null;
  private Integer size = null;
  private String owner = null;
  private String path = null;
  private String base64Data = null;

  /**
   **/
  public GithubContent name(String name) {
    this.name = name;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  public GithubContent sha(String sha) {
    this.sha = sha;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("sha")
  public String getSha() {
    return sha;
  }
  public void setSha(String sha) {
    this.sha = sha;
  }

  /**
   **/
  public GithubContent propertyClass(String propertyClass) {
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
  public GithubContent repo(String repo) {
    this.repo = repo;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("repo")
  public String getRepo() {
    return repo;
  }
  public void setRepo(String repo) {
    this.repo = repo;
  }

  /**
   **/
  public GithubContent size(Integer size) {
    this.size = size;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("size")
  public Integer getSize() {
    return size;
  }
  public void setSize(Integer size) {
    this.size = size;
  }

  /**
   **/
  public GithubContent owner(String owner) {
    this.owner = owner;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("owner")
  public String getOwner() {
    return owner;
  }
  public void setOwner(String owner) {
    this.owner = owner;
  }

  /**
   **/
  public GithubContent path(String path) {
    this.path = path;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("path")
  public String getPath() {
    return path;
  }
  public void setPath(String path) {
    this.path = path;
  }

  /**
   **/
  public GithubContent base64Data(String base64Data) {
    this.base64Data = base64Data;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("base64Data")
  public String getBase64Data() {
    return base64Data;
  }
  public void setBase64Data(String base64Data) {
    this.base64Data = base64Data;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

