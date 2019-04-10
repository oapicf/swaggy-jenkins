/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.FreeStyleProject;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ListView {
  
  @SerializedName("_class")
  private String _class = null;
  @SerializedName("description")
  private String description = null;
  @SerializedName("jobs")
  private List<FreeStyleProject> jobs = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("url")
  private String url = null;

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
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<FreeStyleProject> getJobs() {
    return jobs;
  }
  public void setJobs(List<FreeStyleProject> jobs) {
    this.jobs = jobs;
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
  public String getUrl() {
    return url;
  }
  public void setUrl(String url) {
    this.url = url;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ListView listView = (ListView) o;
    return (this._class == null ? listView._class == null : this._class.equals(listView._class)) &&
        (this.description == null ? listView.description == null : this.description.equals(listView.description)) &&
        (this.jobs == null ? listView.jobs == null : this.jobs.equals(listView.jobs)) &&
        (this.name == null ? listView.name == null : this.name.equals(listView.name)) &&
        (this.url == null ? listView.url == null : this.url.equals(listView.url));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.jobs == null ? 0: this.jobs.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ListView {\n");
    
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("  description: ").append(description).append("\n");
    sb.append("  jobs: ").append(jobs).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
