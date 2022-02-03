/*
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


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.FreeStyleBuild;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * HudsonMasterComputerexecutors
 */
@JsonPropertyOrder({
  HudsonMasterComputerexecutors.JSON_PROPERTY_CURRENT_EXECUTABLE,
  HudsonMasterComputerexecutors.JSON_PROPERTY_IDLE,
  HudsonMasterComputerexecutors.JSON_PROPERTY_LIKELY_STUCK,
  HudsonMasterComputerexecutors.JSON_PROPERTY_NUMBER,
  HudsonMasterComputerexecutors.JSON_PROPERTY_PROGRESS,
  HudsonMasterComputerexecutors.JSON_PROPERTY_PROPERTY_CLASS
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2022-02-02T10:45:25.136812Z[Etc/UTC]")
public class HudsonMasterComputerexecutors   {
  public static final String JSON_PROPERTY_CURRENT_EXECUTABLE = "currentExecutable";
  @JsonProperty(JSON_PROPERTY_CURRENT_EXECUTABLE)
  private FreeStyleBuild currentExecutable;

  public static final String JSON_PROPERTY_IDLE = "idle";
  @JsonProperty(JSON_PROPERTY_IDLE)
  private Boolean idle;

  public static final String JSON_PROPERTY_LIKELY_STUCK = "likelyStuck";
  @JsonProperty(JSON_PROPERTY_LIKELY_STUCK)
  private Boolean likelyStuck;

  public static final String JSON_PROPERTY_NUMBER = "number";
  @JsonProperty(JSON_PROPERTY_NUMBER)
  private Integer number;

  public static final String JSON_PROPERTY_PROGRESS = "progress";
  @JsonProperty(JSON_PROPERTY_PROGRESS)
  private Integer progress;

  public static final String JSON_PROPERTY_PROPERTY_CLASS = "_class";
  @JsonProperty(JSON_PROPERTY_PROPERTY_CLASS)
  private String propertyClass;

  public HudsonMasterComputerexecutors currentExecutable(FreeStyleBuild currentExecutable) {
    this.currentExecutable = currentExecutable;
    return this;
  }

  /**
   * Get currentExecutable
   * @return currentExecutable
   **/
  @JsonProperty(value = "currentExecutable")
  @ApiModelProperty(value = "")
  @Valid 
  public FreeStyleBuild getCurrentExecutable() {
    return currentExecutable;
  }

  public void setCurrentExecutable(FreeStyleBuild currentExecutable) {
    this.currentExecutable = currentExecutable;
  }

  public HudsonMasterComputerexecutors idle(Boolean idle) {
    this.idle = idle;
    return this;
  }

  /**
   * Get idle
   * @return idle
   **/
  @JsonProperty(value = "idle")
  @ApiModelProperty(value = "")
  
  public Boolean getIdle() {
    return idle;
  }

  public void setIdle(Boolean idle) {
    this.idle = idle;
  }

  public HudsonMasterComputerexecutors likelyStuck(Boolean likelyStuck) {
    this.likelyStuck = likelyStuck;
    return this;
  }

  /**
   * Get likelyStuck
   * @return likelyStuck
   **/
  @JsonProperty(value = "likelyStuck")
  @ApiModelProperty(value = "")
  
  public Boolean getLikelyStuck() {
    return likelyStuck;
  }

  public void setLikelyStuck(Boolean likelyStuck) {
    this.likelyStuck = likelyStuck;
  }

  public HudsonMasterComputerexecutors number(Integer number) {
    this.number = number;
    return this;
  }

  /**
   * Get number
   * @return number
   **/
  @JsonProperty(value = "number")
  @ApiModelProperty(value = "")
  
  public Integer getNumber() {
    return number;
  }

  public void setNumber(Integer number) {
    this.number = number;
  }

  public HudsonMasterComputerexecutors progress(Integer progress) {
    this.progress = progress;
    return this;
  }

  /**
   * Get progress
   * @return progress
   **/
  @JsonProperty(value = "progress")
  @ApiModelProperty(value = "")
  
  public Integer getProgress() {
    return progress;
  }

  public void setProgress(Integer progress) {
    this.progress = progress;
  }

  public HudsonMasterComputerexecutors propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   **/
  @JsonProperty(value = "_class")
  @ApiModelProperty(value = "")
  
  public String getPropertyClass() {
    return propertyClass;
  }

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

