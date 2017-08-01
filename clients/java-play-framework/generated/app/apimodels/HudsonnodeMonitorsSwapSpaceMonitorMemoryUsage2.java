package apimodels;

import java.util.Objects;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("availablePhysicalMemory")
  private Integer availablePhysicalMemory = null;

  @JsonProperty("availableSwapSpace")
  private Integer availableSwapSpace = null;

  @JsonProperty("totalPhysicalMemory")
  private Integer totalPhysicalMemory = null;

  @JsonProperty("totalSwapSpace")
  private Integer totalSwapSpace = null;

  public HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 propertyClass(String propertyClass) {
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

  public HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 availablePhysicalMemory(Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
    return this;
  }

   /**
   * Get availablePhysicalMemory
   * @return availablePhysicalMemory
  **/
    public Integer getAvailablePhysicalMemory() {
    return availablePhysicalMemory;
  }

  public void setAvailablePhysicalMemory(Integer availablePhysicalMemory) {
    this.availablePhysicalMemory = availablePhysicalMemory;
  }

  public HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 availableSwapSpace(Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
    return this;
  }

   /**
   * Get availableSwapSpace
   * @return availableSwapSpace
  **/
    public Integer getAvailableSwapSpace() {
    return availableSwapSpace;
  }

  public void setAvailableSwapSpace(Integer availableSwapSpace) {
    this.availableSwapSpace = availableSwapSpace;
  }

  public HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 totalPhysicalMemory(Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
    return this;
  }

   /**
   * Get totalPhysicalMemory
   * @return totalPhysicalMemory
  **/
    public Integer getTotalPhysicalMemory() {
    return totalPhysicalMemory;
  }

  public void setTotalPhysicalMemory(Integer totalPhysicalMemory) {
    this.totalPhysicalMemory = totalPhysicalMemory;
  }

  public HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 totalSwapSpace(Integer totalSwapSpace) {
    this.totalSwapSpace = totalSwapSpace;
    return this;
  }

   /**
   * Get totalSwapSpace
   * @return totalSwapSpace
  **/
    public Integer getTotalSwapSpace() {
    return totalSwapSpace;
  }

  public void setTotalSwapSpace(Integer totalSwapSpace) {
    this.totalSwapSpace = totalSwapSpace;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 = (HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2) o;
    return Objects.equals(this.propertyClass, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2.propertyClass) &&
        Objects.equals(this.availablePhysicalMemory, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2.availablePhysicalMemory) &&
        Objects.equals(this.availableSwapSpace, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2.availableSwapSpace) &&
        Objects.equals(this.totalPhysicalMemory, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2.totalPhysicalMemory) &&
        Objects.equals(this.totalSwapSpace, hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2.totalSwapSpace);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, availablePhysicalMemory, availableSwapSpace, totalPhysicalMemory, totalSwapSpace);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    availablePhysicalMemory: ").append(toIndentedString(availablePhysicalMemory)).append("\n");
    sb.append("    availableSwapSpace: ").append(toIndentedString(availableSwapSpace)).append("\n");
    sb.append("    totalPhysicalMemory: ").append(toIndentedString(totalPhysicalMemory)).append("\n");
    sb.append("    totalSwapSpace: ").append(toIndentedString(totalSwapSpace)).append("\n");
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

