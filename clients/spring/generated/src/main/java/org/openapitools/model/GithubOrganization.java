package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.GithubOrganizationlinks;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * GithubOrganization
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-14T13:30:31.619187222Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class GithubOrganization {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable GithubOrganizationlinks links;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Boolean jenkinsOrganizationPipeline;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String name;

  public GithubOrganization propertyClass(@Nullable String propertyClass) {
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

  public GithubOrganization links(@Nullable GithubOrganizationlinks links) {
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
  public @Nullable GithubOrganizationlinks getLinks() {
    return links;
  }

  @JsonProperty("_links")
  public void setLinks(@Nullable GithubOrganizationlinks links) {
    this.links = links;
  }

  public GithubOrganization jenkinsOrganizationPipeline(@Nullable Boolean jenkinsOrganizationPipeline) {
    this.jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
    return this;
  }

  /**
   * Get jenkinsOrganizationPipeline
   * @return jenkinsOrganizationPipeline
   */
  
  @Schema(name = "jenkinsOrganizationPipeline", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("jenkinsOrganizationPipeline")
  public @Nullable Boolean getJenkinsOrganizationPipeline() {
    return jenkinsOrganizationPipeline;
  }

  @JsonProperty("jenkinsOrganizationPipeline")
  public void setJenkinsOrganizationPipeline(@Nullable Boolean jenkinsOrganizationPipeline) {
    this.jenkinsOrganizationPipeline = jenkinsOrganizationPipeline;
  }

  public GithubOrganization name(@Nullable String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   */
  
  @Schema(name = "name", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("name")
  public @Nullable String getName() {
    return name;
  }

  @JsonProperty("name")
  public void setName(@Nullable String name) {
    this.name = name;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubOrganization githubOrganization = (GithubOrganization) o;
    return Objects.equals(this.propertyClass, githubOrganization.propertyClass) &&
        Objects.equals(this.links, githubOrganization.links) &&
        Objects.equals(this.jenkinsOrganizationPipeline, githubOrganization.jenkinsOrganizationPipeline) &&
        Objects.equals(this.name, githubOrganization.name);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, jenkinsOrganizationPipeline, name);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubOrganization {\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    jenkinsOrganizationPipeline: ").append(toIndentedString(jenkinsOrganizationPipeline)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
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

