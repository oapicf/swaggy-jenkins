package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2019-04-10T13:18:07.561Z[GMT]")
public class ClockDifference   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("diff")
  private Integer diff = null;

  /**
   **/
  public ClockDifference propertyClass(String propertyClass) {
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
  public ClockDifference diff(Integer diff) {
    this.diff = diff;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("diff")
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

