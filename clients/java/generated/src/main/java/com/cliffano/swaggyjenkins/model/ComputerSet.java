/*
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI spec version: 1.1.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.cliffano.swaggyjenkins.model;

import java.util.Objects;
import java.util.Arrays;
import com.cliffano.swaggyjenkins.model.HudsonMasterComputer;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * ComputerSet
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2019-04-10T03:53:55.760Z[GMT]")
public class ComputerSet {
  public static final String SERIALIZED_NAME_PROPERTY_CLASS = "_class";
  @SerializedName(SERIALIZED_NAME_PROPERTY_CLASS)
  private String propertyClass = null;

  public static final String SERIALIZED_NAME_BUSY_EXECUTORS = "busyExecutors";
  @SerializedName(SERIALIZED_NAME_BUSY_EXECUTORS)
  private Integer busyExecutors = null;

  public static final String SERIALIZED_NAME_COMPUTER = "computer";
  @SerializedName(SERIALIZED_NAME_COMPUTER)
  private List<HudsonMasterComputer> computer = null;

  public static final String SERIALIZED_NAME_DISPLAY_NAME = "displayName";
  @SerializedName(SERIALIZED_NAME_DISPLAY_NAME)
  private String displayName = null;

  public static final String SERIALIZED_NAME_TOTAL_EXECUTORS = "totalExecutors";
  @SerializedName(SERIALIZED_NAME_TOTAL_EXECUTORS)
  private Integer totalExecutors = null;

  public ComputerSet propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
  @ApiModelProperty(value = "")
  public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public ComputerSet busyExecutors(Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
    return this;
  }

   /**
   * Get busyExecutors
   * @return busyExecutors
  **/
  @ApiModelProperty(value = "")
  public Integer getBusyExecutors() {
    return busyExecutors;
  }

  public void setBusyExecutors(Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
  }

  public ComputerSet computer(List<HudsonMasterComputer> computer) {
    this.computer = computer;
    return this;
  }

  public ComputerSet addComputerItem(HudsonMasterComputer computerItem) {
    if (this.computer == null) {
      this.computer = new ArrayList<HudsonMasterComputer>();
    }
    this.computer.add(computerItem);
    return this;
  }

   /**
   * Get computer
   * @return computer
  **/
  @ApiModelProperty(value = "")
  public List<HudsonMasterComputer> getComputer() {
    return computer;
  }

  public void setComputer(List<HudsonMasterComputer> computer) {
    this.computer = computer;
  }

  public ComputerSet displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

   /**
   * Get displayName
   * @return displayName
  **/
  @ApiModelProperty(value = "")
  public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public ComputerSet totalExecutors(Integer totalExecutors) {
    this.totalExecutors = totalExecutors;
    return this;
  }

   /**
   * Get totalExecutors
   * @return totalExecutors
  **/
  @ApiModelProperty(value = "")
  public Integer getTotalExecutors() {
    return totalExecutors;
  }

  public void setTotalExecutors(Integer totalExecutors) {
    this.totalExecutors = totalExecutors;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ComputerSet computerSet = (ComputerSet) o;
    return Objects.equals(this.propertyClass, computerSet.propertyClass) &&
        Objects.equals(this.busyExecutors, computerSet.busyExecutors) &&
        Objects.equals(this.computer, computerSet.computer) &&
        Objects.equals(this.displayName, computerSet.displayName) &&
        Objects.equals(this.totalExecutors, computerSet.totalExecutors);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, busyExecutors, computer, displayName, totalExecutors);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ComputerSet {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    busyExecutors: ").append(toIndentedString(busyExecutors)).append("\n");
    sb.append("    computer: ").append(toIndentedString(computer)).append("\n");
    sb.append("    displayName: ").append(toIndentedString(displayName)).append("\n");
    sb.append("    totalExecutors: ").append(toIndentedString(totalExecutors)).append("\n");
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

