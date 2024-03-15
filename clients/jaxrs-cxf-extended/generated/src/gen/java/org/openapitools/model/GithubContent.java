package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GithubContent  {
  
  @ApiModelProperty(value = "")
  private String name;

  @ApiModelProperty(value = "")
  private String sha;

  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private String repo;

  @ApiModelProperty(value = "")
  private Integer size;

  @ApiModelProperty(value = "")
  private String owner;

  @ApiModelProperty(value = "")
  private String path;

  @ApiModelProperty(value = "")
  private String base64Data;
 /**
  * Get name
  * @return name
  */
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  /**
   * Sets the <code>name</code> property.
   */
 public void setName(String name) {
    this.name = name;
  }

  /**
   * Sets the <code>name</code> property.
   */
  public GithubContent name(String name) {
    this.name = name;
    return this;
  }

 /**
  * Get sha
  * @return sha
  */
  @JsonProperty("sha")
  public String getSha() {
    return sha;
  }

  /**
   * Sets the <code>sha</code> property.
   */
 public void setSha(String sha) {
    this.sha = sha;
  }

  /**
   * Sets the <code>sha</code> property.
   */
  public GithubContent sha(String sha) {
    this.sha = sha;
    return this;
  }

 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public GithubContent propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get repo
  * @return repo
  */
  @JsonProperty("repo")
  public String getRepo() {
    return repo;
  }

  /**
   * Sets the <code>repo</code> property.
   */
 public void setRepo(String repo) {
    this.repo = repo;
  }

  /**
   * Sets the <code>repo</code> property.
   */
  public GithubContent repo(String repo) {
    this.repo = repo;
    return this;
  }

 /**
  * Get size
  * @return size
  */
  @JsonProperty("size")
  public Integer getSize() {
    return size;
  }

  /**
   * Sets the <code>size</code> property.
   */
 public void setSize(Integer size) {
    this.size = size;
  }

  /**
   * Sets the <code>size</code> property.
   */
  public GithubContent size(Integer size) {
    this.size = size;
    return this;
  }

 /**
  * Get owner
  * @return owner
  */
  @JsonProperty("owner")
  public String getOwner() {
    return owner;
  }

  /**
   * Sets the <code>owner</code> property.
   */
 public void setOwner(String owner) {
    this.owner = owner;
  }

  /**
   * Sets the <code>owner</code> property.
   */
  public GithubContent owner(String owner) {
    this.owner = owner;
    return this;
  }

 /**
  * Get path
  * @return path
  */
  @JsonProperty("path")
  public String getPath() {
    return path;
  }

  /**
   * Sets the <code>path</code> property.
   */
 public void setPath(String path) {
    this.path = path;
  }

  /**
   * Sets the <code>path</code> property.
   */
  public GithubContent path(String path) {
    this.path = path;
    return this;
  }

 /**
  * Get base64Data
  * @return base64Data
  */
  @JsonProperty("base64Data")
  public String getBase64Data() {
    return base64Data;
  }

  /**
   * Sets the <code>base64Data</code> property.
   */
 public void setBase64Data(String base64Data) {
    this.base64Data = base64Data;
  }

  /**
   * Sets the <code>base64Data</code> property.
   */
  public GithubContent base64Data(String base64Data) {
    this.base64Data = base64Data;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

