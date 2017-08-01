package apimodels;

import java.util.Objects;
import javax.validation.constraints.*;
import com.fasterxml.jackson.annotation.*;
/**
 * HudsonutilClockDifference
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-07-25T10:44:57.391+10:00")

public class HudsonutilClockDifference   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("diff")
  private Integer diff = null;

  public HudsonutilClockDifference propertyClass(String propertyClass) {
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

  public HudsonutilClockDifference diff(Integer diff) {
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
    HudsonutilClockDifference hudsonutilClockDifference = (HudsonutilClockDifference) o;
    return Objects.equals(this.propertyClass, hudsonutilClockDifference.propertyClass) &&
        Objects.equals(this.diff, hudsonutilClockDifference.diff);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, diff);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class HudsonutilClockDifference {\n");
    
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

