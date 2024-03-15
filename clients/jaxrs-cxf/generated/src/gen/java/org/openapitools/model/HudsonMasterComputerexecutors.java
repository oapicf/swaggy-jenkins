package org.openapitools.model;

import org.openapitools.model.FreeStyleBuild;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;


public class HudsonMasterComputerexecutors  {
  
  @ApiModelProperty(value = "")
  @Valid
  private FreeStyleBuild currentExecutable;

  @ApiModelProperty(value = "")
  private Boolean idle;

  @ApiModelProperty(value = "")
  private Boolean likelyStuck;

  @ApiModelProperty(value = "")
  private Integer number;

  @ApiModelProperty(value = "")
  private Integer progress;

  @ApiModelProperty(value = "")
  private String propertyClass;
 /**
   * Get currentExecutable
   * @return currentExecutable
  **/
  @JsonProperty("currentExecutable")
  public FreeStyleBuild getCurrentExecutable() {
    return currentExecutable;
  }

  public void setCurrentExecutable(FreeStyleBuild currentExecutable) {
    this.currentExecutable = currentExecutable;
  }

  public HudsonMasterComputerexecutors currentExecutable(FreeStyleBuild currentExecutable) {
    this.currentExecutable = currentExecutable;
    return this;
  }

 /**
   * Get idle
   * @return idle
  **/
  @JsonProperty("idle")
  public Boolean getIdle() {
    return idle;
  }

  public void setIdle(Boolean idle) {
    this.idle = idle;
  }

  public HudsonMasterComputerexecutors idle(Boolean idle) {
    this.idle = idle;
    return this;
  }

 /**
   * Get likelyStuck
   * @return likelyStuck
  **/
  @JsonProperty("likelyStuck")
  public Boolean getLikelyStuck() {
    return likelyStuck;
  }

  public void setLikelyStuck(Boolean likelyStuck) {
    this.likelyStuck = likelyStuck;
  }

  public HudsonMasterComputerexecutors likelyStuck(Boolean likelyStuck) {
    this.likelyStuck = likelyStuck;
    return this;
  }

 /**
   * Get number
   * @return number
  **/
  @JsonProperty("number")
  public Integer getNumber() {
    return number;
  }

  public void setNumber(Integer number) {
    this.number = number;
  }

  public HudsonMasterComputerexecutors number(Integer number) {
    this.number = number;
    return this;
  }

 /**
   * Get progress
   * @return progress
  **/
  @JsonProperty("progress")
  public Integer getProgress() {
    return progress;
  }

  public void setProgress(Integer progress) {
    this.progress = progress;
  }

  public HudsonMasterComputerexecutors progress(Integer progress) {
    this.progress = progress;
    return this;
  }

 /**
   * Get propertyClass
   * @return propertyClass
  **/
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public HudsonMasterComputerexecutors propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
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
    return Objects.equals(this.currentExecutable, hudsonMasterComputerexecutors.currentExecutable) &&
        Objects.equals(this.idle, hudsonMasterComputerexecutors.idle) &&
        Objects.equals(this.likelyStuck, hudsonMasterComputerexecutors.likelyStuck) &&
        Objects.equals(this.number, hudsonMasterComputerexecutors.number) &&
        Objects.equals(this.progress, hudsonMasterComputerexecutors.progress) &&
        Objects.equals(this.propertyClass, hudsonMasterComputerexecutors.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(currentExecutable, idle, likelyStuck, number, progress, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonMasterComputerexecutors {\n");
    
    sb.append("    currentExecutable: ").append(toIndentedString(currentExecutable)).append("\n");
    sb.append("    idle: ").append(toIndentedString(idle)).append("\n");
    sb.append("    likelyStuck: ").append(toIndentedString(likelyStuck)).append("\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
    sb.append("    progress: ").append(toIndentedString(progress)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

