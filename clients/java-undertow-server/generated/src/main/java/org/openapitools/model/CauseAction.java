/*
 * Swaggy Jenkins
 *
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * OpenAPI document version: 1.1.1
 * Maintained by: blah@cliffano.com
 *
 * AUTO-GENERATED FILE, DO NOT MODIFY!
 */
package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.CauseUserIdCause;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2022-02-02T10:44:55.405154Z[Etc/UTC]")
public class CauseAction   {
  
  private String propertyClass;
  private List<CauseUserIdCause> causes = new ArrayList<CauseUserIdCause>();

  /**
   */
  public CauseAction propertyClass(String propertyClass) {
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
   */
  public CauseAction causes(List<CauseUserIdCause> causes) {
    this.causes = causes;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("causes")
  public List<CauseUserIdCause> getCauses() {
    return causes;
  }
  public void setCauses(List<CauseUserIdCause> causes) {
    this.causes = causes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CauseAction causeAction = (CauseAction) o;
    return Objects.equals(propertyClass, causeAction.propertyClass) &&
        Objects.equals(causes, causeAction.causes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, causes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class CauseAction {\n");
    
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    causes: ").append(toIndentedString(causes)).append("\n");
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

