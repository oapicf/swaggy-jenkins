package apimodels;

import java.util.Objects;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * HudsonnodeMonitorsResponseTimeMonitorData
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class HudsonnodeMonitorsResponseTimeMonitorData   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("timestamp")
  private Integer timestamp = null;

  @JsonProperty("average")
  private Integer average = null;

  public HudsonnodeMonitorsResponseTimeMonitorData propertyClass(String propertyClass) {
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

  public HudsonnodeMonitorsResponseTimeMonitorData timestamp(Integer timestamp) {
    this.timestamp = timestamp;
    return this;
  }

   /**
   * Get timestamp
   * @return timestamp
  **/
    public Integer getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(Integer timestamp) {
    this.timestamp = timestamp;
  }

  public HudsonnodeMonitorsResponseTimeMonitorData average(Integer average) {
    this.average = average;
    return this;
  }

   /**
   * Get average
   * @return average
  **/
    public Integer getAverage() {
    return average;
  }

  public void setAverage(Integer average) {
    this.average = average;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HudsonnodeMonitorsResponseTimeMonitorData hudsonnodeMonitorsResponseTimeMonitorData = (HudsonnodeMonitorsResponseTimeMonitorData) o;
    return Objects.equals(this.propertyClass, hudsonnodeMonitorsResponseTimeMonitorData.propertyClass) &&
        Objects.equals(this.timestamp, hudsonnodeMonitorsResponseTimeMonitorData.timestamp) &&
        Objects.equals(this.average, hudsonnodeMonitorsResponseTimeMonitorData.average);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, timestamp, average);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonnodeMonitorsResponseTimeMonitorData {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    average: ").append(toIndentedString(average)).append("\n");
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

