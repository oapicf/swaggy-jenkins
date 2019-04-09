package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.GithubRepositorylinks;
import org.openapitools.model.GithubRepositorypermissions;
import javax.validation.constraints.*;
import io.swagger.annotations.*;


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2019-04-09T15:09:07.842Z[GMT]")
public class GithubRepository   {
  

  private String propertyClass = null;

  private GithubRepositorylinks links = null;

  private String defaultBranch = null;

  private String description = null;

  private String name = null;

  private GithubRepositorypermissions permissions = null;

  private Boolean _private = null;

  private String fullName = null;

  /**
   **/
  
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
  
  @ApiModelProperty(value = "")
  @JsonProperty("_links")
  public GithubRepositorylinks getLinks() {
    return links;
  }
  public void setLinks(GithubRepositorylinks links) {
    this.links = links;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("defaultBranch")
  public String getDefaultBranch() {
    return defaultBranch;
  }
  public void setDefaultBranch(String defaultBranch) {
    this.defaultBranch = defaultBranch;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  
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
  
  @ApiModelProperty(value = "")
  @JsonProperty("permissions")
  public GithubRepositorypermissions getPermissions() {
    return permissions;
  }
  public void setPermissions(GithubRepositorypermissions permissions) {
    this.permissions = permissions;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("private")
  public Boolean getPrivate() {
    return _private;
  }
  public void setPrivate(Boolean _private) {
    this._private = _private;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("fullName")
  public String getFullName() {
    return fullName;
  }
  public void setFullName(String fullName) {
    this.fullName = fullName;
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
    return Objects.equals(propertyClass, githubRepository.propertyClass) &&
        Objects.equals(links, githubRepository.links) &&
        Objects.equals(defaultBranch, githubRepository.defaultBranch) &&
        Objects.equals(description, githubRepository.description) &&
        Objects.equals(name, githubRepository.name) &&
        Objects.equals(permissions, githubRepository.permissions) &&
        Objects.equals(_private, githubRepository._private) &&
        Objects.equals(fullName, githubRepository.fullName);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

