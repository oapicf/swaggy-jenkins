package org.openapitools.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.HudsonMasterComputer;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ComputerSet  {
  
  @ApiModelProperty(value = "")
  private String propertyClass;

  @ApiModelProperty(value = "")
  private Integer busyExecutors;

  @ApiModelProperty(value = "")
  @Valid
  private List<@Valid HudsonMasterComputer> computer;

  @ApiModelProperty(value = "")
  private String displayName;

  @ApiModelProperty(value = "")
  private Integer totalExecutors;
 /**
  * Get propertyClass
  * @return propertyClass
  */
  @JsonProperty("_class")
  public String getPropertyClass() {
    return propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
 public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  /**
   * Sets the <code>propertyClass</code> property.
   */
  public ComputerSet propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

 /**
  * Get busyExecutors
  * @return busyExecutors
  */
  @JsonProperty("busyExecutors")
  public Integer getBusyExecutors() {
    return busyExecutors;
  }

  /**
   * Sets the <code>busyExecutors</code> property.
   */
 public void setBusyExecutors(Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
  }

  /**
   * Sets the <code>busyExecutors</code> property.
   */
  public ComputerSet busyExecutors(Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
    return this;
  }

 /**
  * Get computer
  * @return computer
  */
  @JsonProperty("computer")
  public List<@Valid HudsonMasterComputer> getComputer() {
    return computer;
  }

  /**
   * Sets the <code>computer</code> property.
   */
 public void setComputer(List<@Valid HudsonMasterComputer> computer) {
    this.computer = computer;
  }

  /**
   * Sets the <code>computer</code> property.
   */
  public ComputerSet computer(List<@Valid HudsonMasterComputer> computer) {
    this.computer = computer;
    return this;
  }

  /**
   * Adds a new item to the <code>computer</code> list.
   */
  public ComputerSet addComputerItem(HudsonMasterComputer computerItem) {
    this.computer.add(computerItem);
    return this;
  }

 /**
  * Get displayName
  * @return displayName
  */
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  /**
   * Sets the <code>displayName</code> property.
   */
 public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   * Sets the <code>displayName</code> property.
   */
  public ComputerSet displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

 /**
  * Get totalExecutors
  * @return totalExecutors
  */
  @JsonProperty("totalExecutors")
  public Integer getTotalExecutors() {
    return totalExecutors;
  }

  /**
   * Sets the <code>totalExecutors</code> property.
   */
 public void setTotalExecutors(Integer totalExecutors) {
    this.totalExecutors = totalExecutors;
  }

  /**
   * Sets the <code>totalExecutors</code> property.
   */
  public ComputerSet totalExecutors(Integer totalExecutors) {
    this.totalExecutors = totalExecutors;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

