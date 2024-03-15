/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 2.0.1-pre.0
 * Contact: blah+oapicf@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import org.openapitools.client.model.Link;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class BranchImpllinks {
  
  @SerializedName("self")
  private Link self = null;
  @SerializedName("actions")
  private Link actions = null;
  @SerializedName("runs")
  private Link runs = null;
  @SerializedName("queue")
  private Link queue = null;
  @SerializedName("_class")
  private String _class = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Link getSelf() {
    return self;
  }
  public void setSelf(Link self) {
    this.self = self;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Link getActions() {
    return actions;
  }
  public void setActions(Link actions) {
    this.actions = actions;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Link getRuns() {
    return runs;
  }
  public void setRuns(Link runs) {
    this.runs = runs;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Link getQueue() {
    return queue;
  }
  public void setQueue(Link queue) {
    this.queue = queue;
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
    BranchImpllinks branchImpllinks = (BranchImpllinks) o;
    return (this.self == null ? branchImpllinks.self == null : this.self.equals(branchImpllinks.self)) &&
        (this.actions == null ? branchImpllinks.actions == null : this.actions.equals(branchImpllinks.actions)) &&
        (this.runs == null ? branchImpllinks.runs == null : this.runs.equals(branchImpllinks.runs)) &&
        (this.queue == null ? branchImpllinks.queue == null : this.queue.equals(branchImpllinks.queue)) &&
        (this._class == null ? branchImpllinks._class == null : this._class.equals(branchImpllinks._class));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.self == null ? 0: this.self.hashCode());
    result = 31 * result + (this.actions == null ? 0: this.actions.hashCode());
    result = 31 * result + (this.runs == null ? 0: this.runs.hashCode());
    result = 31 * result + (this.queue == null ? 0: this.queue.hashCode());
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class BranchImpllinks {\n");
    
    sb.append("  self: ").append(self).append("\n");
    sb.append("  actions: ").append(actions).append("\n");
    sb.append("  runs: ").append(runs).append("\n");
    sb.append("  queue: ").append(queue).append("\n");
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
