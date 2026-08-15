package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * FreeStyleProjecthealthReport
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-15T12:33:21.937757652Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class FreeStyleProjecthealthReport {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String description;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String iconClassName;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String iconUrl;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer score;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  public FreeStyleProjecthealthReport description(@Nullable String description) {
    this.description = description;
    return this;
  }

  /**
   * Get description
   * @return description
   */
  
  @Schema(name = "description", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("description")
  public @Nullable String getDescription() {
    return description;
  }

  @JsonProperty("description")
  public void setDescription(@Nullable String description) {
    this.description = description;
  }

  public FreeStyleProjecthealthReport iconClassName(@Nullable String iconClassName) {
    this.iconClassName = iconClassName;
    return this;
  }

  /**
   * Get iconClassName
   * @return iconClassName
   */
  
  @Schema(name = "iconClassName", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("iconClassName")
  public @Nullable String getIconClassName() {
    return iconClassName;
  }

  @JsonProperty("iconClassName")
  public void setIconClassName(@Nullable String iconClassName) {
    this.iconClassName = iconClassName;
  }

  public FreeStyleProjecthealthReport iconUrl(@Nullable String iconUrl) {
    this.iconUrl = iconUrl;
    return this;
  }

  /**
   * Get iconUrl
   * @return iconUrl
   */
  
  @Schema(name = "iconUrl", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("iconUrl")
  public @Nullable String getIconUrl() {
    return iconUrl;
  }

  @JsonProperty("iconUrl")
  public void setIconUrl(@Nullable String iconUrl) {
    this.iconUrl = iconUrl;
  }

  public FreeStyleProjecthealthReport score(@Nullable Integer score) {
    this.score = score;
    return this;
  }

  /**
   * Get score
   * @return score
   */
  
  @Schema(name = "score", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("score")
  public @Nullable Integer getScore() {
    return score;
  }

  @JsonProperty("score")
  public void setScore(@Nullable Integer score) {
    this.score = score;
  }

  public FreeStyleProjecthealthReport propertyClass(@Nullable String propertyClass) {
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

  @JsonProperty("_class")
  public void setPropertyClass(@Nullable String propertyClass) {
    this.propertyClass = propertyClass;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FreeStyleProjecthealthReport freeStyleProjecthealthReport = (FreeStyleProjecthealthReport) o;
    return Objects.equals(this.description, freeStyleProjecthealthReport.description) &&
        Objects.equals(this.iconClassName, freeStyleProjecthealthReport.iconClassName) &&
        Objects.equals(this.iconUrl, freeStyleProjecthealthReport.iconUrl) &&
        Objects.equals(this.score, freeStyleProjecthealthReport.score) &&
        Objects.equals(this.propertyClass, freeStyleProjecthealthReport.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(description, iconClassName, iconUrl, score, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FreeStyleProjecthealthReport {\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    iconClassName: ").append(toIndentedString(iconClassName)).append("\n");
    sb.append("    iconUrl: ").append(toIndentedString(iconUrl)).append("\n");
    sb.append("    score: ").append(toIndentedString(score)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(@Nullable Object o) {
    return o == null ? "null" : o.toString().replace("\n", "\n    ");
  }
}

