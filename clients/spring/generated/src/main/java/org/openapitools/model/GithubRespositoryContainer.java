package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import org.openapitools.model.GithubRepositories;
import org.openapitools.model.GithubRespositoryContainerlinks;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * GithubRespositoryContainer
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-15T12:33:21.937757652Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class GithubRespositoryContainer {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable GithubRespositoryContainerlinks links;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable GithubRepositories repositories;

  public GithubRespositoryContainer propertyClass(@Nullable String propertyClass) {
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

  public GithubRespositoryContainer links(@Nullable GithubRespositoryContainerlinks links) {
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
  public @Nullable GithubRespositoryContainerlinks getLinks() {
    return links;
  }

  @JsonProperty("_links")
  public void setLinks(@Nullable GithubRespositoryContainerlinks links) {
    this.links = links;
  }

  public GithubRespositoryContainer repositories(@Nullable GithubRepositories repositories) {
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
  public @Nullable GithubRepositories getRepositories() {
    return repositories;
  }

  @JsonProperty("repositories")
  public void setRepositories(@Nullable GithubRepositories repositories) {
    this.repositories = repositories;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubRespositoryContainer githubRespositoryContainer = (GithubRespositoryContainer) o;
    return Objects.equals(this.propertyClass, githubRespositoryContainer.propertyClass) &&
        Objects.equals(this.links, githubRespositoryContainer.links) &&
        Objects.equals(this.repositories, githubRespositoryContainer.repositories);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, repositories);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRespositoryContainer {\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    repositories: ").append(toIndentedString(repositories)).append("\n");
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

