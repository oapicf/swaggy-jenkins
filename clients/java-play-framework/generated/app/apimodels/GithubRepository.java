package apimodels;

import apimodels.GithubRepositorylinks;
import apimodels.GithubRepositorypermissions;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
import javax.validation.Valid;
/**
 * GithubRepository
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2025-05-10T02:40:11.853719842Z[Etc/UTC]", comments = "Generator version: 7.12.0")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class GithubRepository   {
  @JsonProperty("_class")
  
  private String propertyClass;

  @JsonProperty("_links")
  @Valid

  private GithubRepositorylinks links;

  @JsonProperty("defaultBranch")
  
  private String defaultBranch;

  @JsonProperty("description")
  
  private String description;

  @JsonProperty("name")
  
  private String name;

  @JsonProperty("permissions")
  @Valid

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
  **/
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
  **/
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
  **/
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
  **/
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
  **/
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
  **/
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
  **/
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
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

