package apimodels;

import java.util.Objects;
import apimodels.HudsonmodelHudsonMasterComputer;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * HudsonmodelComputerSet
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class HudsonmodelComputerSet   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("busyExecutors")
  private Integer busyExecutors = null;

  @JsonProperty("computer")
  private List<HudsonmodelHudsonMasterComputer> computer = null;

  @JsonProperty("displayName")
  private String displayName = null;

  @JsonProperty("totalExecutors")
  private Integer totalExecutors = null;

  public HudsonmodelComputerSet propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
    public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public HudsonmodelComputerSet busyExecutors(Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
    return this;
  }

   /**
   * Get busyExecutors
   * @return busyExecutors
  **/
    public Integer getBusyExecutors() {
    return busyExecutors;
  }

  public void setBusyExecutors(Integer busyExecutors) {
    this.busyExecutors = busyExecutors;
  }

  public HudsonmodelComputerSet computer(List<HudsonmodelHudsonMasterComputer> computer) {
    this.computer = computer;
    return this;
  }

  public HudsonmodelComputerSet addComputerItem(HudsonmodelHudsonMasterComputer computerItem) {
    if (this.computer == null) {
      this.computer = new ArrayList<HudsonmodelHudsonMasterComputer>();
    }
    this.computer.add(computerItem);
    return this;
  }

   /**
   * Get computer
   * @return computer
  **/
    public List<HudsonmodelHudsonMasterComputer> getComputer() {
    return computer;
  }

  public void setComputer(List<HudsonmodelHudsonMasterComputer> computer) {
    this.computer = computer;
  }

  public HudsonmodelComputerSet displayName(String displayName) {
    this.displayName = displayName;
    return this;
  }

   /**
   * Get displayName
   * @return displayName
  **/
    public String getDisplayName() {
    return displayName;
  }

  public void setDisplayName(String displayName) {
    this.displayName = displayName;
  }

  public HudsonmodelComputerSet totalExecutors(Integer totalExecutors) {
    this.totalExecutors = totalExecutors;
    return this;
  }

   /**
   * Get totalExecutors
   * @return totalExecutors
  **/
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
    return Objects.equals(this.propertyClass, hudsonmodelComputerSet.propertyClass) &&
        Objects.equals(this.busyExecutors, hudsonmodelComputerSet.busyExecutors) &&
        Objects.equals(this.computer, hudsonmodelComputerSet.computer) &&
        Objects.equals(this.displayName, hudsonmodelComputerSet.displayName) &&
        Objects.equals(this.totalExecutors, hudsonmodelComputerSet.totalExecutors);
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

