package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.GithubRepositorylinks;
import org.openapitools.model.GithubRepositorypermissions;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * GithubRepository
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2022-02-10T09:53:34.462656Z[Etc/UTC]")
public class GithubRepository   {

  @JsonProperty("_class")
  private String propertyClass;

  @JsonProperty("_links")
  private GithubRepositorylinks links;

  @JsonProperty("defaultBranch")
  private String defaultBranch;

  @JsonProperty("description")
  private String description;

  @JsonProperty("name")
  private String name;

  @JsonProperty("permissions")
  private GithubRepositorypermissions permissions;

  @JsonProperty("private")
  private Boolean _private;

  @JsonProperty("fullName")
  private String fullName;

  public GithubRepository propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
  */
  
  @Schema(name = "_class", required = false)
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public GithubRepository links(GithubRepositorylinks links) {
    this.links = links;
    return this;
  }

  /**
   * Get links
   * @return links
  */
  @Valid 
  @Schema(name = "_links", required = false)
  public GithubRepositorylinks getLinks() {
    return links;
  }

  public void setLinks(GithubRepositorylinks links) {
    this.links = links;
  }

  public GithubRepository defaultBranch(String defaultBranch) {
    this.defaultBranch = defaultBranch;
    return this;
  }

  /**
   * Get defaultBranch
   * @return defaultBranch
  */
  
  @Schema(name = "defaultBranch", required = false)
  public String getDefaultBranch() {
    return defaultBranch;
  }

  public void setDefaultBranch(String defaultBranch) {
    this.defaultBranch = defaultBranch;
  }

  public GithubRepository description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
  */
  
  @Schema(name = "description", required = false)
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public GithubRepository name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
  */
  
  @Schema(name = "name", required = false)
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GithubRepository permissions(GithubRepositorypermissions permissions) {
    this.permissions = permissions;
    return this;
  }

  /**
   * Get permissions
   * @return permissions
  */
  @Valid 
  @Schema(name = "permissions", required = false)
  public GithubRepositorypermissions getPermissions() {
    return permissions;
  }

  public void setPermissions(GithubRepositorypermissions permissions) {
    this.permissions = permissions;
  }

  public GithubRepository _private(Boolean _private) {
    this._private = _private;
    return this;
  }

  /**
   * Get _private
   * @return _private
  */
  
  @Schema(name = "private", required = false)
  public Boolean getPrivate() {
    return _private;
  }

  public void setPrivate(Boolean _private) {
    this._private = _private;
  }

  public GithubRepository fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

  /**
   * Get fullName
   * @return fullName
  */
  
  @Schema(name = "fullName", required = false)
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

