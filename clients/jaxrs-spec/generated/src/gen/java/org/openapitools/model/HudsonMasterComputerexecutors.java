package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.FreeStyleBuild;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("HudsonMasterComputerexecutors")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2022-02-02T10:45:47.905826Z[Etc/UTC]")public class HudsonMasterComputerexecutors   {
  
  private @Valid FreeStyleBuild currentExecutable;
  private @Valid Boolean idle;
  private @Valid Boolean likelyStuck;
  private @Valid Integer number;
  private @Valid Integer progress;
  private @Valid String propertyClass;

  /**
   **/
  public HudsonMasterComputerexecutors currentExecutable(FreeStyleBuild currentExecutable) {
    this.currentExecutable = currentExecutable;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("currentExecutable")
  public FreeStyleBuild getCurrentExecutable() {
    return currentExecutable;
  }

  @JsonProperty("currentExecutable")
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
  @JsonProperty("idle")
  public Boolean getIdle() {
    return idle;
  }

  @JsonProperty("idle")
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
  @JsonProperty("likelyStuck")
  public Boolean getLikelyStuck() {
    return likelyStuck;
  }

  @JsonProperty("likelyStuck")
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
  @JsonProperty("number")
  public Integer getNumber() {
    return number;
  }

  @JsonProperty("number")
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
  @JsonProperty("progress")
  public Integer getProgress() {
    return progress;
  }

  @JsonProperty("progress")
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
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  @JsonProperty("_class")
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

