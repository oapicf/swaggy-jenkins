/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.1.1
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import org.openapitools.client.model.FreeStyleBuild;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class HudsonMasterComputerexecutors {
  
  @SerializedName("currentExecutable")
  private FreeStyleBuild currentExecutable = null;
  @SerializedName("idle")
  private Boolean idle = null;
  @SerializedName("likelyStuck")
  private Boolean likelyStuck = null;
  @SerializedName("number")
  private Integer number = null;
  @SerializedName("progress")
  private Integer progress = null;
  @SerializedName("_class")
  private String _class = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public FreeStyleBuild getCurrentExecutable() {
    return currentExecutable;
  }
  public void setCurrentExecutable(FreeStyleBuild currentExecutable) {
    this.currentExecutable = currentExecutable;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getIdle() {
    return idle;
  }
  public void setIdle(Boolean idle) {
    this.idle = idle;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getLikelyStuck() {
    return likelyStuck;
  }
  public void setLikelyStuck(Boolean likelyStuck) {
    this.likelyStuck = likelyStuck;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getNumber() {
    return number;
  }
  public void setNumber(Integer number) {
    this.number = number;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getProgress() {
    return progress;
  }
  public void setProgress(Integer progress) {
    this.progress = progress;
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
    HudsonMasterComputerexecutors hudsonMasterComputerexecutors = (HudsonMasterComputerexecutors) o;
    return (this.currentExecutable == null ? hudsonMasterComputerexecutors.currentExecutable == null : this.currentExecutable.equals(hudsonMasterComputerexecutors.currentExecutable)) &&
        (this.idle == null ? hudsonMasterComputerexecutors.idle == null : this.idle.equals(hudsonMasterComputerexecutors.idle)) &&
        (this.likelyStuck == null ? hudsonMasterComputerexecutors.likelyStuck == null : this.likelyStuck.equals(hudsonMasterComputerexecutors.likelyStuck)) &&
        (this.number == null ? hudsonMasterComputerexecutors.number == null : this.number.equals(hudsonMasterComputerexecutors.number)) &&
        (this.progress == null ? hudsonMasterComputerexecutors.progress == null : this.progress.equals(hudsonMasterComputerexecutors.progress)) &&
        (this._class == null ? hudsonMasterComputerexecutors._class == null : this._class.equals(hudsonMasterComputerexecutors._class));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.currentExecutable == null ? 0: this.currentExecutable.hashCode());
    result = 31 * result + (this.idle == null ? 0: this.idle.hashCode());
    result = 31 * result + (this.likelyStuck == null ? 0: this.likelyStuck.hashCode());
    result = 31 * result + (this.number == null ? 0: this.number.hashCode());
    result = 31 * result + (this.progress == null ? 0: this.progress.hashCode());
    result = 31 * result + (this._class == null ? 0: this._class.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonMasterComputerexecutors {\n");
    
    sb.append("  currentExecutable: ").append(currentExecutable).append("\n");
    sb.append("  idle: ").append(idle).append("\n");
    sb.append("  likelyStuck: ").append(likelyStuck).append("\n");
    sb.append("  number: ").append(number).append("\n");
    sb.append("  progress: ").append(progress).append("\n");
    sb.append("  _class: ").append(_class).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
