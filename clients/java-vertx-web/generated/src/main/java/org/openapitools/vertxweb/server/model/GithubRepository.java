package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.vertxweb.server.model.GithubRepositorylinks;
import org.openapitools.vertxweb.server.model.GithubRepositorypermissions;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class GithubRepository   {
  
  private String propertyClass;
  private GithubRepositorylinks links;
  private String defaultBranch;
  private String description;
  private String name;
  private GithubRepositorypermissions permissions;
  private Boolean _private;
  private String fullName;

  public GithubRepository () {

  }

  public GithubRepository (String propertyClass, GithubRepositorylinks links, String defaultBranch, String description, String name, GithubRepositorypermissions permissions, Boolean _private, String fullName) {
    this.propertyClass = propertyClass;
    this.links = links;
    this.defaultBranch = defaultBranch;
    this.description = description;
    this.name = name;
    this.permissions = permissions;
    this._private = _private;
    this.fullName = fullName;
  }

    
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

    
  @JsonProperty("_links")
  public GithubRepositorylinks getLinks() {
    return links;
  }
  public void setLinks(GithubRepositorylinks links) {
    this.links = links;
  }

    
  @JsonProperty("defaultBranch")
  public String getDefaultBranch() {
    return defaultBranch;
  }
  public void setDefaultBranch(String defaultBranch) {
    this.defaultBranch = defaultBranch;
  }

    
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

    
  @JsonProperty("name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

    
  @JsonProperty("permissions")
  public GithubRepositorypermissions getPermissions() {
    return permissions;
  }
  public void setPermissions(GithubRepositorypermissions permissions) {
    this.permissions = permissions;
  }

    
  @JsonProperty("private")
  public Boolean getPrivate() {
    return _private;
  }
  public void setPrivate(Boolean _private) {
    this._private = _private;
  }

    
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
