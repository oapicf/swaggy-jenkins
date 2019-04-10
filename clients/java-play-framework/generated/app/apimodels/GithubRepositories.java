package apimodels;

import apimodels.GithubRepositorieslinks;
import apimodels.GithubRepository;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * GithubRepositories
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-10T03:54:21.169Z[GMT]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class GithubRepositories   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("_links")
  private GithubRepositorieslinks links = null;

  @JsonProperty("items")
  private List<GithubRepository> items = null;

  @JsonProperty("lastPage")
  private Integer lastPage = null;

  @JsonProperty("nextPage")
  private Integer nextPage = null;

  @JsonProperty("pageSize")
  private Integer pageSize = null;

  public GithubRepositories propertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
    return this;
  }

   /**
   * Get propertyClass
   * @return propertyClass
  **/
    public String getPropertyClass() {
    return propertyClass;
  }

  public void setPropertyClass(String propertyClass) {
    this.propertyClass = propertyClass;
  }

  public GithubRepositories links(GithubRepositorieslinks links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  @Valid
  public GithubRepositorieslinks getLinks() {
    return links;
  }

  public void setLinks(GithubRepositorieslinks links) {
    this.links = links;
  }

  public GithubRepositories items(List<GithubRepository> items) {
    this.items = items;
    return this;
  }

  public GithubRepositories addItemsItem(GithubRepository itemsItem) {
    if (items == null) {
      items = new ArrayList<>();
    }
    items.add(itemsItem);
    return this;
  }

   /**
   * Get items
   * @return items
  **/
  @Valid
  public List<GithubRepository> getItems() {
    return items;
  }

  public void setItems(List<GithubRepository> items) {
    this.items = items;
  }

  public GithubRepositories lastPage(Integer lastPage) {
    this.lastPage = lastPage;
    return this;
  }

   /**
   * Get lastPage
   * @return lastPage
  **/
    public Integer getLastPage() {
    return lastPage;
  }

  public void setLastPage(Integer lastPage) {
    this.lastPage = lastPage;
  }

  public GithubRepositories nextPage(Integer nextPage) {
    this.nextPage = nextPage;
    return this;
  }

   /**
   * Get nextPage
   * @return nextPage
  **/
    public Integer getNextPage() {
    return nextPage;
  }

  public void setNextPage(Integer nextPage) {
    this.nextPage = nextPage;
  }

  public GithubRepositories pageSize(Integer pageSize) {
    this.pageSize = pageSize;
    return this;
  }

   /**
   * Get pageSize
   * @return pageSize
  **/
    public Integer getPageSize() {
    return pageSize;
  }

  public void setPageSize(Integer pageSize) {
    this.pageSize = pageSize;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GithubRepositories githubRepositories = (GithubRepositories) o;
    return Objects.equals(propertyClass, githubRepositories.propertyClass) &&
        Objects.equals(links, githubRepositories.links) &&
        Objects.equals(items, githubRepositories.items) &&
        Objects.equals(lastPage, githubRepositories.lastPage) &&
        Objects.equals(nextPage, githubRepositories.nextPage) &&
        Objects.equals(pageSize, githubRepositories.pageSize);
  }

  @Override
  public int hashCode() {
    return Objects.hash(propertyClass, links, items, lastPage, nextPage, pageSize);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

