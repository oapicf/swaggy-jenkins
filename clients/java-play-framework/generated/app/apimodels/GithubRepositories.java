package apimodels;

import java.util.Objects;
import apimodels.GithubRepositorieslinks;
import apimodels.GithubRepository;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import javax.validation.constraints.*;
/**
 * GithubRepositories
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-08-03T23:33:33.060Z")

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
    if (this.items == null) {
      this.items = new ArrayList<GithubRepository>();
    }
    this.items.add(itemsItem);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

  public void validate() {
    ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
    Validator validator = factory.getValidator();
    Set<ConstraintViolation<GithubRepositories>> constraintViolations = validator.validate(this);
    if (constraintViolations.size() > 0) {
      StringBuilder errors = new StringBuilder();
      for (ConstraintViolation<GithubRepositories> contraintes : constraintViolations) {
        errors.append(String.format("%s.%s %s\n",
            contraintes.getRootBeanClass().getSimpleName(),
            contraintes.getPropertyPath(),
            contraintes.getMessage()));
      }
      throw new RuntimeException("Bean validation : " + errors);
    }
  }
}

