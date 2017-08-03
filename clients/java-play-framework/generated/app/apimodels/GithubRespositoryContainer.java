package apimodels;

import java.util.Objects;
import apimodels.GithubRepositories;
import apimodels.GithubRespositoryContainerlinks;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import javax.validation.constraints.*;
/**
 * GithubRespositoryContainer
 */
@javax.annotation.Generated(value = "io.swagger.codegen.languages.JavaPlayFrameworkCodegen", date = "2017-08-03T23:33:33.060Z")

public class GithubRespositoryContainer   {
  @JsonProperty("_class")
  private String propertyClass = null;

  @JsonProperty("_links")
  private GithubRespositoryContainerlinks links = null;

  @JsonProperty("repositories")
  private GithubRepositories repositories = null;

  public GithubRespositoryContainer propertyClass(String propertyClass) {
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

  public GithubRespositoryContainer links(GithubRespositoryContainerlinks links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  @Valid
  public GithubRespositoryContainerlinks getLinks() {
    return links;
  }

  public void setLinks(GithubRespositoryContainerlinks links) {
    this.links = links;
  }

  public GithubRespositoryContainer repositories(GithubRepositories repositories) {
    this.repositories = repositories;
    return this;
  }

   /**
   * Get repositories
   * @return repositories
  **/
  @Valid
  public GithubRepositories getRepositories() {
    return repositories;
  }

  public void setRepositories(GithubRepositories repositories) {
    this.repositories = repositories;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

  public void validate() {
    ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
    Validator validator = factory.getValidator();
    Set<ConstraintViolation<GithubRespositoryContainer>> constraintViolations = validator.validate(this);
    if (constraintViolations.size() > 0) {
      StringBuilder errors = new StringBuilder();
      for (ConstraintViolation<GithubRespositoryContainer> contraintes : constraintViolations) {
        errors.append(String.format("%s.%s %s\n",
            contraintes.getRootBeanClass().getSimpleName(),
            contraintes.getPropertyPath(),
            contraintes.getMessage()));
      }
      throw new RuntimeException("Bean validation : " + errors);
    }
  }
}

