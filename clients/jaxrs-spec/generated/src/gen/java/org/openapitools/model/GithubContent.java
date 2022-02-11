package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("GithubContent")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-11T12:43:55.722012Z[Etc/UTC]")public class GithubContent   {
  
  private @Valid String name;
  private @Valid String sha;
  private @Valid String propertyClass;
  private @Valid String repo;
  private @Valid Integer size;
  private @Valid String owner;
  private @Valid String path;
  private @Valid String base64Data;

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

  @JsonProperty("name")
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

  @JsonProperty("sha")
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

  @JsonProperty("_class")
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

  @JsonProperty("repo")
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

  @JsonProperty("size")
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

  @JsonProperty("owner")
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

  @JsonProperty("path")
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

  @JsonProperty("base64Data")
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
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

