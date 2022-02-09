/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.2-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import org.openapitools.client.model.GithubRepositorylinks;
import org.openapitools.client.model.GithubRepositorypermissions;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class GithubRepository {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("_links")
  private GithubRepositorylinks links = null;
  @SerializedName("defaultBranch")
  private String defaultBranch = null;
  @SerializedName("description")
  private String description = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("permissions")
  private GithubRepositorypermissions permissions = null;
  @SerializedName("private")
  private Boolean _private = null;
  @SerializedName("fullName")
  private String fullName = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getClass() {
    return _class;
  }
  public void setClass(String _class) {
    this._class = _class;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public GithubRepositorylinks getLinks() {
    return links;
  }
  public void setLinks(GithubRepositorylinks links) {
    this.links = links;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDefaultBranch() {
    return defaultBranch;
  }
  public void setDefaultBranch(String defaultBranch) {
    this.defaultBranch = defaultBranch;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public GithubRepositorypermissions getPermissions() {
    return permissions;
  }
  public void setPermissions(GithubRepositorypermissions permissions) {
    this.permissions = permissions;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getPrivate() {
    return _private;
  }
  public void setPrivate(Boolean _private) {
    this._private = _private;
  }

  /**
   **/
  @ApiModelProperty(value = "")
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
    return (this._class == null ? githubRepository._class == null : this._class.equals(githubRepository._class)) &&
        (this.links == null ? githubRepository.links == null : this.links.equals(githubRepository.links)) &&
        (this.defaultBranch == null ? githubRepository.defaultBranch == null : this.defaultBranch.equals(githubRepository.defaultBranch)) &&
        (this.description == null ? githubRepository.description == null : this.description.equals(githubRepository.description)) &&
        (this.name == null ? githubRepository.name == null : this.name.equals(githubRepository.name)) &&
        (this.permissions == null ? githubRepository.permissions == null : this.permissions.equals(githubRepository.permissions)) &&
        (this._private == null ? githubRepository._private == null : this._private.equals(githubRepository._private)) &&
        (this.fullName == null ? githubRepository.fullName == null : this.fullName.equals(githubRepository.fullName));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.links == null ? 0: this.links.hashCode());
    result = 31 * result + (this.defaultBranch == null ? 0: this.defaultBranch.hashCode());
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.permissions == null ? 0: this.permissions.hashCode());
    result = 31 * result + (this._private == null ? 0: this._private.hashCode());
    result = 31 * result + (this.fullName == null ? 0: this.fullName.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRepository {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  links: ").append(links).append("\n");
    sb.append("  defaultBranch: ").append(defaultBranch).append("\n");
    sb.append("  description: ").append(description).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  permissions: ").append(permissions).append("\n");
    sb.append("  _private: ").append(_private).append("\n");
    sb.append("  fullName: ").append(fullName).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
