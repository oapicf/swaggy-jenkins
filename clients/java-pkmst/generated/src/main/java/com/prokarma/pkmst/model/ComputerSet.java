package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.HudsonMasterComputer;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ComputerSet
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2019-04-10T03:54:16.217Z[GMT]")

public class ComputerSet   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("busyExecutors")
  private Integer busyExecutors = null;

  @JsonProperty("computer")
  
  private List<HudsonMasterComputer> computer = null;

  @JsonProperty("displayName")
  private String displayName = null;

  @JsonProperty("totalExecutors")
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
      this.computer = new ArrayList<>();
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

