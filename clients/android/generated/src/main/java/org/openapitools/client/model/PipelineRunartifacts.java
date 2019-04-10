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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class PipelineRunartifacts {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("size")
  private Integer size = null;
  @SerializedName("url")
  private String url = null;
  @SerializedName("_class")
  private String _class = null;

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
  public Integer getSize() {
    return size;
  }
  public void setSize(Integer size) {
    this.size = size;
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
    PipelineRunartifacts pipelineRunartifacts = (PipelineRunartifacts) o;
    return (this.name == null ? pipelineRunartifacts.name == null : this.name.equals(pipelineRunartifacts.name)) &&
        (this.size == null ? pipelineRunartifacts.size == null : this.size.equals(pipelineRunartifacts.size)) &&
        (this.url == null ? pipelineRunartifacts.url == null : this.url.equals(pipelineRunartifacts.url)) &&
        (this._class == null ? pipelineRunartifacts._class == null : this._class.equals(pipelineRunartifacts._class));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.size == null ? 0: this.size.hashCode());
    result = 31 * result + (this.url == null ? 0: this.url.hashCode());
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PipelineRunartifacts {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  size: ").append(size).append("\n");
    sb.append("  url: ").append(url).append("\n");
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
