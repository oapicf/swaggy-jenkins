package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ClockDifference
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2018-08-21T02:12:05.971Z[GMT]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ClockDifference   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("diff")
  private Integer diff = null;

  public ClockDifference propertyClass(String propertyClass) {
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

  public ClockDifference diff(Integer diff) {
    this.diff = diff;
    return this;
  }

   /**
   * Get diff
   * @return diff
  **/
    public Integer getDiff() {
    return diff;
  }

  public void setDiff(Integer diff) {
    this.diff = diff;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ClockDifference clockDifference = (ClockDifference) o;
    return Objects.equals(propertyClass, clockDifference.propertyClass) &&
        Objects.equals(diff, clockDifference.diff);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, diff);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ClockDifference {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    diff: ").append(toIndentedString(diff)).append("\n");
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

