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

import org.openapitools.client.model.PipelineBranchesitempullRequestlinks;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class PipelineBranchesitempullRequest {
  
  @SerializedName("_links")
  private PipelineBranchesitempullRequestlinks links = null;
  @SerializedName("author")
  private String author = null;
  @SerializedName("id")
  private String id = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("url")
  private String url = null;
  @SerializedName("_class")
  private String _class = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public PipelineBranchesitempullRequestlinks getLinks() {
    return links;
  }
  public void setLinks(PipelineBranchesitempullRequestlinks links) {
    this.links = links;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getAuthor() {
    return author;
  }
  public void setAuthor(String author) {
    this.author = author;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getClass() {
    return _class;
  }
  public void setClass(String _class) {
    this._class = _class;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PipelineBranchesitempullRequest pipelineBranchesitempullRequest = (PipelineBranchesitempullRequest) o;
    return (this.links == null ? pipelineBranchesitempullRequest.links == null : this.links.equals(pipelineBranchesitempullRequest.links)) &&
        (this.author == null ? pipelineBranchesitempullRequest.author == null : this.author.equals(pipelineBranchesitempullRequest.author)) &&
        (this.id == null ? pipelineBranchesitempullRequest.id == null : this.id.equals(pipelineBranchesitempullRequest.id)) &&
        (this.title == null ? pipelineBranchesitempullRequest.title == null : this.title.equals(pipelineBranchesitempullRequest.title)) &&
        (this.url == null ? pipelineBranchesitempullRequest.url == null : this.url.equals(pipelineBranchesitempullRequest.url)) &&
        (this._class == null ? pipelineBranchesitempullRequest._class == null : this._class.equals(pipelineBranchesitempullRequest._class));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.links == null ? 0: this.links.hashCode());
    result = 31 * result + (this.author == null ? 0: this.author.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineBranchesitempullRequest {\n");
    
    sb.append("  links: ").append(links).append("\n");
    sb.append("  author: ").append(author).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
