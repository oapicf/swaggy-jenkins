package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import javax.validation.Valid;
import javax.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import javax.annotation.Generated;

/**
 * DefaultCrumbIssuer
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-02-01T01:27:11.559404227Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public class DefaultCrumbIssuer {

  private @Nullable String propertyClass;

  private @Nullable String crumb;

  private @Nullable String crumbRequestField;

  public DefaultCrumbIssuer propertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

  /**
   * Get propertyClass
   * @return propertyClass
   */
  
  @Schema(name = "_class", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_class")
  public @Nullable String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public DefaultCrumbIssuer crumb(@Nullable String crumb) {
    this.crumb = crumb;
    return this;
  }

  /**
   * Get crumb
   * @return crumb
   */
  
  @Schema(name = "crumb", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("crumb")
  public @Nullable String getCrumb() {
    return crumb;
  }

  public void setCrumb(@Nullable String crumb) {
    this.crumb = crumb;
  }

  public DefaultCrumbIssuer crumbRequestField(@Nullable String crumbRequestField) {
    this.crumbRequestField = crumbRequestField;
    return this;
  }

  /**
   * Get crumbRequestField
   * @return crumbRequestField
   */
  
  @Schema(name = "crumbRequestField", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("crumbRequestField")
  public @Nullable String getCrumbRequestField() {
    return crumbRequestField;
  }

  public void setCrumbRequestField(@Nullable String crumbRequestField) {
    this.crumbRequestField = crumbRequestField;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DefaultCrumbIssuer defaultCrumbIssuer = (DefaultCrumbIssuer) o;
    return Objects.equals(this.propertyClass, defaultCrumbIssuer.propertyClass) &&
        Objects.equals(this.crumb, defaultCrumbIssuer.crumb) &&
        Objects.equals(this.crumbRequestField, defaultCrumbIssuer.crumbRequestField);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, crumb, crumbRequestField);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class DefaultCrumbIssuer {\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    crumb: ").append(toIndentedString(crumb)).append("\n");
    sb.append("    crumbRequestField: ").append(toIndentedString(crumbRequestField)).append("\n");
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

