package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.ExtensionClassImpllinks;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * ExtensionClassImpl
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-15T12:33:21.937757652Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class ExtensionClassImpl {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable ExtensionClassImpllinks links;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private List<String> classes = new ArrayList<>();

  public ExtensionClassImpl propertyClass(@Nullable String propertyClass) {
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

  public ExtensionClassImpl links(@Nullable ExtensionClassImpllinks links) {
    this.links = links;
    return this;
  }

  /**
   * Get links
   * @return links
   */
  @Valid 
  @Schema(name = "_links", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("_links")
  public @Nullable ExtensionClassImpllinks getLinks() {
    return links;
  }

  @JsonProperty("_links")
  public void setLinks(@Nullable ExtensionClassImpllinks links) {
    this.links = links;
  }

  public ExtensionClassImpl classes(List<String> classes) {
    this.classes = classes;
    return this;
  }

  public ExtensionClassImpl addClassesItem(String classesItem) {
    if (this.classes == null) {
      this.classes = new ArrayList<>();
    }
    this.classes.add(classesItem);
    return this;
  }

  /**
   * Get classes
   * @return classes
   */
  
  @Schema(name = "classes", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("classes")
  public List<String> getClasses() {
    return classes;
  }

  @JsonProperty("classes")
  public void setClasses(List<String> classes) {
    this.classes = classes;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtensionClassImpl extensionClassImpl = (ExtensionClassImpl) o;
    return Objects.equals(this.propertyClass, extensionClassImpl.propertyClass) &&
        Objects.equals(this.links, extensionClassImpl.links) &&
        Objects.equals(this.classes, extensionClassImpl.classes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, classes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtensionClassImpl {\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    classes: ").append(toIndentedString(classes)).append("\n");
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

