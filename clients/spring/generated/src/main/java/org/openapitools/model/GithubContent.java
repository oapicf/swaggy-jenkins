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
 * GithubContent
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-02-01T01:27:11.559404227Z[Etc/UTC]", comments = "Generator version: 7.18.0")
public class GithubContent {

  private @Nullable String name;

  private @Nullable String sha;

  private @Nullable String propertyClass;

  private @Nullable String repo;

  private @Nullable Integer size;

  private @Nullable String owner;

  private @Nullable String path;

  private @Nullable String base64Data;

  public GithubContent name(@Nullable String name) {
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

  public void setName(@Nullable String name) {
    this.name = name;
  }

  public GithubContent sha(@Nullable String sha) {
    this.sha = sha;
    return this;
  }

  /**
   * Get sha
   * @return sha
   */
  
  @Schema(name = "sha", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("sha")
  public @Nullable String getSha() {
    return sha;
  }

  public void setSha(@Nullable String sha) {
    this.sha = sha;
  }

  public GithubContent propertyClass(@Nullable String propertyClass) {
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

  public GithubContent repo(@Nullable String repo) {
    this.repo = repo;
    return this;
  }

  /**
   * Get repo
   * @return repo
   */
  
  @Schema(name = "repo", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("repo")
  public @Nullable String getRepo() {
    return repo;
  }

  public void setRepo(@Nullable String repo) {
    this.repo = repo;
  }

  public GithubContent size(@Nullable Integer size) {
    this.size = size;
    return this;
  }

  /**
   * Get size
   * @return size
   */
  
  @Schema(name = "size", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("size")
  public @Nullable Integer getSize() {
    return size;
  }

  public void setSize(@Nullable Integer size) {
    this.size = size;
  }

  public GithubContent owner(@Nullable String owner) {
    this.owner = owner;
    return this;
  }

  /**
   * Get owner
   * @return owner
   */
  
  @Schema(name = "owner", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("owner")
  public @Nullable String getOwner() {
    return owner;
  }

  public void setOwner(@Nullable String owner) {
    this.owner = owner;
  }

  public GithubContent path(@Nullable String path) {
    this.path = path;
    return this;
  }

  /**
   * Get path
   * @return path
   */
  
  @Schema(name = "path", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("path")
  public @Nullable String getPath() {
    return path;
  }

  public void setPath(@Nullable String path) {
    this.path = path;
  }

  public GithubContent base64Data(@Nullable String base64Data) {
    this.base64Data = base64Data;
    return this;
  }

  /**
   * Get base64Data
   * @return base64Data
   */
  
  @Schema(name = "base64Data", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("base64Data")
  public @Nullable String getBase64Data() {
    return base64Data;
  }

  public void setBase64Data(@Nullable String base64Data) {
    this.base64Data = base64Data;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubContent githubContent = (GithubContent) o;
    return Objects.equals(this.name, githubContent.name) &&
        Objects.equals(this.sha, githubContent.sha) &&
        Objects.equals(this.propertyClass, githubContent.propertyClass) &&
        Objects.equals(this.repo, githubContent.repo) &&
        Objects.equals(this.size, githubContent.size) &&
        Objects.equals(this.owner, githubContent.owner) &&
        Objects.equals(this.path, githubContent.path) &&
        Objects.equals(this.base64Data, githubContent.base64Data);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, sha, propertyClass, repo, size, owner, path, base64Data);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubContent {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    sha: ").append(toIndentedString(sha)).append("\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    repo: ").append(toIndentedString(repo)).append("\n");
    sb.append("    size: ").append(toIndentedString(size)).append("\n");
    sb.append("    owner: ").append(toIndentedString(owner)).append("\n");
    sb.append("    path: ").append(toIndentedString(path)).append("\n");
    sb.append("    base64Data: ").append(toIndentedString(base64Data)).append("\n");
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

