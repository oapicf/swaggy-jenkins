package io.swagger.model;

import io.swagger.model.FreeStyleBuild;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;


public class HudsonMasterComputerexecutors   {
  
  private FreeStyleBuild currentExecutable = null;
  private Boolean idle = null;
  private Boolean likelyStuck = null;
  private Integer number = null;
  private Integer progress = null;
  private String propertyClass = null;

  /**
   **/
  public HudsonMasterComputerexecutors currentExecutable(FreeStyleBuild currentExecutable) {
    this.currentExecutable = currentExecutable;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public FreeStyleBuild getCurrentExecutable() {
    return currentExecutable;
  }
  public void setCurrentExecutable(FreeStyleBuild currentExecutable) {
    this.currentExecutable = currentExecutable;
  }

  /**
   **/
  public HudsonMasterComputerexecutors idle(Boolean idle) {
    this.idle = idle;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Boolean isIdle() {
    return idle;
  }
  public void setIdle(Boolean idle) {
    this.idle = idle;
  }

  /**
   **/
  public HudsonMasterComputerexecutors likelyStuck(Boolean likelyStuck) {
    this.likelyStuck = likelyStuck;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Boolean isLikelyStuck() {
    return likelyStuck;
  }
  public void setLikelyStuck(Boolean likelyStuck) {
    this.likelyStuck = likelyStuck;
  }

  /**
   **/
  public HudsonMasterComputerexecutors number(Integer number) {
    this.number = number;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Integer getNumber() {
    return number;
  }
  public void setNumber(Integer number) {
    this.number = number;
  }

  /**
   **/
  public HudsonMasterComputerexecutors progress(Integer progress) {
    this.progress = progress;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public Integer getProgress() {
    return progress;
  }
  public void setProgress(Integer progress) {
    this.progress = progress;
  }

  /**
   **/
  public HudsonMasterComputerexecutors propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonMasterComputerexecutors hudsonMasterComputerexecutors = (HudsonMasterComputerexecutors) o;
    return Objects.equals(currentExecutable, hudsonMasterComputerexecutors.currentExecutable) &&
        Objects.equals(idle, hudsonMasterComputerexecutors.idle) &&
        Objects.equals(likelyStuck, hudsonMasterComputerexecutors.likelyStuck) &&
        Objects.equals(number, hudsonMasterComputerexecutors.number) &&
        Objects.equals(progress, hudsonMasterComputerexecutors.progress) &&
        Objects.equals(propertyClass, hudsonMasterComputerexecutors.propertyClass);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

