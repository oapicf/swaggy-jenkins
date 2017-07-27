package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.model.HudsonmodelHudsonMasterComputer;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class HudsonmodelComputerSet   {
  
  private String propertyClass = null;
  private Integer busyExecutors = null;
  private List<HudsonmodelHudsonMasterComputer> computer = new ArrayList<HudsonmodelHudsonMasterComputer>();
  private String displayName = null;
  private Integer totalExecutors = null;

  /**
   **/
  public HudsonmodelComputerSet propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }
  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   **/
  public HudsonmodelComputerSet busyExecutors(Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("busyExecutors")
  public Integer getBusyExecutors() {
    return busyExecutors;
  }
  public void setBusyExecutors(Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
  }

  /**
   **/
  public HudsonmodelComputerSet computer(List<HudsonmodelHudsonMasterComputer> computer) {
    this.computer = computer;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("computer")
  public List<HudsonmodelHudsonMasterComputer> getComputer() {
    return computer;
  }
  public void setComputer(List<HudsonmodelHudsonMasterComputer> computer) {
    this.computer = computer;
  }

  /**
   **/
  public HudsonmodelComputerSet displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   **/
  public HudsonmodelComputerSet totalExecutors(Integer totalExecutors) {
    this.totalExecutors = totalExecutors;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("totalExecutors")
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
    HudsonmodelComputerSet hudsonmodelComputerSet = (HudsonmodelComputerSet) o;
    return Objects.equals(propertyClass, hudsonmodelComputerSet.propertyClass) &&
        Objects.equals(busyExecutors, hudsonmodelComputerSet.busyExecutors) &&
        Objects.equals(computer, hudsonmodelComputerSet.computer) &&
        Objects.equals(displayName, hudsonmodelComputerSet.displayName) &&
        Objects.equals(totalExecutors, hudsonmodelComputerSet.totalExecutors);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, busyExecutors, computer, displayName, totalExecutors);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonmodelComputerSet {\n");
    
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

