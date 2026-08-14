package org.openapitools.model;

import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class GithubContent implements Serializable {
  private static final long serialVersionUID = 1L;

  @JsonProperty("name")
  private String name;

  @JsonProperty("sha")
  private String sha;

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("repo")
  private String repo;

  @JsonProperty("size")
  private Integer size;

  @JsonProperty("owner")
  private String owner;

  @JsonProperty("path")
  private String path;

  @JsonProperty("base64Data")
  private String base64Data;

  /**
   * 
   * @return name
   */
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  /**
   * 
   * @return sha
   */
  public String getSha() {
    return sha;
  }

  public void setSha(String sha) {
    this.sha = sha;
  }

  /**
   * 
   * @return propertyClass
   */
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * 
   * @return repo
   */
  public String getRepo() {
    return repo;
  }

  public void setRepo(String repo) {
    this.repo = repo;
  }

  /**
   * 
   * @return size
   */
  public Integer getSize() {
    return size;
  }

  public void setSize(Integer size) {
    this.size = size;
  }

  /**
   * 
   * @return owner
   */
  public String getOwner() {
    return owner;
  }

  public void setOwner(String owner) {
    this.owner = owner;
  }

  /**
   * 
   * @return path
   */
  public String getPath() {
    return path;
  }

  public void setPath(String path) {
    this.path = path;
  }

  /**
   * 
   * @return base64Data
   */
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
    return Objects.equals(this.name, githubContent.name) &&
        Objects.equals(this.sha, githubContent.sha) &&
        Objects.equals(this.propertyClass, githubContent.propertyClass) &&
        Objects.equals(this.repo, githubContent.repo) &&
        Objects.equals(this.size, githubContent.size) &&
        Objects.equals(this.owner, githubContent.owner) &&
        Objects.equals(this.path, githubContent.path) &&
        Objects.equals(this.base64Data, githubContent.base64Data);
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
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
