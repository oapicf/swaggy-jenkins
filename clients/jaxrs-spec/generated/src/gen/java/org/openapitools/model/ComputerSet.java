package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.HudsonMasterComputer;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import com.fasterxml.jackson.annotation.JsonTypeName;



@JsonTypeName("ComputerSet")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2025-04-27T08:09:45.633008592Z[Etc/UTC]", comments = "Generator version: 7.12.0")
public class ComputerSet   {
  private String propertyClass;
  private Integer busyExecutors;
  private @Valid List<@Valid HudsonMasterComputer> computer = new ArrayList<>();
  private String displayName;
  private Integer totalExecutors;

  public ComputerSet() {
  }

  /**
   **/
  public ComputerSet propertyClass(String propertyClass) {
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

  /**
   **/
  public ComputerSet busyExecutors(Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("busyExecutors")
  public Integer getBusyExecutors() {
    return busyExecutors;
  }

  @JsonProperty("busyExecutors")
  public void setBusyExecutors(Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
  }

  /**
   **/
  public ComputerSet computer(List<@Valid HudsonMasterComputer> computer) {
    this.computer = computer;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("computer")
  @Valid public List<@Valid HudsonMasterComputer> getComputer() {
    return computer;
  }

  @JsonProperty("computer")
  public void setComputer(List<@Valid HudsonMasterComputer> computer) {
    this.computer = computer;
  }

  public ComputerSet addComputerItem(HudsonMasterComputer computerItem) {
    if (this.computer == null) {
      this.computer = new ArrayList<>();
    }

    this.computer.add(computerItem);
    return this;
  }

  public ComputerSet removeComputerItem(HudsonMasterComputer computerItem) {
    if (computerItem != null && this.computer != null) {
      this.computer.remove(computerItem);
    }

    return this;
  }
  /**
   **/
  public ComputerSet displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("displayName")
  public String getDisplayName() {
    return displayName;
  }

  @JsonProperty("displayName")
  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  /**
   **/
  public ComputerSet totalExecutors(Integer totalExecutors) {
    this.totalExecutors = totalExecutors;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("totalExecutors")
  public Integer getTotalExecutors() {
    return totalExecutors;
  }

  @JsonProperty("totalExecutors")
  public void setTotalExecutors(Integer totalExecutors) {
    this.totalExecutors = totalExecutors;
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

