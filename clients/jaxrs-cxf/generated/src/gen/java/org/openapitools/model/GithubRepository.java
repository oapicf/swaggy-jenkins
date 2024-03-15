package org.openapitools.model;

import org.openapitools.model.GithubRepositorylinks;
import org.openapitools.model.GithubRepositorypermissions;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class GithubRepository  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  @Valid
  private GithubRepositorylinks links;

  @ApiModelProperty(value = "")
  private String defaultBranch;

  @ApiModelProperty(value = "")
  private String description;

  @ApiModelProperty(value = "")
  private String name;

  @ApiModelProperty(value = "")
  @Valid
  private GithubRepositorypermissions permissions;

  @ApiModelProperty(value = "")
  private Boolean _private;

  @ApiModelProperty(value = "")
  private String fullName;
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

  public GithubRepository propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
   * Get links
   * @return links
  **/
  @JsonProperty("_links")
  public GithubRepositorylinks getLinks() {
    return links;
  }

  public void setLinks(GithubRepositorylinks links) {
    this.links = links;
  }

  public GithubRepository links(GithubRepositorylinks links) {
    this.links = links;
    return this;
  }

 /**
   * Get defaultBranch
   * @return defaultBranch
  **/
  @JsonProperty("defaultBranch")
  public String getDefaultBranch() {
    return defaultBranch;
  }

  public void setDefaultBranch(String defaultBranch) {
    this.defaultBranch = defaultBranch;
  }

  public GithubRepository defaultBranch(String defaultBranch) {
    this.defaultBranch = defaultBranch;
    return this;
  }

 /**
   * Get description
   * @return description
  **/
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public GithubRepository description(String description) {
    this.description = description;
    return this;
  }

 /**
   * Get name
   * @return name
  **/
  @JsonProperty("name")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GithubRepository name(String name) {
    this.name = name;
    return this;
  }

 /**
   * Get permissions
   * @return permissions
  **/
  @JsonProperty("permissions")
  public GithubRepositorypermissions getPermissions() {
    return permissions;
  }

  public void setPermissions(GithubRepositorypermissions permissions) {
    this.permissions = permissions;
  }

  public GithubRepository permissions(GithubRepositorypermissions permissions) {
    this.permissions = permissions;
    return this;
  }

 /**
   * Get _private
   * @return _private
  **/
  @JsonProperty("private")
  public Boolean getPrivate() {
    return _private;
  }

  public void setPrivate(Boolean _private) {
    this._private = _private;
  }

  public GithubRepository _private(Boolean _private) {
    this._private = _private;
    return this;
  }

 /**
   * Get fullName
   * @return fullName
  **/
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public GithubRepository fullName(String fullName) {
    this.fullName = fullName;
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
    GithubRepository githubRepository = (GithubRepository) o;
    return Objects.equals(this.propertyClass, githubRepository.propertyClass) &&
        Objects.equals(this.links, githubRepository.links) &&
        Objects.equals(this.defaultBranch, githubRepository.defaultBranch) &&
        Objects.equals(this.description, githubRepository.description) &&
        Objects.equals(this.name, githubRepository.name) &&
        Objects.equals(this.permissions, githubRepository.permissions) &&
        Objects.equals(this._private, githubRepository._private) &&
        Objects.equals(this.fullName, githubRepository.fullName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, defaultBranch, description, name, permissions, _private, fullName);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRepository {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    defaultBranch: ").append(toIndentedString(defaultBranch)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    permissions: ").append(toIndentedString(permissions)).append("\n");
    sb.append("    _private: ").append(toIndentedString(_private)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
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

