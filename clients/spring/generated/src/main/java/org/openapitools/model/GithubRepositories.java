package org.openapitools.model;

import java.net.URI;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.openapitools.model.GithubRepositorieslinks;
import org.openapitools.model.GithubRepository;
import org.springframework.lang.Nullable;
import org.openapitools.jackson.nullable.JsonNullable;
import java.time.OffsetDateTime;
import jakarta.validation.Valid;
import jakarta.validation.constraints.*;
import io.swagger.v3.oas.annotations.media.Schema;


import java.util.*;
import jakarta.annotation.Generated;

/**
 * GithubRepositories
 */

@Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2026-08-15T12:33:21.937757652Z[Etc/UTC]", comments = "Generator version: 7.24.0")
public class GithubRepositories {

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable String propertyClass;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable GithubRepositorieslinks links;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private List<@Valid GithubRepository> items = new ArrayList<>();

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer lastPage;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer nextPage;

  @JsonInclude(JsonInclude.Include.NON_NULL)
  private @Nullable Integer pageSize;

  public GithubRepositories propertyClass(@Nullable String propertyClass) {
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

  public GithubRepositories links(@Nullable GithubRepositorieslinks links) {
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
  public @Nullable GithubRepositorieslinks getLinks() {
    return links;
  }

  @JsonProperty("_links")
  public void setLinks(@Nullable GithubRepositorieslinks links) {
    this.links = links;
  }

  public GithubRepositories items(List<@Valid GithubRepository> items) {
    this.items = items;
    return this;
  }

  public GithubRepositories addItemsItem(GithubRepository itemsItem) {
    if (this.items == null) {
      this.items = new ArrayList<>();
    }
    this.items.add(itemsItem);
    return this;
  }

  /**
   * Get items
   * @return items
   */
  @Valid 
  @Schema(name = "items", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("items")
  public List<@Valid GithubRepository> getItems() {
    return items;
  }

  @JsonProperty("items")
  public void setItems(List<@Valid GithubRepository> items) {
    this.items = items;
  }

  public GithubRepositories lastPage(@Nullable Integer lastPage) {
    this.lastPage = lastPage;
    return this;
  }

  /**
   * Get lastPage
   * @return lastPage
   */
  
  @Schema(name = "lastPage", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("lastPage")
  public @Nullable Integer getLastPage() {
    return lastPage;
  }

  @JsonProperty("lastPage")
  public void setLastPage(@Nullable Integer lastPage) {
    this.lastPage = lastPage;
  }

  public GithubRepositories nextPage(@Nullable Integer nextPage) {
    this.nextPage = nextPage;
    return this;
  }

  /**
   * Get nextPage
   * @return nextPage
   */
  
  @Schema(name = "nextPage", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("nextPage")
  public @Nullable Integer getNextPage() {
    return nextPage;
  }

  @JsonProperty("nextPage")
  public void setNextPage(@Nullable Integer nextPage) {
    this.nextPage = nextPage;
  }

  public GithubRepositories pageSize(@Nullable Integer pageSize) {
    this.pageSize = pageSize;
    return this;
  }

  /**
   * Get pageSize
   * @return pageSize
   */
  
  @Schema(name = "pageSize", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
  @JsonProperty("pageSize")
  public @Nullable Integer getPageSize() {
    return pageSize;
  }

  @JsonProperty("pageSize")
  public void setPageSize(@Nullable Integer pageSize) {
    this.pageSize = pageSize;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubRepositories githubRepositories = (GithubRepositories) o;
    return Objects.equals(this.propertyClass, githubRepositories.propertyClass) &&
        Objects.equals(this.links, githubRepositories.links) &&
        Objects.equals(this.items, githubRepositories.items) &&
        Objects.equals(this.lastPage, githubRepositories.lastPage) &&
        Objects.equals(this.nextPage, githubRepositories.nextPage) &&
        Objects.equals(this.pageSize, githubRepositories.pageSize);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, items, lastPage, nextPage, pageSize);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GithubRepositories {\n");
    sb.append("    propertyClass: ").append(toIndentedString(propertyClass)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
    sb.append("    items: ").append(toIndentedString(items)).append("\n");
    sb.append("    lastPage: ").append(toIndentedString(lastPage)).append("\n");
    sb.append("    nextPage: ").append(toIndentedString(nextPage)).append("\n");
    sb.append("    pageSize: ").append(toIndentedString(pageSize)).append("\n");
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

