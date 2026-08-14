package org.openapitools.model;

import org.openapitools.model.GithubRepositorylinks;
import org.openapitools.model.GithubRepositorypermissions;
import java.util.Objects;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.annotation.Generated;
import java.time.*;
import java.math.*;
@Generated(value = "org.openapitools.codegen.languages.JavaDubboServerCodegen", comments = "Generator version: 7.24.0")

public class GithubRepository implements Serializable {
  private static final long serialVersionUID = 1L;

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
   * @return links
   */
  public GithubRepositorylinks getLinks() {
    return links;
  }

  public void setLinks(GithubRepositorylinks links) {
    this.links = links;
  }

  /**
   * 
   * @return defaultBranch
   */
  public String getDefaultBranch() {
    return defaultBranch;
  }

  public void setDefaultBranch(String defaultBranch) {
    this.defaultBranch = defaultBranch;
  }

  /**
   * 
   * @return description
   */
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

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
   * @return permissions
   */
  public GithubRepositorypermissions getPermissions() {
    return permissions;
  }

  public void setPermissions(GithubRepositorypermissions permissions) {
    this.permissions = permissions;
  }

  /**
   * 
   * @return _private
   */
  public Boolean getPrivate() {
    return _private;
  }

  public void setPrivate(Boolean _private) {
    this._private = _private;
  }

  /**
   * 
   * @return fullName
   */
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
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}
