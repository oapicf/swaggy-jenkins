package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.Link;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * GithubOrganizationlinks
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-14T13:30:31.619187222Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class GithubOrganizationlinks {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Link repositories;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Link self;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  public GithubOrganizationlinks repositories(@Nullable Link repositories) {
    this.repositories = repositories;
    return this;
  }

  /**
   * Get repositories
   * @return repositories
   */
  @Valid 
  @Schema(name = "repositories", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("repositories")
  public @Nullable Link getRepositories() {
    return repositories;
  }

  @JsonProperty("repositories")
  public void setRepositories(@Nullable Link repositories) {
    this.repositories = repositories;
  }

  public GithubOrganizationlinks self(@Nullable Link self) {
    this.self = self;
    return this;
  }

  /**
   * Get self
   * @return self
   */
  @Valid 
  @Schema(name = "self", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("self")
  public @Nullable Link getSelf() {
    return self;
  }

  @JsonProperty("self")
  public void setSelf(@Nullable Link self) {
    this.self = self;
  }

  public GithubOrganizationlinks propertyClass(@Nullable String propertyClass) {
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
    GithubOrganizationlinks githubOrganizationlinks = (GithubOrganizationlinks) o;
    return Objects.equals(this.repositories, githubOrganizationlinks.repositories) &&
        Objects.equals(this.self, githubOrganizationlinks.self) &&
        Objects.equals(this.propertyClass, githubOrganizationlinks.propertyClass);
  }

  @Override
  public int hashCode() {
    return Objects.hash(repositories, self, propertyClass);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubOrganizationlinks {\n");
    sb.append("    repositories: ").append(toIndentedString(repositories)).append("\n");
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
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

