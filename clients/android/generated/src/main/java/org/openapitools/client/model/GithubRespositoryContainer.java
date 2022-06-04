/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import org.openapitools.client.model.GithubRepositories;
import org.openapitools.client.model.GithubRespositoryContainerlinks;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class GithubRespositoryContainer {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("_links")
  private GithubRespositoryContainerlinks links = null;
  @SerializedName("repositories")
  private GithubRepositories repositories = null;

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
  public GithubRespositoryContainerlinks getLinks() {
    return links;
  }
  public void setLinks(GithubRespositoryContainerlinks links) {
    this.links = links;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public GithubRepositories getRepositories() {
    return repositories;
  }
  public void setRepositories(GithubRepositories repositories) {
    this.repositories = repositories;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubRespositoryContainer githubRespositoryContainer = (GithubRespositoryContainer) o;
    return (this._class == null ? githubRespositoryContainer._class == null : this._class.equals(githubRespositoryContainer._class)) &&
        (this.links == null ? githubRespositoryContainer.links == null : this.links.equals(githubRespositoryContainer.links)) &&
        (this.repositories == null ? githubRespositoryContainer.repositories == null : this.repositories.equals(githubRespositoryContainer.repositories));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.links == null ? 0: this.links.hashCode());
    result = 31 * result + (this.repositories == null ? 0: this.repositories.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRespositoryContainer {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  links: ").append(links).append("\n");
    sb.append("  repositories: ").append(repositories).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
