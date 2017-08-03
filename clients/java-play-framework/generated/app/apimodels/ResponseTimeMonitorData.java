package apimodels;

import java.util.Objects;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import javax.validation.constraints.*;
/**
 * ResponseTimeMonitorData
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-08-03T23:33:33.060Z")

public class ResponseTimeMonitorData   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("timestamp")
  private Integer timestamp = null;

  @JsonProperty("average")
  private Integer average = null;

  public ResponseTimeMonitorData propertyClass(String propertyClass) {
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

  public ResponseTimeMonitorData timestamp(Integer timestamp) {
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

  public ResponseTimeMonitorData average(Integer average) {
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
    ResponseTimeMonitorData responseTimeMonitorData = (ResponseTimeMonitorData) o;
    return Objects.equals(this.propertyClass, responseTimeMonitorData.propertyClass) &&
        Objects.equals(this.timestamp, responseTimeMonitorData.timestamp) &&
        Objects.equals(this.average, responseTimeMonitorData.average);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, timestamp, average);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMonitorData {\n");
    
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

  public void validate() {
    ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
    Validator validator = factory.getValidator();
    Set<ConstraintViolation<ResponseTimeMonitorData>> constraintViolations = validator.validate(this);
    if (constraintViolations.size() > 0) {
      StringBuilder errors = new StringBuilder();
      for (ConstraintViolation<ResponseTimeMonitorData> contraintes : constraintViolations) {
        errors.append(String.format("%s.%s %s\n",
            contraintes.getRootBeanClass().getSimpleName(),
            contraintes.getPropertyPath(),
            contraintes.getMessage()));
      }
      throw new RuntimeException("Bean validation : " + errors);
    }
  }
}

