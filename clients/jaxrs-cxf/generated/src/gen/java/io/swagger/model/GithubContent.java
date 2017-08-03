package io.swagger.model;

import javax.validation.constraints.*;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;

public class GithubContent  {
  
  @ApiModelProperty(value = "")
  private String name = null;
  @ApiModelProperty(value = "")
  private String sha = null;
  @ApiModelProperty(value = "")
  private String propertyClass = null;
  @ApiModelProperty(value = "")
  private String repo = null;
  @ApiModelProperty(value = "")
  private Integer size = null;
  @ApiModelProperty(value = "")
  private String owner = null;
  @ApiModelProperty(value = "")
  private String path = null;
  @ApiModelProperty(value = "")
  private String base64Data = null;

 /**
   * Get name
   * @return name
  **/
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GithubContent name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get sha
   * @return sha
  **/
  public String getSha() {
    return sha;
  }

  public void setSha(String sha) {
    this.sha = sha;
  }

  public GithubContent sha(String sha) {
    this.sha = sha;
    return this;
  }

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

  public GithubContent propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get repo
   * @return repo
  **/
  public String getRepo() {
    return repo;
  }

  public void setRepo(String repo) {
    this.repo = repo;
  }

  public GithubContent repo(String repo) {
    this.repo = repo;
    return this;
  }

 /**
   * Get size
   * @return size
  **/
  public Integer getSize() {
    return size;
  }

  public void setSize(Integer size) {
    this.size = size;
  }

  public GithubContent size(Integer size) {
    this.size = size;
    return this;
  }

 /**
   * Get owner
   * @return owner
  **/
  public String getOwner() {
    return owner;
  }

  public void setOwner(String owner) {
    this.owner = owner;
  }

  public GithubContent owner(String owner) {
    this.owner = owner;
    return this;
  }

 /**
   * Get path
   * @return path
  **/
  public String getPath() {
    return path;
  }

  public void setPath(String path) {
    this.path = path;
  }

  public GithubContent path(String path) {
    this.path = path;
    return this;
  }

 /**
   * Get base64Data
   * @return base64Data
  **/
  public String getBase64Data() {
    return base64Data;
  }

  public void setBase64Data(String base64Data) {
    this.base64Data = base64Data;
  }

  public GithubContent base64Data(String base64Data) {
    this.base64Data = base64Data;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

